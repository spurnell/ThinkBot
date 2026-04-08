#!/usr/bin/env bash
# =============================================================================
# ThinkBot Schedule Setup
# =============================================================================
# Installs macOS launchd jobs for ThinkBot automation:
#   - Publish pipeline:  Daily — Mon/Wed/Fri 9 AM ET, Tue/Thu/Sat 4 PM ET, Sun 11 AM ET
#   - Viral monitor:     Daily at 8:00 AM and 8:00 PM
#
# Usage:
#   ./scripts/setup-schedule.sh              # Install all schedules
#   ./scripts/setup-schedule.sh --remove     # Remove all scheduled jobs
#   ./scripts/setup-schedule.sh --status     # Check job status
#
# The schedules can be customized by editing the generated plist files.
#
# TIMEZONE NOTE: launchd uses the Mac's LOCAL wall-clock time. The publish
# schedule is anchored to Eastern Time (ET) but the Mac is currently in CEST
# (UTC+2). Eastern Time is UTC-5, so the offset is +6 hours. The Hour values
# in the publish plist below already include this conversion. If you fly back
# to ET, subtract 6 from each Hour value (22 -> 16, 15 -> 9, 17 -> 11) and
# re-run this script. DST shifts will also offset by ±1.
# =============================================================================

set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
PROJECT_DIR="$(cd "$SCRIPT_DIR/.." && pwd)"
LOG_DIR="$PROJECT_DIR/logs"

PLIST_PUBLISH="com.thinkbot.publish"
PLIST_VIRAL="com.thinkbot.viral-monitor"
PLIST_PUBLISH_PATH="$HOME/Library/LaunchAgents/$PLIST_PUBLISH.plist"
PLIST_VIRAL_PATH="$HOME/Library/LaunchAgents/$PLIST_VIRAL.plist"

ACTION="${1:-install}"

case "$ACTION" in
  --remove)
    echo "Removing ThinkBot scheduled jobs..."
    LAUNCHCTL_LIST=$(launchctl list)
    for PLIST_NAME in "$PLIST_PUBLISH" "$PLIST_VIRAL"; do
      PLIST_PATH="$HOME/Library/LaunchAgents/$PLIST_NAME.plist"
      if echo "$LAUNCHCTL_LIST" | grep -q "$PLIST_NAME"; then
        launchctl unload "$PLIST_PATH" 2>/dev/null || true
      fi
      rm -f "$PLIST_PATH"
      echo "  Removed: $PLIST_NAME"
    done
    echo "Done. All scheduled jobs removed."
    exit 0
    ;;

  --status)
    echo "ThinkBot Schedule Status"
    echo "========================"
    echo ""
    # Capture launchctl list once into a variable to avoid SIGPIPE-with-pipefail
    # bug where `launchctl list | grep -q ...` reports a false negative because
    # grep -q closes the pipe early and pipefail surfaces launchctl's SIGPIPE.
    LAUNCHCTL_LIST=$(launchctl list)
    for PLIST_NAME in "$PLIST_PUBLISH" "$PLIST_VIRAL"; do
      PLIST_PATH="$HOME/Library/LaunchAgents/$PLIST_NAME.plist"
      if [ -f "$PLIST_PATH" ] && echo "$LAUNCHCTL_LIST" | grep -q "$PLIST_NAME"; then
        echo "  $PLIST_NAME: INSTALLED and ACTIVE"
      elif [ -f "$PLIST_PATH" ]; then
        echo "  $PLIST_NAME: plist EXISTS but NOT LOADED"
        echo "    Run: launchctl load $PLIST_PATH"
      else
        echo "  $PLIST_NAME: NOT INSTALLED"
      fi
    done
    echo ""
    echo "Schedules:"
    echo "  publish:        Daily — Mon/Wed/Fri 9 AM ET, Tue/Thu/Sat 4 PM ET, Sun 11 AM ET"
    echo "                  (CEST clock: Mon/Wed/Fri 15:00, Tue/Thu/Sat 22:00, Sun 17:00)"
    echo "  viral-monitor:  Daily at 8:00 AM and 8:00 PM"
    exit 0
    ;;

  install|*)
    echo "======================================"
    echo "  ThinkBot Schedule Setup"
    echo "======================================"
    echo ""

    # Create log directory
    mkdir -p "$LOG_DIR"

    # --- Publish pipeline plist ---
    cat > "$PLIST_PUBLISH_PATH" << PLIST
<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
<plist version="1.0">
<dict>
    <key>Label</key>
    <string>$PLIST_PUBLISH</string>
    <key>ProgramArguments</key>
    <array>
        <string>$SCRIPT_DIR/publish.sh</string>
    </array>
    <key>WorkingDirectory</key>
    <string>$PROJECT_DIR</string>
    <key>StartCalendarInterval</key>
    <array>
        <!-- Sunday at 11 AM EST = 17:00 CEST -->
        <dict>
            <key>Weekday</key>
            <integer>0</integer>
            <key>Hour</key>
            <integer>17</integer>
            <key>Minute</key>
            <integer>0</integer>
        </dict>
        <!-- Monday at 9 AM EST = 15:00 CEST -->
        <dict>
            <key>Weekday</key>
            <integer>1</integer>
            <key>Hour</key>
            <integer>15</integer>
            <key>Minute</key>
            <integer>0</integer>
        </dict>
        <!-- Tuesday at 4 PM EST = 22:00 CEST -->
        <dict>
            <key>Weekday</key>
            <integer>2</integer>
            <key>Hour</key>
            <integer>22</integer>
            <key>Minute</key>
            <integer>0</integer>
        </dict>
        <!-- Wednesday at 9 AM EST = 15:00 CEST -->
        <dict>
            <key>Weekday</key>
            <integer>3</integer>
            <key>Hour</key>
            <integer>15</integer>
            <key>Minute</key>
            <integer>0</integer>
        </dict>
        <!-- Thursday at 4 PM EST = 22:00 CEST -->
        <dict>
            <key>Weekday</key>
            <integer>4</integer>
            <key>Hour</key>
            <integer>22</integer>
            <key>Minute</key>
            <integer>0</integer>
        </dict>
        <!-- Friday at 9 AM EST = 15:00 CEST -->
        <dict>
            <key>Weekday</key>
            <integer>5</integer>
            <key>Hour</key>
            <integer>15</integer>
            <key>Minute</key>
            <integer>0</integer>
        </dict>
        <!-- Saturday at 4 PM EST = 22:00 CEST -->
        <dict>
            <key>Weekday</key>
            <integer>6</integer>
            <key>Hour</key>
            <integer>22</integer>
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
        <string>$HOME/.npm-global/bin:/usr/local/bin:/usr/bin:/bin:/opt/homebrew/bin</string>
        <key>HOME</key>
        <string>$HOME</string>
    </dict>
</dict>
</plist>
PLIST

    # --- Viral monitor plist ---
    cat > "$PLIST_VIRAL_PATH" << PLIST
<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
<plist version="1.0">
<dict>
    <key>Label</key>
    <string>$PLIST_VIRAL</string>
    <key>ProgramArguments</key>
    <array>
        <string>$SCRIPT_DIR/viral-monitor.sh</string>
    </array>
    <key>WorkingDirectory</key>
    <string>$PROJECT_DIR</string>
    <key>StartCalendarInterval</key>
    <array>
        <!-- 8:00 AM daily -->
        <dict>
            <key>Hour</key>
            <integer>8</integer>
            <key>Minute</key>
            <integer>0</integer>
        </dict>
        <!-- 8:00 PM daily -->
        <dict>
            <key>Hour</key>
            <integer>20</integer>
            <key>Minute</key>
            <integer>0</integer>
        </dict>
    </array>
    <key>StandardOutPath</key>
    <string>$LOG_DIR/viral-monitor-stdout.log</string>
    <key>StandardErrorPath</key>
    <string>$LOG_DIR/viral-monitor-stderr.log</string>
    <key>EnvironmentVariables</key>
    <dict>
        <key>PATH</key>
        <string>$HOME/.npm-global/bin:/usr/local/bin:/usr/bin:/bin:/opt/homebrew/bin</string>
        <key>HOME</key>
        <string>$HOME</string>
    </dict>
</dict>
</plist>
PLIST

    # Load both jobs
    launchctl unload "$PLIST_PUBLISH_PATH" 2>/dev/null || true
    launchctl load "$PLIST_PUBLISH_PATH"
    launchctl unload "$PLIST_VIRAL_PATH" 2>/dev/null || true
    launchctl load "$PLIST_VIRAL_PATH"

    echo "Schedules installed successfully!"
    echo ""
    echo "  Publish pipeline:"
    echo "    Plist:    $PLIST_PUBLISH_PATH"
    echo "    Script:   $SCRIPT_DIR/publish.sh"
    echo "    Schedule: Daily — Mon/Wed/Fri 9 AM ET, Tue/Thu/Sat 4 PM ET, Sun 11 AM ET"
    echo "              (CEST clock: Mon/Wed/Fri 15:00, Tue/Thu/Sat 22:00, Sun 17:00)"
    echo ""
    echo "  Viral monitor:"
    echo "    Plist:    $PLIST_VIRAL_PATH"
    echo "    Script:   $SCRIPT_DIR/viral-monitor.sh"
    echo "    Schedule: Daily at 8:00 AM and 8:00 PM"
    echo ""
    echo "  Logs: $LOG_DIR/"
    echo ""
    echo "Commands:"
    echo "  Check status:  ./scripts/setup-schedule.sh --status"
    echo "  Remove:        ./scripts/setup-schedule.sh --remove"
    echo "  Manual run:    ./scripts/publish.sh"
    echo "                 ./scripts/viral-monitor.sh"
    echo ""
    ;;
esac
