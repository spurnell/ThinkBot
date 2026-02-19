#!/usr/bin/env bash
# =============================================================================
# ThinkBot News Monitor
# =============================================================================
# Scans current tech policy news for significant developments and triggers
# rapid-response articles when warranted.
#
# Usage:
#   ./scripts/news-monitor.sh              # Run once
#   ./scripts/news-monitor.sh --dry-run    # Check for news without writing
#
# Can be run hourly via cron/launchd for continuous monitoring.
# =============================================================================

set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
PROJECT_DIR="$(cd "$SCRIPT_DIR/.." && pwd)"
ARTICLES_DIR="$PROJECT_DIR/website/content/articles"
DRY_RUN=false

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

# Work from the project directory so claude picks up .claude/agents/
cd "$PROJECT_DIR"

# Step 1: President scans news for significant developments
echo "[1/2] Scanning tech policy news..."
SCAN_RESULT=$(claude --print \
  --dangerously-skip-permissions \
  --agent president \
  "You are running in news monitoring mode. Search the web for BREAKING or SIGNIFICANT tech policy developments from the last 24 hours. Look for:
- New legislation introduced or passed
- Major court decisions (antitrust, Section 230, AI)
- Executive orders or agency rulings
- Major company announcements with policy implications
- International regulatory actions (EU, UK, etc.)

If you find a development that warrants a rapid-response article, output a single assignment in your standard format with format set to 'rapid-response'.

If nothing significant has happened, output exactly: NO_SIGNIFICANT_NEWS")

echo "$SCAN_RESULT"
echo ""

# Check if there's news worth responding to
if echo "$SCAN_RESULT" | grep -q "NO_SIGNIFICANT_NEWS"; then
  echo "No significant developments detected. Exiting."
  exit 0
fi

if [ "$DRY_RUN" = true ]; then
  echo "[DRY RUN] Significant development detected. Exiting without writing."
  exit 0
fi

# Step 2: Run rapid-response pipeline
echo "[2/2] Running rapid-response pipeline..."
claude --print \
  --dangerously-skip-permissions \
  "The President has identified a significant development requiring a rapid response:

$SCAN_RESULT

Run the rapid-response pipeline:
1. Use the director-of-policy agent for quick policy framing
2. Use the assigned fellow to write a rapid-response piece (800-1200 words)
3. Use the chief-editor agent for a fast edit and formatting

Save the article to website/content/articles/ with format 'rapid-response' in the frontmatter.
This needs to be fast and timely — prioritize speed while maintaining quality."

# Commit and push if there are new articles
echo ""
echo "[3/3] Committing and deploying..."
cd "$PROJECT_DIR"
if git diff --quiet -- website/content/articles/ 2>/dev/null && \
   [ -z "$(git ls-files --others --exclude-standard website/content/articles/)" ]; then
  echo "No new articles to commit."
else
  git add website/content/articles/
  git commit -m "rapid-response: $(date '+%Y-%m-%d') breaking news article"
  git push origin main
  echo "Pushed. Vercel will redeploy automatically."
fi

echo ""
echo "======================================"
echo "  Rapid response complete!"
echo "======================================"
