#!/usr/bin/env bash
# =============================================================================
# ThinkBot Research Discussion
# =============================================================================
# Weekly topic discussion: idle fellows propose 2-3 research topics from their
# scan results. President picks one, Director confirms alignment.
#
# Runs: Biweekly (every other Tuesday at 8 AM) — cost optimization
# Budget: ~$2.50 per fellow (proposal + president + director)
# Output: research/papers/{fellow}/{paper-id}/topic-proposal.md
#
# Usage:
#   ./scripts/research-discuss.sh              # Run topic discussion
#   ./scripts/research-discuss.sh --dry-run    # Preview without calling agents
# =============================================================================

set -uo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
PROJECT_DIR="$(cd "$SCRIPT_DIR/.." && pwd)"
STATE_DIR="$PROJECT_DIR/research/state"
SCANS_DIR="$PROJECT_DIR/research/scans"
PAPERS_DIR="$PROJECT_DIR/research/papers"
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
echo "  ThinkBot Research Discussion"
echo "======================================"
echo "Date:    $TODAY"
echo "Mode:    $([ "$DRY_RUN" = true ] && echo 'DRY RUN' || echo 'LIVE')"
echo "======================================"
echo ""

# Biweekly gate: only run on odd-numbered ISO weeks to cut costs in half.
# The schedule still fires every Tuesday, but we skip even weeks.
WEEK_NUM=$(date '+%V' | sed 's/^0//')
if [ $((WEEK_NUM % 2)) -eq 0 ]; then
  echo "Skipping — biweekly schedule (week $WEEK_NUM is even). Next run next Tuesday."
  exit 0
fi

if ! command -v claude &> /dev/null; then
  echo "Error: 'claude' CLI not found."
  exit 1
fi

if ! command -v jq &> /dev/null; then
  echo "Error: 'jq' not found. Install with: brew install jq"
  exit 1
fi

cd "$PROJECT_DIR"

# Build context of existing and in-progress research papers
RESEARCH_OUTPUT_DIR="$PROJECT_DIR/website/content/research"
EXISTING_PAPERS=""

# Published research papers
if ls "$RESEARCH_OUTPUT_DIR"/*.md &>/dev/null 2>&1; then
  EXISTING_PAPERS="## Published Research Papers
"
  for f in $(ls -t "$RESEARCH_OUTPUT_DIR"/*.md 2>/dev/null); do
    title=$(grep -m1 '^title:' "$f" | sed 's/^title: *"*//;s/"*$//')
    date=$(grep -m1 '^date:' "$f" | sed 's/^date: *"*//;s/"*$//')
    author=$(grep -m1 '^author:' "$f" | sed 's/^author: *"*//;s/"*$//')
    EXISTING_PAPERS+="- [$date] ($author) $title
"
  done
fi

# In-progress papers from state files
IN_PROGRESS=""
for sf in "$STATE_DIR"/*.json; do
  sf_status=$(jq -r '.status' "$sf")
  sf_fellow=$(jq -r '.fellow' "$sf")
  sf_title=$(jq -r '.paper_title' "$sf")
  if [ "$sf_status" != "idle" ] && [ "$sf_title" != "null" ]; then
    IN_PROGRESS+="- ($sf_fellow, status: $sf_status) $sf_title
"
  fi
done

RESEARCH_CONTEXT=""
if [ -n "$EXISTING_PAPERS" ] || [ -n "$IN_PROGRESS" ]; then
  RESEARCH_CONTEXT="--- EXISTING RESEARCH PAPERS (avoid overlap) ---
$EXISTING_PAPERS"
  if [ -n "$IN_PROGRESS" ]; then
    RESEARCH_CONTEXT+="
## In-Progress Papers
$IN_PROGRESS"
  fi
fi

DISCUSS_COUNT=0
APPROVE_COUNT=0

for FELLOW in "${FELLOWS[@]}"; do
  STATE_FILE="$STATE_DIR/$FELLOW.json"
  if [ ! -f "$STATE_FILE" ]; then
    echo "Warning: No state file for $FELLOW. Skipping."
    continue
  fi

  STATUS=$(jq -r '.status' "$STATE_FILE")
  if [ "$STATUS" != "idle" ]; then
    echo "[$FELLOW] Status is '$STATUS' — skipping (only idle fellows discuss topics)."
    echo ""
    continue
  fi

  echo "--- Discussing topics: $FELLOW ---"
  DISCUSS_COUNT=$((DISCUSS_COUNT + 1))

  # Find the most recent scan file
  FELLOW_SCAN_DIR="$SCANS_DIR/$FELLOW"
  LATEST_SCAN=$(ls -t "$FELLOW_SCAN_DIR"/*-scan.md 2>/dev/null | head -1)

  if [ -z "$LATEST_SCAN" ]; then
    echo "No scan files found for $FELLOW. Run research-scan.sh first. Skipping."
    echo ""
    continue
  fi

  echo "Using scan: $LATEST_SCAN"
  SCAN_CONTENT=$(cat "$LATEST_SCAN")

  if [ "$DRY_RUN" = true ]; then
    echo "[DRY RUN] Would call $FELLOW to propose 2-3 research topics."
    echo "[DRY RUN] Would call president to review proposals."
    echo "[DRY RUN] Would call director-of-policy for alignment check."
    echo ""
    continue
  fi

  # --- Step 1: Fellow proposes topics ---
  echo "[1/3] $FELLOW proposing research topics..."
  PROPOSAL=$(claude --print \
    --dangerously-skip-permissions \
    --max-budget-usd 1 \
    --agent "$FELLOW" \
    "You are running in RESEARCH PAPER MODE — topic proposal phase.

Based on your recent scan results below, propose 2-3 research paper topics. For each, provide:

1. **Working Title**: A clear, descriptive title
2. **Research Question**: The specific question the paper will answer
3. **Methodology**: One of: empirical-analysis, literature-review, economic-analysis, comparative-policy
4. **Estimated Scope**: Brief description of what the paper will cover (3-4 sentences)
5. **Key Sources**: 3-5 key sources you would draw on
6. **Policy Relevance**: Why this matters for ThinkBot's audience

Number your proposals (1, 2, 3). These should be genuine research contributions — not just opinion pieces in long form.

--- YOUR RECENT SCAN ---
$SCAN_CONTENT" 2>&1)
  CLAUDE_RC=$?

  if [ $CLAUDE_RC -ne 0 ]; then
    echo "Proposal step failed for $FELLOW (exit $CLAUDE_RC):"
    echo "$PROPOSAL" | head -20
    continue
  fi

  echo "$PROPOSAL" | head -5
  echo "..."
  echo ""

  # --- Step 2: President reviews and selects ---
  echo "[2/3] President reviewing proposals..."
  PRESIDENT_REVIEW=$(claude --print \
    --dangerously-skip-permissions \
    --max-budget-usd 1 \
    --agent president \
    "You are running in RESEARCH PAPER REVIEW MODE.

A fellow has proposed research paper topics. Review them and select ONE that best advances ThinkBot's research agenda.

Evaluate against:
- Originality: Is this a genuine contribution, not rehashing existing ThinkBot positions?
- Strategic value: Does this fill a gap in policy literature?
- Feasibility: Can this be researched and written in ~10 writing sessions?
- Impact: Will policymakers and industry find this valuable?

Output ONE of:
- RESEARCH_APPROVED: [Proposal Number] — followed by brief direction for the fellow
- NONE_APPROVED: [Guidance] — if none are suitable, explain why and what to look for instead

IMPORTANT: Reject any proposal that overlaps with an existing or in-progress paper listed below.

--- FELLOW: $FELLOW ---

--- PROPOSALS ---
$PROPOSAL

$RESEARCH_CONTEXT" 2>&1)
  CLAUDE_RC=$?

  if [ $CLAUDE_RC -ne 0 ]; then
    echo "President review failed (exit $CLAUDE_RC):"
    echo "$PRESIDENT_REVIEW" | head -20
    continue
  fi

  echo "$PRESIDENT_REVIEW"
  echo ""

  # Check if approved
  if echo "$PRESIDENT_REVIEW" | grep -q "NONE_APPROVED"; then
    echo "President did not approve any proposals for $FELLOW. Will try again next week."
    echo ""
    continue
  fi

  if ! echo "$PRESIDENT_REVIEW" | grep -q "RESEARCH_APPROVED"; then
    echo "Could not parse president's response. Skipping $FELLOW."
    echo ""
    continue
  fi

  # --- Step 3: Director alignment check ---
  echo "[3/3] Director checking alignment..."
  DIRECTOR_CHECK=$(claude --print \
    --dangerously-skip-permissions \
    --max-budget-usd 0.50 \
    --agent director-of-policy \
    "You are running in RESEARCH PAPER ALIGNMENT CHECK mode.

A fellow's research paper topic has been approved by the President. Do a quick compatibility check:
- Is the research question compatible with ThinkBot's intellectual agenda?
- Are there ideological hazards (places where the research might inadvertently bolster the case for heavy regulation)?

This is a LIGHT check — not a full framing document. Output one of:
- RESEARCH_ALIGNED — with a one-line note
- RESEARCH_CONCERN: [explanation] — if there's a compatibility issue (including topic overlap)

IMPORTANT: Also confirm the topic does not overlap with any existing or in-progress paper listed below.

--- FELLOW: $FELLOW ---

--- PROPOSALS ---
$PROPOSAL

--- PRESIDENT'S SELECTION ---
$PRESIDENT_REVIEW

$RESEARCH_CONTEXT" 2>&1)
  CLAUDE_RC=$?

  if [ $CLAUDE_RC -ne 0 ]; then
    echo "Director check failed (exit $CLAUDE_RC):"
    echo "$DIRECTOR_CHECK" | head -20
    continue
  fi

  echo "$DIRECTOR_CHECK"
  echo ""

  if echo "$DIRECTOR_CHECK" | grep -q "RESEARCH_CONCERN"; then
    echo "Director flagged concerns for $FELLOW. Will try again next week."
    echo ""
    continue
  fi

  # --- All approved: set up paper ---
  # Generate a paper ID from date and fellow
  PAPER_ID="${TODAY}-$(echo "$FELLOW" | sed 's/fellow-//')"
  PAPER_DIR="$PAPERS_DIR/$FELLOW/$PAPER_ID"
  mkdir -p "$PAPER_DIR"

  # Extract a working title from the proposal (best effort)
  APPROVED_NUM=$(echo "$PRESIDENT_REVIEW" | grep -oP 'RESEARCH_APPROVED:\s*\K[0-9]+' | head -1)
  if [ -z "$APPROVED_NUM" ]; then
    APPROVED_NUM="1"
  fi

  # Save the proposal document
  cat > "$PAPER_DIR/topic-proposal.md" << EOF
# Research Paper Proposal

**Fellow**: $FELLOW
**Approved Date**: $TODAY
**Paper ID**: $PAPER_ID

## Fellow's Proposals

$PROPOSAL

## President's Selection

$PRESIDENT_REVIEW

## Director's Alignment Check

$DIRECTOR_CHECK
EOF

  echo "Saved proposal: $PAPER_DIR/topic-proposal.md"

  # Calculate target completion (~10 weeks out)
  if command -v gdate &> /dev/null; then
    TARGET=$(gdate -d "$TODAY + 70 days" '+%Y-%m-%d')
  else
    TARGET=$(date -v+70d '+%Y-%m-%d')
  fi

  # Extract title from the approved proposal (best effort)
  PAPER_TITLE=$(echo "$PROPOSAL" | grep -A1 "^${APPROVED_NUM}\." | grep -oP '\*\*Working Title\*\*:\s*\K.*' | head -1)
  if [ -z "$PAPER_TITLE" ]; then
    PAPER_TITLE="Research Paper $PAPER_ID"
  fi

  # Update state
  jq --arg status "approved" \
     --arg paper_id "$PAPER_ID" \
     --arg paper_title "$PAPER_TITLE" \
     --arg assigned "$TODAY" \
     --arg target "$TARGET" \
     --arg updated "$TODAY" \
     '.status = $status | .paper_id = $paper_id | .paper_title = $paper_title | .assigned_date = $assigned | .target_completion = $target | .last_updated = $updated | .writing_sessions = 0' \
     "$STATE_FILE" > "$STATE_FILE.tmp" && mv "$STATE_FILE.tmp" "$STATE_FILE"

  echo "State updated: $FELLOW → approved (paper: $PAPER_ID)"
  APPROVE_COUNT=$((APPROVE_COUNT + 1))
  echo ""
done

echo "======================================"
echo "  Discussion complete!"
echo "  Idle fellows discussed: $DISCUSS_COUNT"
echo "  Papers approved:        $APPROVE_COUNT"
echo "======================================"
