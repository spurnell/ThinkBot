#!/usr/bin/env bash
# =============================================================================
# ThinkBot Schedule Setup
# =============================================================================
# Installs macOS launchd jobs for ThinkBot automation:
#   - Publish pipeline:  Daily 03:00, 04:00, 05:00 CEST (3 articles/night)
#   - Viral monitor:     Daily 01:30 and 13:30 CEST
#
# Usage:
#   ./scripts/setup-schedule.sh              # Install all schedules
#   ./scripts/setup-schedule.sh --remove     # Remove all scheduled jobs
#   ./scripts/setup-schedule.sh --status     # Check job status
#
# The schedules can be customized by editing the generated plist files.
#
# TIMEZONE NOTE: launchd uses the Mac's LOCAL wall-clock time. The Mac is in
# CEST (UTC+2) and the Hour values in the plists below are CEST wall-clock.
# All heavy automation is clustered into a single overnight window (01:30 ->
# ~06:15 CEST) so it fits inside one Claude Max 5-hour rolling window and
# never competes with daytime interactive use. DST shifts are handled
# automatically by launchd since times are local-clock.
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
    echo "  publish:        Daily 03:00, 04:00, 05:00 CEST (3 articles/night)"
    echo "  viral-monitor:  Daily 01:30 and 13:30 CEST"
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
        <!-- Article 1 of 3 — 03:00 CEST daily -->
        <dict>
            <key>Hour</key>
            <integer>3</integer>
            <key>Minute</key>
            <integer>0</integer>
        </dict>
        <!-- Article 2 of 3 — 04:00 CEST daily -->
        <dict>
            <key>Hour</key>
            <integer>4</integer>
            <key>Minute</key>
            <integer>0</integer>
        </dict>
        <!-- Article 3 of 3 — 05:00 CEST daily -->
        <dict>
            <key>Hour</key>
            <integer>5</integer>
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
        <!-- 01:30 CEST daily — night cluster -->
        <dict>
            <key>Hour</key>
            <integer>1</integer>
            <key>Minute</key>
            <integer>30</integer>
        </dict>
        <!-- 13:30 CEST daily — afternoon news-cycle check -->
        <dict>
            <key>Hour</key>
            <integer>13</integer>
            <key>Minute</key>
            <integer>30</integer>
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
    echo "    Schedule: Daily 03:00, 04:00, 05:00 CEST (3 articles/night)"
    echo ""
    echo "  Viral monitor:"
    echo "    Plist:    $PLIST_VIRAL_PATH"
    echo "    Script:   $SCRIPT_DIR/viral-monitor.sh"
    echo "    Schedule: Daily 01:30 and 13:30 CEST"
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
