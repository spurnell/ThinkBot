#!/usr/bin/env bash
# =============================================================================
# ThinkBot Research Scanner
# =============================================================================
# Weekly scan: each fellow searches academic journals, news, think tanks, and
# policy sources for research-worthy topics in their domain.
#
# Runs: Weekly (Mondays at 8 AM)
# Budget: $2 per fellow ($10/week max)
# Output: research/scans/{fellow}/{YYYY-MM-DD}-scan.md
#
# Usage:
#   ./scripts/research-scan.sh              # Run all fellow scans
#   ./scripts/research-scan.sh --dry-run    # Print what it would do
# =============================================================================

set -uo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
PROJECT_DIR="$(cd "$SCRIPT_DIR/.." && pwd)"
STATE_DIR="$PROJECT_DIR/research/state"
SCANS_DIR="$PROJECT_DIR/research/scans"
DRY_RUN=false
TODAY=$(date '+%Y-%m-%d')

FELLOWS=(
  "fellow-ai"
  "fellow-antitrust"
  "fellow-content-moderation"
  "fellow-general-tech"
  "fellow-tech-innovation"
)

for arg in "$@"; do
  case $arg in
    --dry-run) DRY_RUN=true ;;
    *) echo "Unknown argument: $arg"; exit 1 ;;
  esac
done

echo "======================================"
echo "  ThinkBot Research Scanner"
echo "======================================"
echo "Date:    $TODAY"
echo "Mode:    $([ "$DRY_RUN" = true ] && echo 'DRY RUN' || echo 'LIVE')"
echo "Fellows: ${#FELLOWS[@]}"
echo "======================================"
echo ""

if ! command -v claude &> /dev/null; then
  echo "Error: 'claude' CLI not found."
  exit 1
fi

if ! command -v jq &> /dev/null; then
  echo "Error: 'jq' not found. Install with: brew install jq"
  exit 1
fi

cd "$PROJECT_DIR"

SCAN_COUNT=0
FAIL_COUNT=0

for FELLOW in "${FELLOWS[@]}"; do
  echo "--- Scanning: $FELLOW ---"

  STATE_FILE="$STATE_DIR/$FELLOW.json"
  if [ ! -f "$STATE_FILE" ]; then
    echo "Warning: No state file for $FELLOW. Skipping."
    FAIL_COUNT=$((FAIL_COUNT + 1))
    continue
  fi

  FELLOW_SCAN_DIR="$SCANS_DIR/$FELLOW"
  mkdir -p "$FELLOW_SCAN_DIR"

  if [ "$DRY_RUN" = true ]; then
    echo "[DRY RUN] Would call $FELLOW to scan for research topics."
    echo "[DRY RUN] Output would go to: $FELLOW_SCAN_DIR/$TODAY-scan.md"
    echo ""
    SCAN_COUNT=$((SCAN_COUNT + 1))
    continue
  fi

  SCAN_OUTPUT=$(claude --print \
    --dangerously-skip-permissions \
    --max-budget-usd 2 \
    --agent "$FELLOW" \
    "You are running in RESEARCH SCANNING MODE.

Search the web for recent academic papers, working papers, policy reports, think tank publications, and significant developments in your domain that could be the basis for a ThinkBot research paper.

Produce a structured scan report with 5-8 interesting findings. For each, include:
1. **Title/Topic**: What you found
2. **Source**: Where it was published (journal, think tank, agency, etc.)
3. **Key Finding**: The core result or argument (1-2 sentences)
4. **Research Potential**: Why this could be a ThinkBot research paper topic (1-2 sentences)
5. **URL**: Link to the source if available

Focus on:
- Empirical findings and data-driven research
- New datasets or methodological approaches
- Policy developments with analytical depth potential
- Gaps in existing literature that ThinkBot could fill

Today's date: $TODAY" 2>&1)
  CLAUDE_RC=$?

  if [ $CLAUDE_RC -ne 0 ]; then
    echo "Scan failed for $FELLOW (exit $CLAUDE_RC):"
    echo "$SCAN_OUTPUT" | head -20
    FAIL_COUNT=$((FAIL_COUNT + 1))
    continue
  fi

  # Save scan output
  echo "$SCAN_OUTPUT" > "$FELLOW_SCAN_DIR/$TODAY-scan.md"
  echo "Saved: $FELLOW_SCAN_DIR/$TODAY-scan.md"

  # Update last_updated in state
  jq --arg date "$TODAY" '.last_updated = $date' "$STATE_FILE" > "$STATE_FILE.tmp" && mv "$STATE_FILE.tmp" "$STATE_FILE"

  SCAN_COUNT=$((SCAN_COUNT + 1))
  echo ""
done

echo "======================================"
echo "  Scan complete!"
echo "  Succeeded: $SCAN_COUNT / ${#FELLOWS[@]}"
[ $FAIL_COUNT -gt 0 ] && echo "  Failed:    $FAIL_COUNT"
echo "======================================"
