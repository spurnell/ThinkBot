#!/usr/bin/env bash
# =============================================================================
# ThinkBot Research Review & Publish
# =============================================================================
# Reviews completed research paper drafts: editor feedback, fellow revision,
# final polish, then publishes to website/content/research/.
#
# Runs: Triggered by research-write.sh or manually
# Budget: ~$8 per paper (editor feedback + fellow revision + final polish)
# Output: website/content/research/{date}-{slug}.md
#
# Usage:
#   ./scripts/research-review.sh              # Review all papers in 'reviewing'
#   ./scripts/research-review.sh --dry-run    # Preview without calling agents
# =============================================================================

set -uo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
PROJECT_DIR="$(cd "$SCRIPT_DIR/.." && pwd)"
STATE_DIR="$PROJECT_DIR/research/state"
PAPERS_DIR="$PROJECT_DIR/research/papers"
RESEARCH_OUTPUT_DIR="$PROJECT_DIR/website/content/research"
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
echo "  ThinkBot Research Review"
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
mkdir -p "$RESEARCH_OUTPUT_DIR"

REVIEW_COUNT=0

for FELLOW in "${FELLOWS[@]}"; do
  STATE_FILE="$STATE_DIR/$FELLOW.json"
  if [ ! -f "$STATE_FILE" ]; then
    continue
  fi

  STATUS=$(jq -r '.status' "$STATE_FILE")
  PAPER_ID=$(jq -r '.paper_id' "$STATE_FILE")
  PAPER_TITLE=$(jq -r '.paper_title' "$STATE_FILE")
  COMPLETED=$(jq -r '.papers_completed_this_year' "$STATE_FILE")

  if [ "$STATUS" != "reviewing" ]; then
    continue
  fi

  PAPER_DIR="$PAPERS_DIR/$FELLOW/$PAPER_ID"
  DRAFT_FILE="$PAPER_DIR/draft.md"

  if [ ! -f "$DRAFT_FILE" ]; then
    echo "Error: No draft found for $FELLOW at $DRAFT_FILE. Skipping."
    continue
  fi

  echo "--- Reviewing: $FELLOW ---"
  echo "Paper: $PAPER_TITLE"
  echo "Paper ID: $PAPER_ID"

  DRAFT_CONTENT=$(cat "$DRAFT_FILE")
  WORD_COUNT=$(echo "$DRAFT_CONTENT" | wc -w | tr -d ' ')
  echo "Draft word count: $WORD_COUNT"
  echo ""

  if [ "$DRY_RUN" = true ]; then
    echo "[DRY RUN] Would send to chief-editor for feedback."
    echo "[DRY RUN] Would send back to $FELLOW for revision."
    echo "[DRY RUN] Would send to chief-editor for final polish."
    echo "[DRY RUN] Would publish to $RESEARCH_OUTPUT_DIR/"
    echo ""
    REVIEW_COUNT=$((REVIEW_COUNT + 1))
    continue
  fi

  # --- Step 1: Chief Editor feedback ---
  echo "[1/3] Chief Editor reviewing draft..."
  FEEDBACK=$(claude --print \
    --dangerously-skip-permissions \
    --max-budget-usd 3 \
    --agent chief-editor \
    "You are reviewing a RESEARCH PAPER draft (not a standard article). Apply your Research Paper Editing standards.

This is a longer-form piece (5,000-10,000 words target). Evaluate:
- Analytical rigor and evidence quality
- Structure and logical flow
- Source quality and quantity (20+ sourced hyperlinks expected)
- Abstract/executive summary quality
- Methodology section (if applicable)
- Clarity and readability
- Consistency with ThinkBot's positions

Produce your standard editorial feedback document (Overall Assessment, Major Issues, Minor Issues, Strengths, Source Audit).

--- PAPER TITLE ---
$PAPER_TITLE

--- DRAFT ---
$DRAFT_CONTENT" 2>&1)
  CLAUDE_RC=$?

  if [ $CLAUDE_RC -ne 0 ]; then
    echo "Editor feedback failed (exit $CLAUDE_RC):"
    echo "$FEEDBACK" | head -20
    continue
  fi

  # Save feedback
  echo "$FEEDBACK" > "$PAPER_DIR/revision-notes.md"
  echo "Saved feedback: $PAPER_DIR/revision-notes.md"
  echo ""

  # --- Step 2: Fellow revision ---
  echo "[2/3] $FELLOW revising paper..."
  REVISED=$(claude --print \
    --dangerously-skip-permissions \
    --max-budget-usd 3 \
    --agent "$FELLOW" \
    "You are running in RESEARCH PAPER MODE — revision phase.

Revise your research paper based on the editor's feedback. Address all major issues and as many minor issues as you can. Preserve the analytical structure and your strongest sections.

Return the COMPLETE revised paper — not just the changes. Include proper markdown frontmatter:
---
title: \"$PAPER_TITLE\"
author: \"$FELLOW\"
date: \"$TODAY\"
category: \"[appropriate category]\"
tags: [\"relevant\", \"tags\"]
status: \"published\"
format: \"research-paper\"
summary: \"[one-paragraph summary]\"
---

Output ONLY the complete paper with frontmatter — no commentary.

--- ORIGINAL DRAFT ---
$DRAFT_CONTENT

--- EDITOR FEEDBACK ---
$FEEDBACK" 2>&1)
  CLAUDE_RC=$?

  if [ $CLAUDE_RC -ne 0 ]; then
    echo "Fellow revision failed (exit $CLAUDE_RC):"
    echo "$REVISED" | head -20
    continue
  fi

  # Overwrite draft with revision
  echo "$REVISED" > "$DRAFT_FILE"
  REVISED_WORD_COUNT=$(echo "$REVISED" | wc -w | tr -d ' ')
  echo "Revision complete. Word count: $REVISED_WORD_COUNT"
  echo ""

  # --- Step 3: Chief Editor final polish ---
  echo "[3/3] Chief Editor final polish..."
  FINAL=$(claude --print \
    --dangerously-skip-permissions \
    --max-budget-usd 2 \
    --agent chief-editor \
    "Final edit of this RESEARCH PAPER for publication. This is the revised version after your feedback was incorporated.

Polish for clarity, tone, and formatting. Ensure:
- Frontmatter is complete and correct (format should be 'research-paper')
- Abstract/executive summary is strong
- All sections flow logically
- Sources are properly linked
- Author is set to \"$FELLOW\" and date to \"$TODAY\"

Output ONLY the complete final paper with frontmatter — no commentary.

$REVISED" 2>&1)
  CLAUDE_RC=$?

  if [ $CLAUDE_RC -ne 0 ]; then
    echo "Final polish failed (exit $CLAUDE_RC):"
    echo "$FINAL" | head -20
    continue
  fi

  # Strip code fence wrappers
  FINAL=$(echo "$FINAL" | sed '1{/^```/d;}' | sed '${/^```$/d;}')

  # --- Save and publish ---
  TITLE=$(echo "$FINAL" | grep -m1 '^title:' | sed 's/^title: *"*//;s/"*$//')
  if [ -z "$TITLE" ]; then
    SLUG="research-paper"
  else
    SLUG=$(echo "$TITLE" | tr '[:upper:]' '[:lower:]' | sed 's/[^a-z0-9]/-/g' | sed 's/-\{2,\}/-/g' | sed 's/^-\|-$//g' | cut -c1-60)
  fi

  FILEPATH="$RESEARCH_OUTPUT_DIR/$TODAY-$SLUG.md"
  echo "$FINAL" > "$FILEPATH"
  FINAL_WORD_COUNT=$(echo "$FINAL" | wc -w | tr -d ' ')
  echo "Published: $FILEPATH ($FINAL_WORD_COUNT words)"
  echo ""

  # --- Git commit and push ---
  echo "Committing..."
  if [ -f "$FILEPATH" ]; then
    git add "$FILEPATH"
    git commit -m "research: $TITLE"
    git push origin main
    echo "Pushed. Vercel will redeploy."
  fi

  # --- Update state ---
  NEW_COMPLETED=$((COMPLETED + 1))
  jq --arg updated "$TODAY" \
     --argjson completed "$NEW_COMPLETED" \
     '.status = "idle" | .paper_id = null | .paper_title = null | .assigned_date = null | .target_completion = null | .last_updated = $updated | .writing_sessions = 0 | .papers_completed_this_year = $completed' \
     "$STATE_FILE" > "$STATE_FILE.tmp" && mv "$STATE_FILE.tmp" "$STATE_FILE"

  echo "State updated: $FELLOW → idle (papers completed this year: $NEW_COMPLETED)"
  REVIEW_COUNT=$((REVIEW_COUNT + 1))
  echo ""
done

echo "======================================"
echo "  Review complete!"
echo "  Papers published: $REVIEW_COUNT"
echo "======================================"
