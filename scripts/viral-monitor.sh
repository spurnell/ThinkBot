#!/usr/bin/env bash
# =============================================================================
# ThinkBot Viral Monitor
# =============================================================================
# Checks for VIRAL tech policy news every 12 hours. Only produces a
# rapid-response article if something is truly dominating headlines.
# Most runs detect nothing and exit quickly.
#
# Two-phase design:
#   Phase 1: Virality gate (President with Haiku) — NO_VIRAL or VIRAL_DETECTED
#   Phase 2: Pipeline — Director review+framing → Fellow → Editor
# Uses Max subscription (no per-call API cost)
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
echo "[1/4] Checking for viral tech policy news..."
VIRAL_CHECK=$(claude --print \
  --dangerously-skip-permissions \
  --model claude-haiku-4-5-20251001 \
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

The bar is HIGH. Most runs should return NO_VIRAL.

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
FELLOW=$(echo "$VIRAL_CHECK" | grep -oE 'fellow-[a-z-]+' | head -1)
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

# --- Phase 2a: Director topic review + framing (combined call) ---
RECENT_ARTICLES=$(for f in $(ls -t "$ARTICLES_DIR"/*.md 2>/dev/null | head -10); do
  title=$(grep -m1 '^title:' "$f" | sed 's/^title: *"*//;s/"*$//')
  date=$(grep -m1 '^date:' "$f" | sed 's/^date: *"*//;s/"*$//')
  summary=$(grep -m1 '^summary:' "$f" | sed 's/^summary: *"*//;s/"*$//')
  echo "- [$date] $title — $summary"
done)

echo "[2/4] Director reviewing topic + producing framing..."
FRAMING=$(claude --print \
  --dangerously-skip-permissions \
  --agent director-of-policy \
  "You have TWO tasks for this viral rapid-response. Complete both in a single response.

TASK 1 — TOPIC REVIEW: Check this viral story against our recent publications. This was flagged as VIRAL — give extra leeway for breaking developments, but reject if the angle is essentially identical to a recent piece. Start your response with VERDICT: APPROVED or VERDICT: REJECTED with a brief rationale.

TASK 2 — POLICY FRAMING (only if APPROVED): Produce a BRIEF policy framing. Keep it under 300 words — this is urgent.

--- VIRAL DETECTION ---
$VIRAL_CHECK

--- RECENT THINKBOT ARTICLES (last 10) ---
$RECENT_ARTICLES" 2>&1)
CLAUDE_RC=$?

if [ $CLAUDE_RC -ne 0 ]; then
  echo "Director step failed (exit $CLAUDE_RC):"
  echo "$FRAMING"
  exit 1
fi

echo "$FRAMING"
echo ""

if echo "$FRAMING" | grep -qi "VERDICT: REJECTED"; then
  echo "Topic rejected by Director of Policy as too repetitive. Skipping."
  exit 0
fi

echo "Topic approved by Director of Policy (with framing)."
echo ""

# --- Phase 2b: Fellow writes rapid-response ---
echo "[3/4] $FELLOW writing rapid-response..."
ARTICLE=$(claude --print \
  --dangerously-skip-permissions \
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

# --- Phase 2c: Editor quick polish ---
echo "[4/4] Chief Editor polishing..."
FINAL=$(claude --print \
  --dangerously-skip-permissions \
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
  "$SCRIPT_DIR/tweet.sh" "$FILEPATH"
else
  echo "No article file found. Skipping commit."
fi

echo ""
echo "======================================"
echo "  Viral rapid response complete!"
echo "======================================"
