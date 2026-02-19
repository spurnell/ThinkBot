#!/usr/bin/env bash
# =============================================================================
# ThinkBot Publish Pipeline
# =============================================================================
# Runs a streamlined publication pipeline:
#   1. President picks ONE article assignment
#   2. Director produces policy framing
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
TODAY=$(date '+%Y-%m-%d')

for arg in "$@"; do
  case $arg in
    --dry-run) DRY_RUN=true ;;
    *) echo "Unknown argument: $arg"; exit 1 ;;
  esac
done

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
  --max-budget-usd 2 \
  --agent president \
  "You are running in autonomous mode. Search the web for the latest tech policy news.

Pick the SINGLE most timely and impactful article opportunity. Output ONE assignment in your standard format.

IMPORTANT: Output exactly ONE assignment, not multiple." 2>&1)
CLAUDE_RC=$?

if [ $CLAUDE_RC -ne 0 ]; then
  echo "President step failed (exit $CLAUDE_RC):"
  echo "$ASSIGNMENT"
  exit 1
fi

echo "$ASSIGNMENT"
echo ""

# Extract fellow name from assignment
FELLOW=$(echo "$ASSIGNMENT" | grep -oP 'fellow-[a-z-]+' | head -1)
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

# --- Step 2: Director produces policy framing ---
echo "[2/4] Director of Policy producing framing..."
FRAMING=$(claude --print \
  --dangerously-skip-permissions \
  --max-budget-usd 1 \
  --agent director-of-policy \
  "Produce a concise policy framing document for this article assignment. Focus on ideological guardrails, key arguments, and framing. Keep it under 500 words.

$ASSIGNMENT" 2>&1)
CLAUDE_RC=$?

if [ $CLAUDE_RC -ne 0 ]; then
  echo "Director step failed (exit $CLAUDE_RC):"
  echo "$FRAMING"
  exit 1
fi

echo "$FRAMING"
echo ""

# --- Step 3: Fellow writes the article ---
echo "[3/4] $FELLOW writing article..."
ARTICLE=$(claude --print \
  --dangerously-skip-permissions \
  --max-budget-usd 3 \
  --agent "$FELLOW" \
  "Write a complete article based on the assignment and policy framing below. Include proper markdown frontmatter (title, author, date, category, tags, status, format, summary).

Set author to \"$FELLOW\" and date to \"$TODAY\". Set status to \"published\".

Output ONLY the complete article with frontmatter — no commentary before or after.

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
  --max-budget-usd 2 \
  --agent chief-editor \
  "Edit this article to publication quality. Fix structure, clarity, tone, and formatting issues. Ensure frontmatter is complete and correct. Keep the author and date as-is.

Output ONLY the complete final article with frontmatter — no commentary.

$ARTICLE" 2>&1)
CLAUDE_RC=$?

if [ $CLAUDE_RC -ne 0 ]; then
  echo "Editor step failed (exit $CLAUDE_RC):"
  echo "$FINAL"
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

# --- Git commit and push ---
echo "Committing..."
cd "$PROJECT_DIR"
if [ -f "$FILEPATH" ]; then
  git add "$FILEPATH"
  git commit -m "publish: $TITLE"
  git push origin main
  echo "Pushed. Vercel will redeploy."
else
  echo "No article file found. Skipping commit."
fi

echo ""
echo "======================================"
echo "  Pipeline complete!"
echo "======================================"
