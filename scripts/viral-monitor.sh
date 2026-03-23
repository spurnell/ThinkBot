#!/usr/bin/env bash
# =============================================================================
# ThinkBot Viral Monitor
# =============================================================================
# Checks for VIRAL tech policy news every 12 hours. Only produces a
# rapid-response article if something is truly dominating headlines.
# Most runs detect nothing and exit cheaply (~$0.50).
#
# Two-phase design:
#   Phase 1: Virality gate (President, $0.50) — NO_VIRAL or VIRAL_DETECTED
#   Phase 2: Pipeline ($4.50) — Director review → Framing → Fellow → Editor
#
# Usage:
#   ./scripts/viral-monitor.sh              # Run once
#   ./scripts/viral-monitor.sh --dry-run    # Check for viral news without writing
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
echo "  ThinkBot Viral Monitor"
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

# --- Phase 1: Virality Gate ---
echo "[1/5] Checking for viral tech policy news..."
VIRAL_CHECK=$(claude --print \
  --dangerously-skip-permissions \
  --max-budget-usd 0.25 \
  --agent president \
  "You are running in VIRAL NEWS DETECTION mode. This runs automatically every 12 hours. Your ONLY job is to determine whether something VIRAL is happening in tech policy right now.

Do a quick web search for tech policy news from the last 12 hours.

A story is VIRAL if it meets ALL of these criteria:
- Being covered as a lead/major story by 3+ major outlets (NYT, WSJ, WaPo, Politico, Reuters, Bloomberg, The Verge, Wired, Ars Technica)
- Generating widespread reaction from policymakers, industry leaders, or the public
- Represents a CONCRETE policy event: legislation passed, court ruling issued, executive order signed, major enforcement action taken, or a company action with immediate significant policy consequences

A story is NOT viral if:
- It is a routine legislative hearing, bill introduction, or comment period
- It is an ongoing story with incremental updates
- It is only being covered by trade/niche publications
- It is a think tank report, academic paper, or industry statement
- It would be a good article topic but is not dominating headlines RIGHT NOW

The bar is HIGH. Most runs should return NO_VIRAL. This script costs money every time it runs.

If NOTHING meets the viral threshold, output exactly: NO_VIRAL

If something IS viral, output:
VIRAL_DETECTED
Fellow: [fellow-agent-name]
Story: [2-3 sentence summary of the viral development]
Hook: [Why this demands an immediate ThinkBot response]" 2>&1)
CLAUDE_RC=$?

if [ $CLAUDE_RC -ne 0 ]; then
  echo "Virality check failed (exit $CLAUDE_RC):"
  echo "$VIRAL_CHECK"
  exit 1
fi

echo "$VIRAL_CHECK"
echo ""

if echo "$VIRAL_CHECK" | grep -q "NO_VIRAL"; then
  echo "No viral developments detected. Exiting cleanly."
  exit 0
fi

# Extract fellow name
FELLOW=$(echo "$VIRAL_CHECK" | grep -oP 'fellow-[a-z-]+' | head -1)
if [ -z "$FELLOW" ]; then
  echo "Error: Could not extract fellow name from viral check."
  exit 1
fi
echo "Viral story detected. Assigned to: $FELLOW"
echo ""

if [ "$DRY_RUN" = true ]; then
  echo "[DRY RUN] Viral development detected. Exiting without writing."
  exit 0
fi

# --- Phase 2a: Director topic review ---
RECENT_ARTICLES=$(for f in $(ls -t "$ARTICLES_DIR"/*.md 2>/dev/null | head -10); do
  title=$(grep -m1 '^title:' "$f" | sed 's/^title: *"*//;s/"*$//')
  date=$(grep -m1 '^date:' "$f" | sed 's/^date: *"*//;s/"*$//')
  summary=$(grep -m1 '^summary:' "$f" | sed 's/^summary: *"*//;s/"*$//')
  echo "- [$date] $title — $summary"
done)

echo "[2/5] Director reviewing topic for repetition..."
REVIEW=$(claude --print \
  --dangerously-skip-permissions \
  --max-budget-usd 0.50 \
  --agent director-of-policy \
  "Review this proposed viral rapid-response for topic repetition against our recent publications. This story was flagged as VIRAL — give it extra leeway for breaking developments, but reject if the angle is essentially identical to a recent piece. Output VERDICT: APPROVED or VERDICT: REJECTED with your rationale.

--- VIRAL DETECTION ---
$VIRAL_CHECK

--- RECENT THINKBOT ARTICLES (last 10) ---
$RECENT_ARTICLES" 2>&1)
CLAUDE_RC=$?

if [ $CLAUDE_RC -ne 0 ]; then
  echo "Director review step failed (exit $CLAUDE_RC):"
  echo "$REVIEW"
  exit 1
fi

echo "$REVIEW"
echo ""

if echo "$REVIEW" | grep -qi "VERDICT: REJECTED"; then
  echo "Topic rejected by Director of Policy as too repetitive. Skipping."
  exit 0
fi

echo "Topic approved by Director of Policy."
echo ""

# --- Phase 2b: Director framing (brief) ---
echo "[3/5] Director producing framing..."
FRAMING=$(claude --print \
  --dangerously-skip-permissions \
  --max-budget-usd 0.50 \
  --agent director-of-policy \
  "Produce a BRIEF policy framing for this viral rapid-response. Keep it under 300 words — this is urgent.

$VIRAL_CHECK" 2>&1)
CLAUDE_RC=$?

if [ $CLAUDE_RC -ne 0 ]; then
  echo "Director framing step failed (exit $CLAUDE_RC):"
  echo "$FRAMING"
  exit 1
fi

echo "$FRAMING"
echo ""

# --- Phase 2c: Fellow writes rapid-response ---
echo "[4/5] $FELLOW writing rapid-response..."
ARTICLE=$(claude --print \
  --dangerously-skip-permissions \
  --max-budget-usd 2.50 \
  --agent "$FELLOW" \
  "Write a rapid-response article (800-1200 words) based on this viral development and framing. Include proper markdown frontmatter with format set to 'rapid-response'.

Set author to \"$FELLOW\" and date to \"$TODAY\". Set status to \"published\".

Output ONLY the complete article with frontmatter — no commentary.

--- VIRAL DETECTION ---
$VIRAL_CHECK

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

# --- Phase 2d: Editor quick polish ---
echo "[5/5] Chief Editor polishing..."
FINAL=$(claude --print \
  --dangerously-skip-permissions \
  --max-budget-usd 1.00 \
  --agent chief-editor \
  "Quick edit this viral rapid-response article for publication. Fix any obvious issues with clarity, tone, and formatting. Ensure frontmatter is correct. Keep it tight — this is a rapid response.

Output ONLY the final article with frontmatter — no commentary.

$ARTICLE" 2>&1)
CLAUDE_RC=$?

if [ $CLAUDE_RC -ne 0 ]; then
  echo "Editor step failed (exit $CLAUDE_RC):"
  echo "$FINAL"
  exit 1
fi

# Strip code fence wrappers if claude wrapped the output in ```markdown ... ```
FINAL=$(echo "$FINAL" | sed '1{/^```/d;}' | sed '${/^```$/d;}')

# --- Save ---
TITLE=$(echo "$FINAL" | grep -m1 '^title:' | sed 's/^title: *"*//;s/"*$//')
if [ -z "$TITLE" ]; then
  SLUG="viral-response"
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
echo "  Viral rapid response complete!"
echo "======================================"
