#!/usr/bin/env bash
# =============================================================================
# ThinkBot Schedule Setup
# =============================================================================
# Installs a macOS launchd job to run the publish pipeline on a schedule.
# Default: Monday, Wednesday, Friday at 9:00 AM.
#
# Usage:
#   ./scripts/setup-schedule.sh              # Install default schedule
#   ./scripts/setup-schedule.sh --remove     # Remove the scheduled job
#   ./scripts/setup-schedule.sh --status     # Check if job is installed
#
# The schedule can be customized by editing the generated plist file.
# =============================================================================

set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
PROJECT_DIR="$(cd "$SCRIPT_DIR/.." && pwd)"
PLIST_NAME="com.thinkbot.publish"
PLIST_PATH="$HOME/Library/LaunchAgents/$PLIST_NAME.plist"
LOG_DIR="$PROJECT_DIR/logs"

ACTION="${1:-install}"

case "$ACTION" in
  --remove)
    echo "Removing ThinkBot scheduled job..."
    if launchctl list | grep -q "$PLIST_NAME"; then
      launchctl unload "$PLIST_PATH" 2>/dev/null || true
    fi
    rm -f "$PLIST_PATH"
    echo "Done. Scheduled job removed."
    exit 0
    ;;

  --status)
    if [ -f "$PLIST_PATH" ] && launchctl list | grep -q "$PLIST_NAME"; then
      echo "ThinkBot publish job is INSTALLED and ACTIVE."
      echo "Plist: $PLIST_PATH"
      echo ""
      echo "Schedule: Monday, Wednesday, Friday at 9:00 AM"
    elif [ -f "$PLIST_PATH" ]; then
      echo "ThinkBot publish job plist EXISTS but is NOT LOADED."
      echo "Run: launchctl load $PLIST_PATH"
    else
      echo "ThinkBot publish job is NOT INSTALLED."
      echo "Run: ./scripts/setup-schedule.sh"
    fi
    exit 0
    ;;

  install|*)
    echo "======================================"
    echo "  ThinkBot Schedule Setup"
    echo "======================================"
    echo ""

    # Create log directory
    mkdir -p "$LOG_DIR"

    # Create launchd plist
    cat > "$PLIST_PATH" << PLIST
<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
<plist version="1.0">
<dict>
    <key>Label</key>
    <string>$PLIST_NAME</string>
    <key>ProgramArguments</key>
    <array>
        <string>$SCRIPT_DIR/publish.sh</string>
    </array>
    <key>WorkingDirectory</key>
    <string>$PROJECT_DIR</string>
    <key>StartCalendarInterval</key>
    <array>
        <!-- Monday at 9:00 AM -->
        <dict>
            <key>Weekday</key>
            <integer>1</integer>
            <key>Hour</key>
            <integer>9</integer>
            <key>Minute</key>
            <integer>0</integer>
        </dict>
        <!-- Wednesday at 9:00 AM -->
        <dict>
            <key>Weekday</key>
            <integer>3</integer>
            <key>Hour</key>
            <integer>9</integer>
            <key>Minute</key>
            <integer>0</integer>
        </dict>
        <!-- Friday at 9:00 AM -->
        <dict>
            <key>Weekday</key>
            <integer>5</integer>
            <key>Hour</key>
            <integer>9</integer>
            <key>Minute</key>
            <integer>0</integer>
        </dict>
    </array>
    <key>StandardOutPath</key>
    <string>$LOG_DIR/publish-stdout.log</string>
    <key>StandardErrorPath</key>
    <string>$LOG_DIR/publish-stderr.log</string>
    <key>EnvironmentVariables</key>
    <dict>
        <key>PATH</key>
        <string>/usr/local/bin:/usr/bin:/bin:/opt/homebrew/bin</string>
    </dict>
</dict>
</plist>
PLIST

    # Load the job
    launchctl unload "$PLIST_PATH" 2>/dev/null || true
    launchctl load "$PLIST_PATH"

    echo "Schedule installed successfully!"
    echo ""
    echo "  Plist:    $PLIST_PATH"
    echo "  Script:   $SCRIPT_DIR/publish.sh"
    echo "  Schedule: Mon/Wed/Fri at 9:00 AM"
    echo "  Logs:     $LOG_DIR/"
    echo ""
    echo "Commands:"
    echo "  Check status:  ./scripts/setup-schedule.sh --status"
    echo "  Remove:        ./scripts/setup-schedule.sh --remove"
    echo "  Manual run:    ./scripts/publish.sh"
    echo ""
    ;;
esac
