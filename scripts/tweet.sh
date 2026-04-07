#!/usr/bin/env bash
# =============================================================================
# ThinkBot Tweet Helper
# =============================================================================
# Posts a tweet promoting a published article. Called by pipeline scripts
# after git push. Uses Claude to compose the tweet, Twitter API v2 to post.
#
# Usage:
#   ./scripts/tweet.sh <article-filepath>        # Compose and post tweet
#   ./scripts/tweet.sh --dry-run <filepath>       # Preview without posting
#   ./scripts/tweet.sh --test                     # Post a test tweet
#
# Credentials: Store in ~/.thinkbot-env (not in repo):
#   TWITTER_API_KEY=...
#   TWITTER_API_SECRET=...
#   TWITTER_ACCESS_TOKEN=...
#   TWITTER_ACCESS_TOKEN_SECRET=...
#   THINKBOT_URL=https://yoursite.com  (optional, defaults to https://thinkbot.io)
# =============================================================================

set -uo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
PROJECT_DIR="$(cd "$SCRIPT_DIR/.." && pwd)"
DRY_RUN=false
TEST_MODE=false
FILEPATH=""

for arg in "$@"; do
  case $arg in
    --dry-run) DRY_RUN=true ;;
    --test) TEST_MODE=true ;;
    *) FILEPATH="$arg" ;;
  esac
done

# --- Load credentials ---
ENV_FILE="$HOME/.thinkbot-env"
if [ ! -f "$ENV_FILE" ]; then
  echo "[tweet] No credentials at $ENV_FILE. Skipping tweet."
  exit 0
fi
source "$ENV_FILE"

for var in TWITTER_API_KEY TWITTER_API_SECRET TWITTER_ACCESS_TOKEN TWITTER_ACCESS_TOKEN_SECRET; do
  if [ -z "${!var:-}" ]; then
    echo "[tweet] Missing $var in $ENV_FILE. Skipping tweet."
    exit 0
  fi
done

SITE_URL="${THINKBOT_URL:-https://thinkbot.io}"

# --- Test mode ---
if [ "$TEST_MODE" = true ]; then
  TWEET_TEXT="Test tweet from ThinkBot. Automated policy publishing is live."
  echo "[tweet] Test mode: $TWEET_TEXT"
  if [ "$DRY_RUN" = true ]; then
    echo "[tweet] DRY RUN — would post above tweet."
    exit 0
  fi
  # Post (see below)
else
  # --- Extract metadata from article file ---
  if [ -z "$FILEPATH" ] || [ ! -f "$FILEPATH" ]; then
    echo "[tweet] No valid article file provided. Skipping tweet."
    exit 0
  fi

  TITLE=$(grep -m1 '^title:' "$FILEPATH" | sed 's/^title: *"*//;s/"*$//')
  SUMMARY=$(grep -m1 '^summary:' "$FILEPATH" | sed 's/^summary: *"*//;s/"*$//')
  TAGS=$(grep -m1 '^tags:' "$FILEPATH" | sed 's/^tags: *\[//;s/\].*//;s/"//g')

  # Derive slug from filename (YYYY-MM-DD-slug.md → slug)
  BASENAME=$(basename "$FILEPATH" .md)
  SLUG=$(echo "$BASENAME" | sed 's/^[0-9]\{4\}-[0-9]\{2\}-[0-9]\{2\}-//')

  ARTICLE_URL="$SITE_URL/articles/$BASENAME"

  if [ -z "$TITLE" ]; then
    echo "[tweet] Could not extract title from $FILEPATH. Skipping tweet."
    exit 0
  fi

  # --- Compose tweet via Claude ---
  echo "[tweet] Composing tweet..."
  TWEET_TEXT=$(claude --print \
    --dangerously-skip-permissions \
    --agent chief-editor \
    "Compose a single tweet (max 260 characters, leave room for the URL) promoting this ThinkBot article. Be punchy and provocative — this is a think tank, not a press release. Do NOT include the URL — it will be appended automatically.

Title: $TITLE
Summary: $SUMMARY
Tags: $TAGS

Output ONLY the tweet text, nothing else. No quotes, no commentary." 2>&1)
  CLAUDE_RC=$?

  if [ $CLAUDE_RC -ne 0 ] || [ -z "$TWEET_TEXT" ]; then
    echo "[tweet] Failed to compose tweet. Skipping."
    exit 0
  fi

  # Append URL
  TWEET_TEXT="$TWEET_TEXT

$ARTICLE_URL"

  echo "[tweet] Tweet: $TWEET_TEXT"
  echo ""

  if [ "$DRY_RUN" = true ]; then
    echo "[tweet] DRY RUN — would post above tweet."
    exit 0
  fi
fi

# --- Post to Twitter API v2 via Python (stdlib only, OAuth 1.0a) ---
RESPONSE=$(TWEET_TEXT="$TWEET_TEXT" \
  TW_CONSUMER_KEY="$TWITTER_API_KEY" \
  TW_CONSUMER_SECRET="$TWITTER_API_SECRET" \
  TW_ACCESS_TOKEN="$TWITTER_ACCESS_TOKEN" \
  TW_ACCESS_TOKEN_SECRET="$TWITTER_ACCESS_TOKEN_SECRET" \
  python3 << 'PYEOF'
import os, hmac, hashlib, base64, time, uuid, urllib.parse, urllib.request, json, sys

tweet_text = os.environ["TWEET_TEXT"]
consumer_key = os.environ["TW_CONSUMER_KEY"]
consumer_secret = os.environ["TW_CONSUMER_SECRET"]
access_token = os.environ["TW_ACCESS_TOKEN"]
access_token_secret = os.environ["TW_ACCESS_TOKEN_SECRET"]

url = "https://api.x.com/2/tweets"

# OAuth 1.0a parameters
oauth_nonce = uuid.uuid4().hex
oauth_timestamp = str(int(time.time()))

oauth_params = {
    "oauth_consumer_key": consumer_key,
    "oauth_nonce": oauth_nonce,
    "oauth_signature_method": "HMAC-SHA1",
    "oauth_timestamp": oauth_timestamp,
    "oauth_token": access_token,
    "oauth_version": "1.0",
}

# Signature base string (JSON POST — body params not included)
param_string = "&".join(
    f"{urllib.parse.quote(k, safe='')}"
    f"={urllib.parse.quote(v, safe='')}"
    for k, v in sorted(oauth_params.items())
)
base_string = (
    f"POST"
    f"&{urllib.parse.quote(url, safe='')}"
    f"&{urllib.parse.quote(param_string, safe='')}"
)

# Signing key
signing_key = (
    f"{urllib.parse.quote(consumer_secret, safe='')}"
    f"&{urllib.parse.quote(access_token_secret, safe='')}"
)

# HMAC-SHA1 signature
signature = base64.b64encode(
    hmac.new(
        signing_key.encode(),
        base_string.encode(),
        hashlib.sha1,
    ).digest()
).decode()

oauth_params["oauth_signature"] = signature

# Authorization header
auth_header = "OAuth " + ", ".join(
    f'{urllib.parse.quote(k, safe="")}="{urllib.parse.quote(v, safe="")}"'
    for k, v in sorted(oauth_params.items())
)

# POST request
body = json.dumps({"text": tweet_text}).encode()
req = urllib.request.Request(url, data=body, method="POST")
req.add_header("Authorization", auth_header)
req.add_header("Content-Type", "application/json")

try:
    with urllib.request.urlopen(req) as resp:
        result = json.loads(resp.read())
        tweet_id = result.get("data", {}).get("id", "unknown")
        print(f"OK tweet_id={tweet_id}")
except urllib.error.HTTPError as e:
    error_body = e.read().decode()
    print(f"ERROR {e.code}: {error_body}", file=sys.stderr)
    sys.exit(1)
PYEOF
)
TWEET_RC=$?

if [ $TWEET_RC -ne 0 ]; then
  echo "[tweet] Failed to post tweet."
  echo "$RESPONSE"
  # Don't exit with error — tweet failure shouldn't break the pipeline
  exit 0
fi

echo "[tweet] Posted: $RESPONSE"
