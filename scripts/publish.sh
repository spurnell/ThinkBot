#!/usr/bin/env bash
# =============================================================================
# ThinkBot Publish Pipeline
# =============================================================================
# Runs a streamlined publication pipeline:
#   1. President picks ONE article assignment
#   2. Director reviews topic + produces policy framing (combined call)
#   3. Fellow writes the article
#   4. Editor polishes to publication quality
#   5. Script saves the file and commits
#
# Each step is a separate claude call to prevent context accumulation.
#
# Usage:
#   ./scripts/publish.sh              # Run full pipeline
#   ./scripts/publish.sh --dry-run    # Preview assignment without writing
# =============================================================================

set -uo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
PROJECT_DIR="$(cd "$SCRIPT_DIR/.." && pwd)"
ARTICLES_DIR="$PROJECT_DIR/website/content/articles"
DRY_RUN=false
TEST_MODE=false
TODAY=$(date '+%Y-%m-%d')

# Run ID ties every tool-call log entry to this pipeline invocation.
# Consumed by the PostToolUse hook at scripts/log-tool-call.sh.
export THINKBOT_RUN_ID="publish-$(date -u +%Y-%m-%dT%H%M%S)"

for arg in "$@"; do
  case $arg in
    --dry-run) DRY_RUN=true ;;
    --test)    TEST_MODE=true ;;
    *) echo "Unknown argument: $arg"; exit 1 ;;
  esac
done

# Test mode: write to scratch dir, skip git commit/push and tweet.
if [ "$TEST_MODE" = true ]; then
  ARTICLES_DIR="/tmp/thinkbot-test-articles"
fi

# Per-fellow pointers into research/sources/ — which curated files to sweep first.
# Fellows still search the open web; this is a floor, not a ceiling.
# (Mirrors the function in research-scan.sh. bash 3.2 compat — no associative arrays.)
source_hint_for() {
  case "$1" in
    fellow-ai)
      echo "journals-open.md (arXiv cs.AI/cs.LG, SSRN, JAIR, JMLR, ACL Anthology), journals-paid.md (Nature Machine Intelligence, Research Policy), think-tanks-liberal.md (AI Now, Data & Society, New America), think-tanks-conservative.md (CSET, Mercatus, FAI, AEI), newspapers.md (The Information, Wired, Ars Technica, Platformer)"
      ;;
    fellow-antitrust)
      echo "journals-paid.md (Antitrust Law Journal, Journal of Competition Law & Economics, RAND Journal of Economics, Journal of Industrial Economics), journals-open.md (SSRN, NBER, law reviews), think-tanks-liberal.md (Open Markets, AELP, Roosevelt, Brookings), think-tanks-conservative.md (AEI, ITIF, Mercatus, Manhattan Institute), newspapers.md (WSJ, Politico, FT, Bloomberg)"
      ;;
    fellow-content-moderation)
      echo "journals-open.md (Yale Law Journal, Stanford Tech Law Review, Harvard JOLT, Berkeley Tech LJ, Knight Columbia), think-tanks-liberal.md (CDT, EFF, Free Press, Knight First Amendment Institute, Public Knowledge), think-tanks-conservative.md (R Street, FAI, EPPC), newspapers.md (Platformer, 404 Media, The Information)"
      ;;
    fellow-general-tech)
      echo "journals-open.md (arXiv, SSRN, law reviews, GAO, CRS), journals-paid.md (Telecommunications Policy, Information Economics and Policy), think-tanks-liberal.md (New America, Brookings, CDT), think-tanks-conservative.md (ITIF, Mercatus, R Street, AEI), newspapers.md (Ars Technica, Wired, Bloomberg, FT)"
      ;;
    fellow-tech-innovation)
      echo "journals-paid.md (Research Policy, Management Science, RAND Journal of Economics, HBR, Sloan MR), journals-open.md (NBER, SSRN, IZA), think-tanks-liberal.md (Brookings, Roosevelt, Aspen), think-tanks-conservative.md (ITIF, Mercatus, Niskanen, AEI, Hoover, FAI), newspapers.md (WSJ, FT, Bloomberg, The Information)"
      ;;
    *)
      echo ""
      ;;
  esac
}

echo "======================================"
echo "  ThinkBot Publish Pipeline"
echo "======================================"
echo "Project: $PROJECT_DIR"
echo "Date:    $TODAY"
echo "Mode:    $([ "$DRY_RUN" = true ] && echo 'DRY RUN' || echo 'LIVE')"
echo "======================================"
echo ""

mkdir -p "$ARTICLES_DIR"

if ! command -v claude &> /dev/null; then
  echo "Error: 'claude' CLI not found."
  exit 1
fi

cd "$PROJECT_DIR"

# --- Step 1: President generates ONE article assignment ---
echo "[1/4] President scanning news and picking one article..."
ASSIGNMENT=$(claude --print \
  --dangerously-skip-permissions \
  --agent president \
  "You are running in ASSIGNMENT-ONLY mode.

CRITICAL RULES:
- Your ONLY job is to output an assignment as TEXT. Do NOT call other agents. Do NOT use Write/Edit/Bash tools. Do NOT create any files. Do NOT execute the pipeline. You may use WebSearch to find fresh news, nothing else.
- Search the web for the latest tech policy news and pick the SINGLE most timely and impactful article opportunity.
- Output exactly ONE assignment, not multiple.
- Your output MUST contain a line in this exact format so the script can parse it:
  FELLOW: fellow-<name>
  where <name> is one of: ai, antitrust, content-moderation, general-tech, tech-innovation
- After that line, include your standard assignment format (Hook, Thesis, Key Points, etc.)." 2>&1)
CLAUDE_RC=$?

if [ $CLAUDE_RC -ne 0 ]; then
  echo "President step failed (exit $CLAUDE_RC):"
  echo "$ASSIGNMENT"
  exit 1
fi

echo "$ASSIGNMENT"
echo ""

# Extract fellow name from assignment
FELLOW=$(echo "$ASSIGNMENT" | sed -n 's/^[[:space:]]*FELLOW:[[:space:]]*\(fellow-[a-z-]*\).*/\1/p' | head -1)
if [ -z "$FELLOW" ]; then
  FELLOW=$(echo "$ASSIGNMENT" | grep -oE 'fellow-[a-z-]+' | head -1)
fi
if [ -z "$FELLOW" ]; then
  echo "Error: Could not extract fellow name from assignment."
  echo "Assignment output was:"
  echo "$ASSIGNMENT"
  exit 1
fi
echo "Assigned to: $FELLOW"
echo ""

if [ "$DRY_RUN" = true ]; then
  echo "[DRY RUN] Assignment generated. Exiting."
  exit 0
fi

# --- Step 2: Director reviews topic + produces framing (combined call) ---
# Build a list of recent article titles and summaries for context
RECENT_ARTICLES=$(for f in $(ls -t "$ARTICLES_DIR"/*.md 2>/dev/null | head -10); do
  title=$(grep -m1 '^title:' "$f" | sed 's/^title: *"*//;s/"*$//')
  date=$(grep -m1 '^date:' "$f" | sed 's/^date: *"*//;s/"*$//')
  summary=$(grep -m1 '^summary:' "$f" | sed 's/^summary: *"*//;s/"*$//')
  echo "- [$date] $title — $summary"
done)

MAX_RETRIES=3
RETRY_COUNT=0

while [ $RETRY_COUNT -lt $MAX_RETRIES ]; do
  echo "[2/4] Director reviewing topic + producing framing (attempt $((RETRY_COUNT + 1))/$MAX_RETRIES)..."
  REVIEW_AND_FRAMING=$(claude --print \
    --dangerously-skip-permissions \
    --agent director-of-policy \
    "You have TWO tasks for this article assignment. Complete both in a single response.

TASK 1 — TOPIC REVIEW: Check this proposed assignment against our recent publications for repetition. Start your response with VERDICT: APPROVED or VERDICT: REJECTED with a brief rationale.

TASK 2 — POLICY FRAMING (only if APPROVED): Produce a concise policy framing document. Focus on ideological guardrails, key arguments, and framing. Keep it under 500 words.

--- PROPOSED ASSIGNMENT ---
$ASSIGNMENT

--- RECENT THINKBOT ARTICLES (last 10) ---
$RECENT_ARTICLES" 2>&1)
  CLAUDE_RC=$?

  if [ $CLAUDE_RC -ne 0 ]; then
    echo "Director step failed (exit $CLAUDE_RC):"
    echo "$REVIEW_AND_FRAMING"
    exit 1
  fi

  echo "$REVIEW_AND_FRAMING"
  echo ""

  if echo "$REVIEW_AND_FRAMING" | grep -qi "VERDICT: APPROVED"; then
    echo "Topic approved by Director of Policy (with framing)."
    echo ""
    FRAMING="$REVIEW_AND_FRAMING"
    break
  fi

  RETRY_COUNT=$((RETRY_COUNT + 1))
  if [ $RETRY_COUNT -ge $MAX_RETRIES ]; then
    echo "Error: Director rejected $MAX_RETRIES topics. Aborting pipeline."
    exit 1
  fi

  echo "Topic rejected. Asking President for a new assignment..."
  echo ""
  ASSIGNMENT=$(claude --print \
    --dangerously-skip-permissions \
    --agent president \
    "You are running in ASSIGNMENT-ONLY mode. Your previous article assignment was REJECTED by the Director of Policy for being too repetitive.

Rejection reason:
$REVIEW_AND_FRAMING

Here are the recent ThinkBot articles — AVOID these topics:
$RECENT_ARTICLES

CRITICAL RULES:
- Your ONLY job is to output an assignment as TEXT. Do NOT call other agents. Do NOT use Write/Edit/Bash tools. Do NOT create any files. Do NOT execute the pipeline. You may use WebSearch to find fresh news, nothing else.
- Search the web for the latest tech policy news and pick a DIFFERENT, fresh topic ThinkBot has NOT covered recently.
- Output exactly ONE assignment, not multiple.
- Your output MUST contain a line in this exact format so the script can parse it:
  FELLOW: fellow-<name>
  where <name> is one of: ai, antitrust, content-moderation, general-tech, tech-innovation
- After that line, include your standard assignment format (Hook, Thesis, Key Points, etc.)." 2>&1)
  CLAUDE_RC=$?

  if [ $CLAUDE_RC -ne 0 ]; then
    echo "President retry step failed (exit $CLAUDE_RC):"
    echo "$ASSIGNMENT"
    exit 1
  fi

  # Re-extract fellow name
  FELLOW=$(echo "$ASSIGNMENT" | sed -n 's/^[[:space:]]*FELLOW:[[:space:]]*\(fellow-[a-z-]*\).*/\1/p' | head -1)
  if [ -z "$FELLOW" ]; then
    FELLOW=$(echo "$ASSIGNMENT" | grep -oE 'fellow-[a-z-]+' | head -1)
  fi
  if [ -z "$FELLOW" ]; then
    echo "Error: Could not extract fellow name from retry assignment."
    echo "$ASSIGNMENT"
    exit 1
  fi

  echo "$ASSIGNMENT"
  echo "Assigned to: $FELLOW"
  echo ""
done

# --- Step 3: Fellow writes the article ---
echo "[3/4] $FELLOW writing article..."
SOURCE_HINT="$(source_hint_for "$FELLOW")"
ARTICLE=$(claude --print \
  --dangerously-skip-permissions \
  --agent "$FELLOW" \
  "Write a complete article based on the assignment and policy framing below. Include proper markdown frontmatter (title, author, date, category, tags, status, format, summary).

Set author to \"$FELLOW\" and date to \"$TODAY\". Set status to \"published\".

Output ONLY the complete article with frontmatter — no commentary before or after.

## Curated source corpus

ThinkBot maintains a curated source corpus at \`research/sources/\`. Before drafting, Read the files most relevant to your domain and use those outlets / journals / think tanks as your primary sourcing foundation. For your domain, prioritize:

$SOURCE_HINT

The full corpus is in: research/sources/newspapers.md, research/sources/think-tanks-liberal.md, research/sources/think-tanks-conservative.md, research/sources/journals-paid.md, research/sources/journals-open.md.

This corpus is a **floor, not a ceiling**. Cite beyond it when needed — primary government documents, court filings, official agency statements, and fresh breaking-news reporting are always welcome regardless of whether the outlet is in the corpus. Do not cite low-credibility outlets just because they are not in the corpus.

--- ASSIGNMENT ---
$ASSIGNMENT

--- POLICY FRAMING ---
$FRAMING" 2>&1)
CLAUDE_RC=$?

if [ $CLAUDE_RC -ne 0 ]; then
  echo "Fellow step failed (exit $CLAUDE_RC):"
  echo "$ARTICLE"
  exit 1
fi

echo "Draft complete ($(echo "$ARTICLE" | wc -w | tr -d ' ') words)"
echo ""

# --- Step 4: Editor polishes the article ---
echo "[4/4] Chief Editor polishing..."
FINAL=$(claude --print \
  --dangerously-skip-permissions \
  --agent chief-editor \
  "Edit this article to publication quality. Fix structure, clarity, tone, and formatting issues. Ensure frontmatter is complete and correct. Keep the author and date as-is.

## Source review

ThinkBot's curated source corpus lives at \`research/sources/\`. During editing:
- Prefer sources from the corpus when an equivalent alternative to a cited source exists.
- Flag or replace low-credibility sources per the rules in \`.claude/agent-memory/chief-editor/source-quality.md\`.
- Do not manufacture corpus citations — if the fellow cited an outlet outside the corpus and the claim is sound, leave it.

Output ONLY the complete final article. Your response MUST begin with the frontmatter delimiter line '---' and contain nothing before it. Do NOT wrap the article in a code fence (no \`\`\`markdown). Do NOT add any preamble, and do NOT append a summary or changelog of your edits.

$ARTICLE" 2>&1)
CLAUDE_RC=$?

if [ $CLAUDE_RC -ne 0 ]; then
  echo "Editor step failed (exit $CLAUDE_RC):"
  echo "$FINAL"
  exit 1
fi

# Extract the clean article from the agent output: strips chat preamble,
# ```markdown wrappers, and any trailing changelog, and validates that a real
# article (frontmatter + body) was produced. Aborts without committing if not,
# rather than saving a malformed file that would break the website build.
FINAL=$(printf '%s' "$FINAL" | node "$SCRIPT_DIR/extract-article.mjs")
if [ $? -ne 0 ]; then
  echo "Error: editor output was not a valid article — aborting without publishing."
  exit 1
fi

# --- Save the article ---
# Extract title from frontmatter to generate slug
TITLE=$(echo "$FINAL" | grep -m1 '^title:' | sed 's/^title: *"*//;s/"*$//')
if [ -z "$TITLE" ]; then
  SLUG="article"
else
  SLUG=$(echo "$TITLE" | tr '[:upper:]' '[:lower:]' | sed 's/[^a-z0-9]/-/g' | sed 's/-\{2,\}/-/g' | sed 's/^-\|-$//g' | cut -c1-60)
fi

FILEPATH="$ARTICLES_DIR/$TODAY-$SLUG.md"
echo "$FINAL" > "$FILEPATH"
echo "Saved: $FILEPATH"
echo "Final word count: $(echo "$FINAL" | wc -w | tr -d ' ')"
echo ""

# --- Git commit and push (skipped in --test mode) ---
if [ "$TEST_MODE" = true ]; then
  echo ""
  echo "[--test] Skipping git commit, push, and tweet."
  echo "[--test] Output saved to: $FILEPATH"
else
  echo "Committing..."
  cd "$PROJECT_DIR"
  if [ -f "$FILEPATH" ]; then
    git add "$FILEPATH"
    git commit -m "publish: $TITLE"
    git push origin main
    echo "Pushed. Vercel will redeploy."
    "$SCRIPT_DIR/tweet.sh" "$FILEPATH"
  else
    echo "No article file found. Skipping commit."
  fi
fi

echo ""
echo "======================================"
echo "  Pipeline complete!"
echo "======================================"
