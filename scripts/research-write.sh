#!/usr/bin/env bash
# =============================================================================
# ThinkBot Research Writer
# =============================================================================
# Daily incremental writing: fellows with active papers work on them one
# section per day, capped at $1.50/fellow to produce ~500-700 words/session.
#
# Runs: Daily Mon-Fri (10 AM)
# Budget: $1.50 per fellow per day
# Output: Appends to research/papers/{fellow}/{paper-id}/draft.md
#
# Usage:
#   ./scripts/research-write.sh              # Run daily writing session
#   ./scripts/research-write.sh --dry-run    # Preview without calling agents
# =============================================================================

set -uo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
PROJECT_DIR="$(cd "$SCRIPT_DIR/.." && pwd)"
STATE_DIR="$PROJECT_DIR/research/state"
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
echo "  ThinkBot Research Writer"
echo "======================================"
echo "Date:    $TODAY"
echo "Mode:    $([ "$DRY_RUN" = true ] && echo 'DRY RUN' || echo 'LIVE')"
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

WRITE_COUNT=0
REVIEW_TRIGGERED=false

for FELLOW in "${FELLOWS[@]}"; do
  STATE_FILE="$STATE_DIR/$FELLOW.json"
  if [ ! -f "$STATE_FILE" ]; then
    echo "Warning: No state file for $FELLOW. Skipping."
    continue
  fi

  STATUS=$(jq -r '.status' "$STATE_FILE")
  PAPER_ID=$(jq -r '.paper_id' "$STATE_FILE")
  PAPER_TITLE=$(jq -r '.paper_title' "$STATE_FILE")
  SESSIONS=$(jq -r '.writing_sessions' "$STATE_FILE")

  # Only process fellows with active papers
  if [ "$STATUS" != "approved" ] && [ "$STATUS" != "outlining" ] && [ "$STATUS" != "writing" ]; then
    echo "[$FELLOW] Status is '$STATUS' — skipping."
    continue
  fi

  PAPER_DIR="$PAPERS_DIR/$FELLOW/$PAPER_ID"
  if [ ! -d "$PAPER_DIR" ]; then
    echo "Error: Paper directory not found: $PAPER_DIR. Skipping."
    continue
  fi

  echo "--- Writing session: $FELLOW ---"
  echo "Paper: $PAPER_TITLE"
  echo "Status: $STATUS | Sessions: $SESSIONS"

  if [ "$DRY_RUN" = true ]; then
    case "$STATUS" in
      approved)
        echo "[DRY RUN] Would generate outline for: $PAPER_TITLE"
        ;;
      outlining|writing)
        echo "[DRY RUN] Would write next section of: $PAPER_TITLE"
        ;;
    esac
    echo ""
    WRITE_COUNT=$((WRITE_COUNT + 1))
    continue
  fi

  # --- Handle 'approved' status: generate outline ---
  if [ "$STATUS" = "approved" ]; then
    echo "Generating outline..."

    PROPOSAL_FILE="$PAPER_DIR/topic-proposal.md"
    PROPOSAL_CONTENT=""
    if [ -f "$PROPOSAL_FILE" ]; then
      PROPOSAL_CONTENT=$(cat "$PROPOSAL_FILE")
    fi

    OUTLINE=$(claude --print \
      --dangerously-skip-permissions \
      --max-budget-usd 1.50 \
      --agent "$FELLOW" \
      "You are running in RESEARCH PAPER MODE — outlining phase.

Create a detailed outline for your approved research paper. Include:
- Abstract placeholder (to be written last)
- All section headings with brief descriptions of content (2-3 sentences each)
- Estimated word count per section (total should be 5,000-8,000 words)
- Key sources to cite in each section

Format each section as:
## [Section Number]. [Section Title]
**Estimated words**: [number]
**Content**: [description]
**Key sources**: [sources]

End with a summary line: TOTAL_SECTIONS: [number]

--- TOPIC PROPOSAL ---
$PROPOSAL_CONTENT" 2>&1)
    CLAUDE_RC=$?

    if [ $CLAUDE_RC -ne 0 ]; then
      echo "Outline generation failed (exit $CLAUDE_RC):"
      echo "$OUTLINE" | head -20
      continue
    fi

    echo "$OUTLINE" > "$PAPER_DIR/outline.md"
    echo "Saved outline: $PAPER_DIR/outline.md"

    # Update status to writing
    jq --arg updated "$TODAY" \
       '.status = "writing" | .last_updated = $updated | .writing_sessions = (.writing_sessions + 1)' \
       "$STATE_FILE" > "$STATE_FILE.tmp" && mv "$STATE_FILE.tmp" "$STATE_FILE"

    echo "Status updated: approved → writing"
    WRITE_COUNT=$((WRITE_COUNT + 1))
    echo ""
    continue
  fi

  # --- Handle 'writing' or 'outlining' status: write next section ---
  OUTLINE_FILE="$PAPER_DIR/outline.md"
  DRAFT_FILE="$PAPER_DIR/draft.md"

  if [ ! -f "$OUTLINE_FILE" ]; then
    echo "Error: No outline found at $OUTLINE_FILE. Skipping."
    continue
  fi

  OUTLINE_CONTENT=$(cat "$OUTLINE_FILE")

  DRAFT_CONTENT=""
  if [ -f "$DRAFT_FILE" ]; then
    DRAFT_CONTENT=$(cat "$DRAFT_FILE")
  fi

  # Determine next section by comparing outline sections with draft content
  echo "Writing next section..."
  SECTION_OUTPUT=$(claude --print \
    --dangerously-skip-permissions \
    --max-budget-usd 1.50 \
    --agent "$FELLOW" \
    "You are running in RESEARCH PAPER MODE — section writing phase.

Write the NEXT section of your research paper. Rules:
- Write ONLY one section (aim for 500-700 words)
- Match the section heading from the outline
- End your output with exactly one of:
  SECTION_COMPLETE: [Section Name]
  SECTION_PARTIAL: [Section Name]
- If ALL sections from the outline are now complete (including this one), instead end with:
  PAPER_DRAFT_COMPLETE

Look at the outline to identify which sections exist, then look at the current draft to see which have been written. Write the next unwritten section.

--- OUTLINE ---
$OUTLINE_CONTENT

--- CURRENT DRAFT (so far) ---
$DRAFT_CONTENT" 2>&1)
  CLAUDE_RC=$?

  if [ $CLAUDE_RC -ne 0 ]; then
    echo "Writing session failed (exit $CLAUDE_RC):"
    echo "$SECTION_OUTPUT" | head -20
    continue
  fi

  # Append to draft
  if [ -f "$DRAFT_FILE" ]; then
    echo "" >> "$DRAFT_FILE"
    echo "$SECTION_OUTPUT" >> "$DRAFT_FILE"
  else
    echo "$SECTION_OUTPUT" > "$DRAFT_FILE"
  fi

  WORD_COUNT=$(wc -w < "$DRAFT_FILE" | tr -d ' ')
  echo "Appended to draft. Total words: $WORD_COUNT"

  # Update sessions count
  NEW_SESSIONS=$((SESSIONS + 1))
  jq --arg updated "$TODAY" \
     --argjson sessions "$NEW_SESSIONS" \
     '.last_updated = $updated | .writing_sessions = $sessions' \
     "$STATE_FILE" > "$STATE_FILE.tmp" && mv "$STATE_FILE.tmp" "$STATE_FILE"

  # Check if paper is complete
  if echo "$SECTION_OUTPUT" | grep -q "PAPER_DRAFT_COMPLETE"; then
    echo "Paper draft is COMPLETE! Moving to review."
    jq --arg updated "$TODAY" '.status = "reviewing" | .last_updated = $updated' \
       "$STATE_FILE" > "$STATE_FILE.tmp" && mv "$STATE_FILE.tmp" "$STATE_FILE"
    REVIEW_TRIGGERED=true
  fi

  WRITE_COUNT=$((WRITE_COUNT + 1))
  echo ""
done

echo "======================================"
echo "  Writing session complete!"
echo "  Fellows wrote: $WRITE_COUNT"
echo "======================================"

# Trigger review if any paper entered reviewing status
if [ "$REVIEW_TRIGGERED" = true ] && [ "$DRY_RUN" = false ]; then
  echo ""
  echo "Papers ready for review detected. Running research-review.sh..."
  "$SCRIPT_DIR/research-review.sh"
fi
