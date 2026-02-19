#!/usr/bin/env bash
# =============================================================================
# ThinkBot News Monitor
# =============================================================================
# Scans for breaking tech policy news and produces a rapid-response article
# if something significant is found. Each step is a separate claude call.
#
# Usage:
#   ./scripts/news-monitor.sh              # Run once
#   ./scripts/news-monitor.sh --dry-run    # Check for news without writing
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
echo "  ThinkBot News Monitor"
echo "======================================"
echo "Time: $(date '+%Y-%m-%d %H:%M')"
echo "Mode: $([ "$DRY_RUN" = true ] && echo 'DRY RUN' || echo 'LIVE')"
echo "======================================"
echo ""

if ! command -v claude &> /dev/null; then
  echo "Error: 'claude' CLI not found."
  exit 1
fi

mkdir -p "$ARTICLES_DIR"
cd "$PROJECT_DIR"

# --- Step 1: President scans for breaking news ---
echo "[1/4] Scanning tech policy news..."
SCAN_RESULT=$(claude --print \
  --dangerously-skip-permissions \
  --max-budget-usd 2 \
  --agent president \
  "You are running in news monitoring mode. Search the web for BREAKING or SIGNIFICANT tech policy developments from the last 24 hours. Look for:
- New legislation introduced or passed
- Major court decisions (antitrust, Section 230, AI)
- Executive orders or agency rulings
- Major company announcements with policy implications
- International regulatory actions (EU, UK, etc.)

If you find a development that warrants a rapid-response article, output a SINGLE assignment in your standard format with format set to 'rapid-response'.

If nothing significant has happened, output exactly: NO_SIGNIFICANT_NEWS" 2>&1)
CLAUDE_RC=$?

if [ $CLAUDE_RC -ne 0 ]; then
  echo "Scan failed (exit $CLAUDE_RC):"
  echo "$SCAN_RESULT"
  exit 1
fi

echo "$SCAN_RESULT"
echo ""

if echo "$SCAN_RESULT" | grep -q "NO_SIGNIFICANT_NEWS"; then
  echo "No significant developments detected. Exiting."
  exit 0
fi

# Extract fellow name
FELLOW=$(echo "$SCAN_RESULT" | grep -oP 'fellow-[a-z-]+' | head -1)
if [ -z "$FELLOW" ]; then
  echo "Error: Could not extract fellow name from assignment."
  exit 1
fi
echo "Assigned to: $FELLOW"
echo ""

if [ "$DRY_RUN" = true ]; then
  echo "[DRY RUN] Significant development detected. Exiting without writing."
  exit 0
fi

# --- Step 2: Director framing (quick) ---
echo "[2/4] Director producing framing..."
FRAMING=$(claude --print \
  --dangerously-skip-permissions \
  --max-budget-usd 1 \
  --agent director-of-policy \
  "Produce a BRIEF policy framing for this rapid-response assignment. Keep it under 300 words — this is urgent.

$SCAN_RESULT" 2>&1)
CLAUDE_RC=$?

if [ $CLAUDE_RC -ne 0 ]; then
  echo "Director step failed (exit $CLAUDE_RC):"
  echo "$FRAMING"
  exit 1
fi

echo "$FRAMING"
echo ""

# --- Step 3: Fellow writes rapid-response ---
echo "[3/4] $FELLOW writing rapid-response..."
ARTICLE=$(claude --print \
  --dangerously-skip-permissions \
  --max-budget-usd 2 \
  --agent "$FELLOW" \
  "Write a rapid-response article (800-1200 words) based on this assignment and framing. Include proper markdown frontmatter with format set to 'rapid-response'.

Set author to \"$FELLOW\" and date to \"$TODAY\". Set status to \"published\".

Output ONLY the complete article with frontmatter — no commentary.

--- ASSIGNMENT ---
$SCAN_RESULT

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

# --- Step 4: Editor quick polish ---
echo "[4/4] Chief Editor polishing..."
FINAL=$(claude --print \
  --dangerously-skip-permissions \
  --max-budget-usd 1 \
  --agent chief-editor \
  "Quick edit this rapid-response article for publication. Fix any obvious issues with clarity, tone, and formatting. Ensure frontmatter is correct. Keep it tight — this is a rapid response.

Output ONLY the final article with frontmatter — no commentary.

$ARTICLE" 2>&1)
CLAUDE_RC=$?

if [ $CLAUDE_RC -ne 0 ]; then
  echo "Editor step failed (exit $CLAUDE_RC):"
  echo "$FINAL"
  exit 1
fi

# --- Save ---
TITLE=$(echo "$FINAL" | grep -m1 '^title:' | sed 's/^title: *"*//;s/"*$//')
if [ -z "$TITLE" ]; then
  SLUG="rapid-response"
else
  SLUG=$(echo "$TITLE" | tr '[:upper:]' '[:lower:]' | sed 's/[^a-z0-9]/-/g' | sed 's/-\{2,\}/-/g' | sed 's/^-\|-$//g' | cut -c1-60)
fi

FILEPATH="$ARTICLES_DIR/$TODAY-$SLUG.md"
echo "$FINAL" > "$FILEPATH"
echo "Saved: $FILEPATH"
echo ""

# --- Commit and push ---
echo "Committing..."
cd "$PROJECT_DIR"
if [ -f "$FILEPATH" ]; then
  git add "$FILEPATH"
  git commit -m "rapid-response: $TITLE"
  git push origin main
  echo "Pushed. Vercel will redeploy."
else
  echo "No article file found. Skipping commit."
fi

echo ""
echo "======================================"
echo "  Rapid response complete!"
echo "======================================"
