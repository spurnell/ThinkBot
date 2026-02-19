#!/usr/bin/env bash
# =============================================================================
# ThinkBot Publish Pipeline
# =============================================================================
# Runs the full autonomous publication pipeline:
#   1. President scans news and generates article assignments
#   2. For each assignment: Director → Fellow → Editor pipeline
#   3. Final articles saved to website/content/articles/
#   4. Git commits the new articles
#
# Usage:
#   ./scripts/publish.sh              # Run full pipeline
#   ./scripts/publish.sh --dry-run    # Preview assignments without writing
# =============================================================================

set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
PROJECT_DIR="$(cd "$SCRIPT_DIR/.." && pwd)"
ARTICLES_DIR="$PROJECT_DIR/website/content/articles"
DRY_RUN=false

# Parse arguments
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
echo "Output:  $ARTICLES_DIR"
echo "Mode:    $([ "$DRY_RUN" = true ] && echo 'DRY RUN' || echo 'LIVE')"
echo "Date:    $(date '+%Y-%m-%d %H:%M')"
echo "======================================"
echo ""

# Ensure output directory exists
mkdir -p "$ARTICLES_DIR"

# Check for claude CLI
if ! command -v claude &> /dev/null; then
  echo "Error: 'claude' CLI not found. Install Claude Code first."
  echo "  npm install -g @anthropic-ai/claude-code"
  exit 1
fi

# Work from the project directory so claude picks up .claude/agents/
cd "$PROJECT_DIR"

# Step 1: President generates article assignments
echo "[1/4] President scanning news and generating assignments..."
ASSIGNMENTS=$(claude --print \
  --dangerously-skip-permissions \
  --agent president \
  "You are running in autonomous mode. Search the web for the latest tech policy news and developments. Identify 2-3 timely article opportunities. For each, produce a structured assignment with: title, assigned fellow, format, hook, thesis, audience, and key points. Output ONLY the assignments in the structured format specified in your system prompt.")

echo "$ASSIGNMENTS"
echo ""

if [ "$DRY_RUN" = true ]; then
  echo "[DRY RUN] Assignments generated. Exiting without writing articles."
  exit 0
fi

# Step 2-4: For each assignment, run the 2-round revision pipeline
echo "[2/4] Running Director → Fellow → Editor (feedback) → Fellow (revision) → Editor (final) pipeline..."
claude --print \
  --dangerously-skip-permissions \
  "You have the following article assignments from the President:

$ASSIGNMENTS

For each assignment, run the full 5-step publication pipeline with editorial revision loop:

1. **Director framing**: Use the director-of-policy agent to produce a policy framing document for the assignment.
2. **Fellow first draft**: Use the assigned fellow agent to write a first draft based on the assignment and framing.
3. **Editor feedback** (Feedback Mode): Use the chief-editor agent to review the first draft and produce structured editorial feedback — NOT a final version. The editor should follow its Feedback Mode instructions: overall assessment, major issues, minor issues, strengths, and a REVISE verdict.
4. **Fellow revision** (Revision Mode): Use the same fellow agent again, providing the editorial feedback. The fellow should follow its Revision Mode instructions: address every major issue, handle minor issues, preserve strengths, and return the complete revised article.
5. **Editor final polish** (Pipeline Mode / Final Edit): Use the chief-editor agent to do the final edit on the revised draft — polish prose, ensure ideological consistency, format with proper frontmatter, and produce the publication-ready version.

Save each final article to website/content/articles/ with the filename format YYYY-MM-DD-slug.md.

Process each assignment through all 5 steps and save the results."

echo ""
echo "[3/4] Pipeline complete. Checking for new articles..."

# List new articles
NEW_ARTICLES=$(find "$ARTICLES_DIR" -name "*.md" -newer "$SCRIPT_DIR/publish.sh" 2>/dev/null || true)
if [ -n "$NEW_ARTICLES" ]; then
  echo "New articles generated:"
  echo "$NEW_ARTICLES" | while read -r f; do echo "  - $(basename "$f")"; done
else
  echo "No new articles detected."
fi

# Step 4: Git commit if there are changes
echo ""
echo "[4/4] Committing new articles..."
cd "$PROJECT_DIR"
if git diff --quiet -- website/content/articles/ 2>/dev/null && \
   [ -z "$(git ls-files --others --exclude-standard website/content/articles/)" ]; then
  echo "No changes to commit."
else
  git add website/content/articles/
  git commit -m "publish: add new ThinkBot articles ($(date '+%Y-%m-%d'))"
  echo "Committed new articles."
  echo "Pushing to origin (triggers Vercel deploy)..."
  git push origin main
  echo "Pushed. Vercel will redeploy automatically."
fi

echo ""
echo "======================================"
echo "  Pipeline complete!"
echo "======================================"
