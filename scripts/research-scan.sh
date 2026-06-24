#!/usr/bin/env bash
# =============================================================================
# ThinkBot Research Scanner
# =============================================================================
# Weekly scan: each fellow searches academic journals, news, think tanks, and
# policy sources for research-worthy topics in their domain.
#
# Runs: Weekly (Mondays at 8 AM) — only idle fellows scan
# Uses Max subscription (no per-call API cost)
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

# Run ID ties every tool-call log entry to this pipeline invocation.
# Consumed by the PostToolUse hook at scripts/log-tool-call.sh.
export THINKBOT_RUN_ID="scan-$(date -u +%Y-%m-%dT%H%M%S)"

FELLOWS=(
  "fellow-ai"
  "fellow-antitrust"
  "fellow-content-moderation"
  "fellow-general-tech"
  "fellow-tech-innovation"
)

# Per-fellow pointers into research/sources/ — which curated files to sweep first.
# Fellows still search the open web; this is a floor, not a ceiling.
# (Implemented as a case statement because macOS ships bash 3.2, which lacks
# associative arrays.)
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

  # Only scan idle fellows to reduce costs — fellows with active papers
  # don't need to discover new topics yet
  STATUS=$(jq -r '.status' "$STATE_FILE")
  if [ "$STATUS" != "idle" ]; then
    echo "[$FELLOW] Status is '$STATUS' — skipping (only idle fellows scan)."
    echo ""
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

  SOURCE_HINT="$(source_hint_for "$FELLOW")"

  SCAN_OUTPUT=$(claude --print \
    --dangerously-skip-permissions \
    --agent "$FELLOW" \
    "You are running in RESEARCH SCANNING MODE.

## Curated source corpus (always sweep these)

ThinkBot maintains a curated source corpus at \`research/sources/\`. You MUST sweep the files most relevant to your domain before concluding a scan — Read them and check their listed outlets / journals / think tanks for new material. For your domain, prioritize:

$SOURCE_HINT

The full corpus is in: research/sources/newspapers.md, research/sources/think-tanks-liberal.md, research/sources/think-tanks-conservative.md, research/sources/journals-paid.md, research/sources/journals-open.md.

This corpus is a **floor, not a ceiling**. After sweeping it, also search the open web for developments outside the corpus. You do not need to justify citing sources outside the corpus — the goal is the best research, not corpus purity.

## Your task

Search for recent academic papers, working papers, policy reports, think tank publications, and significant developments in your domain that could be the basis for a ThinkBot research paper.

Produce a structured scan report with 5-8 interesting findings. For each, include:
1. **Title/Topic**: What you found
2. **Source**: Where it was published (journal, think tank, agency, etc.)
3. **Key Finding**: The core result or argument (1-2 sentences)
4. **Research Potential**: Why this could be a ThinkBot research paper topic (1-2 sentences)
5. **URL**: Link to the source if available
6. **In corpus?**: Yes / No — whether the source appears in research/sources/

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
