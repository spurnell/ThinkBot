#!/usr/bin/env bash
# =============================================================================
# ThinkBot Research Schedule Setup
# =============================================================================
# Installs macOS launchd jobs for the research paper pipeline:
#   - research-scan:    Monday 8:00 AM
#   - research-discuss: Tuesday 8:00 AM
#   - research-write:   Mon-Fri 10:00 AM
#
# Review is triggered automatically by research-write.sh, not scheduled.
#
# Usage:
#   ./scripts/research-schedule.sh              # Install schedule
#   ./scripts/research-schedule.sh --remove     # Remove all research jobs
#   ./scripts/research-schedule.sh --status     # Check job status
# =============================================================================

set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
PROJECT_DIR="$(cd "$SCRIPT_DIR/.." && pwd)"
LOG_DIR="$PROJECT_DIR/logs"
LAUNCH_DIR="$HOME/Library/LaunchAgents"

PLIST_SCAN="com.thinkbot.research-scan"
PLIST_DISCUSS="com.thinkbot.research-discuss"
PLIST_WRITE="com.thinkbot.research-write"

ACTION="${1:-install}"

case "$ACTION" in
  --remove)
    echo "Removing ThinkBot research scheduled jobs..."
    for PLIST in "$PLIST_SCAN" "$PLIST_DISCUSS" "$PLIST_WRITE"; do
      PLIST_PATH="$LAUNCH_DIR/$PLIST.plist"
      if launchctl list | grep -q "$PLIST"; then
        launchctl unload "$PLIST_PATH" 2>/dev/null || true
      fi
      rm -f "$PLIST_PATH"
      echo "  Removed: $PLIST"
    done
    echo "Done. All research jobs removed."
    exit 0
    ;;

  --status)
    echo "ThinkBot Research Schedule Status"
    echo "================================="
    for PLIST in "$PLIST_SCAN" "$PLIST_DISCUSS" "$PLIST_WRITE"; do
      PLIST_PATH="$LAUNCH_DIR/$PLIST.plist"
      if [ -f "$PLIST_PATH" ] && launchctl list | grep -q "$PLIST"; then
        echo "  $PLIST: INSTALLED and ACTIVE"
      elif [ -f "$PLIST_PATH" ]; then
        echo "  $PLIST: EXISTS but NOT LOADED"
      else
        echo "  $PLIST: NOT INSTALLED"
      fi
    done
    echo ""
    echo "Schedule:"
    echo "  research-scan:    Monday 8:00 AM"
    echo "  research-discuss: Tuesday 8:00 AM"
    echo "  research-write:   Mon-Fri 10:00 AM"
    exit 0
    ;;

  install|*)
    echo "======================================"
    echo "  ThinkBot Research Schedule Setup"
    echo "======================================"
    echo ""

    mkdir -p "$LOG_DIR" "$LAUNCH_DIR"

    # --- research-scan: Monday 8 AM ---
    cat > "$LAUNCH_DIR/$PLIST_SCAN.plist" << PLIST
<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
<plist version="1.0">
<dict>
    <key>Label</key>
    <string>$PLIST_SCAN</string>
    <key>ProgramArguments</key>
    <array>
        <string>$SCRIPT_DIR/research-scan.sh</string>
    </array>
    <key>WorkingDirectory</key>
    <string>$PROJECT_DIR</string>
    <key>StartCalendarInterval</key>
    <dict>
        <key>Weekday</key>
        <integer>1</integer>
        <key>Hour</key>
        <integer>8</integer>
        <key>Minute</key>
        <integer>0</integer>
    </dict>
    <key>StandardOutPath</key>
    <string>$LOG_DIR/research-scan-stdout.log</string>
    <key>StandardErrorPath</key>
    <string>$LOG_DIR/research-scan-stderr.log</string>
    <key>EnvironmentVariables</key>
    <dict>
        <key>PATH</key>
        <string>/usr/local/bin:/usr/bin:/bin:/opt/homebrew/bin</string>
        <key>HOME</key>
        <string>$HOME</string>
    </dict>
</dict>
</plist>
PLIST

    # --- research-discuss: Tuesday 8 AM ---
    cat > "$LAUNCH_DIR/$PLIST_DISCUSS.plist" << PLIST
<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
<plist version="1.0">
<dict>
    <key>Label</key>
    <string>$PLIST_DISCUSS</string>
    <key>ProgramArguments</key>
    <array>
        <string>$SCRIPT_DIR/research-discuss.sh</string>
    </array>
    <key>WorkingDirectory</key>
    <string>$PROJECT_DIR</string>
    <key>StartCalendarInterval</key>
    <dict>
        <key>Weekday</key>
        <integer>2</integer>
        <key>Hour</key>
        <integer>8</integer>
        <key>Minute</key>
        <integer>0</integer>
    </dict>
    <key>StandardOutPath</key>
    <string>$LOG_DIR/research-discuss-stdout.log</string>
    <key>StandardErrorPath</key>
    <string>$LOG_DIR/research-discuss-stderr.log</string>
    <key>EnvironmentVariables</key>
    <dict>
        <key>PATH</key>
        <string>/usr/local/bin:/usr/bin:/bin:/opt/homebrew/bin</string>
        <key>HOME</key>
        <string>$HOME</string>
    </dict>
</dict>
</plist>
PLIST

    # --- research-write: Mon-Fri 10 AM ---
    cat > "$LAUNCH_DIR/$PLIST_WRITE.plist" << PLIST
<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
<plist version="1.0">
<dict>
    <key>Label</key>
    <string>$PLIST_WRITE</string>
    <key>ProgramArguments</key>
    <array>
        <string>$SCRIPT_DIR/research-write.sh</string>
    </array>
    <key>WorkingDirectory</key>
    <string>$PROJECT_DIR</string>
    <key>StartCalendarInterval</key>
    <array>
        <!-- Monday -->
        <dict>
            <key>Weekday</key>
            <integer>1</integer>
            <key>Hour</key>
            <integer>10</integer>
            <key>Minute</key>
            <integer>0</integer>
        </dict>
        <!-- Tuesday -->
        <dict>
            <key>Weekday</key>
            <integer>2</integer>
            <key>Hour</key>
            <integer>10</integer>
            <key>Minute</key>
            <integer>0</integer>
        </dict>
        <!-- Wednesday -->
        <dict>
            <key>Weekday</key>
            <integer>3</integer>
            <key>Hour</key>
            <integer>10</integer>
            <key>Minute</key>
            <integer>0</integer>
        </dict>
        <!-- Thursday -->
        <dict>
            <key>Weekday</key>
            <integer>4</integer>
            <key>Hour</key>
            <integer>10</integer>
            <key>Minute</key>
            <integer>0</integer>
        </dict>
        <!-- Friday -->
        <dict>
            <key>Weekday</key>
            <integer>5</integer>
            <key>Hour</key>
            <integer>10</integer>
            <key>Minute</key>
            <integer>0</integer>
        </dict>
    </array>
    <key>StandardOutPath</key>
    <string>$LOG_DIR/research-write-stdout.log</string>
    <key>StandardErrorPath</key>
    <string>$LOG_DIR/research-write-stderr.log</string>
    <key>EnvironmentVariables</key>
    <dict>
        <key>PATH</key>
        <string>/usr/local/bin:/usr/bin:/bin:/opt/homebrew/bin</string>
        <key>HOME</key>
        <string>$HOME</string>
    </dict>
</dict>
</plist>
PLIST

    # Load all jobs
    for PLIST in "$PLIST_SCAN" "$PLIST_DISCUSS" "$PLIST_WRITE"; do
      PLIST_PATH="$LAUNCH_DIR/$PLIST.plist"
      launchctl unload "$PLIST_PATH" 2>/dev/null || true
      launchctl load "$PLIST_PATH"
      echo "  Loaded: $PLIST"
    done

    echo ""
    echo "Research schedule installed successfully!"
    echo ""
    echo "  Schedule:"
    echo "    research-scan:    Monday 8:00 AM"
    echo "    research-discuss: Tuesday 8:00 AM"
    echo "    research-write:   Mon-Fri 10:00 AM"
    echo "    research-review:  Triggered automatically"
    echo ""
    echo "  Logs: $LOG_DIR/"
    echo ""
    echo "Commands:"
    echo "  Check status:  ./scripts/research-schedule.sh --status"
    echo "  Remove:        ./scripts/research-schedule.sh --remove"
    echo "  Manual scan:   ./scripts/research-scan.sh"
    echo "  Manual write:  ./scripts/research-write.sh"
    echo ""
    ;;
esac
