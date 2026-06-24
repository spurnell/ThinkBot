#!/usr/bin/env bash
# =============================================================================
# ThinkBot — PostToolUse hook: log source-consultation tool calls to JSONL.
# =============================================================================
# Fires after every WebSearch / WebFetch / Read tool call. Reads the hook JSON
# payload on stdin and appends one JSONL line to logs/tool-calls/YYYY-MM-DD.jsonl.
#
# CRITICAL: Must ALWAYS exit 0 — a hook failure must not break the pipeline.
# =============================================================================

set +e  # never fail the pipeline
exec 2>/dev/null  # swallow any stderr noise

PROJECT_DIR="${CLAUDE_PROJECT_DIR:-$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)}"
LOG_DIR="$PROJECT_DIR/logs/tool-calls"
TODAY=$(date -u +%Y-%m-%d)
LOG_FILE="$LOG_DIR/$TODAY.jsonl"
HOSTS_CACHE="$LOG_DIR/.corpus-hosts.txt"

mkdir -p "$LOG_DIR"

INPUT=$(cat)

# Rebuild corpus-host cache once per day (or if missing).
if [ ! -f "$HOSTS_CACHE" ] || [ -n "$(find "$HOSTS_CACHE" -mtime +0 2>/dev/null)" ]; then
  grep -ohE 'https?://[^ |)]+' "$PROJECT_DIR/research/sources/"*.md 2>/dev/null \
    | sed -E 's|^https?://([^/]+).*|\1|' \
    | sort -u \
    > "$HOSTS_CACHE"
fi

# Fail-safe: if jq is missing, log a minimal line and bail.
if ! command -v jq &>/dev/null; then
  printf '{"ts":"%s","err":"jq-missing"}\n' "$(date -u +%Y-%m-%dT%H:%M:%SZ)" >> "$LOG_FILE"
  exit 0
fi

TOOL=$(printf '%s' "$INPUT" | jq -r '.tool_name // empty')
SESSION=$(printf '%s' "$INPUT" | jq -r '.session_id // empty')

URL=""; QUERY=""; FILE_PATH=""
case "$TOOL" in
  WebFetch)
    URL=$(printf '%s' "$INPUT" | jq -r '.tool_input.url // empty')
    ;;
  WebSearch)
    QUERY=$(printf '%s' "$INPUT" | jq -r '.tool_input.query // empty')
    ;;
  Read)
    FILE_PATH=$(printf '%s' "$INPUT" | jq -r '.tool_input.file_path // empty')
    ;;
  *)
    exit 0  # unmatched tool; nothing to log
    ;;
esac

IN_CORPUS=false
if [ -n "$URL" ] && [ -f "$HOSTS_CACHE" ]; then
  HOST=$(printf '%s' "$URL" | sed -E 's|^https?://([^/]+).*|\1|')
  if grep -qxF "$HOST" "$HOSTS_CACHE"; then
    IN_CORPUS=true
  fi
fi
if [ -n "$FILE_PATH" ]; then
  case "$FILE_PATH" in
    *research/sources/*) IN_CORPUS=true ;;
  esac
fi

TS=$(date -u +%Y-%m-%dT%H:%M:%SZ)
RUN_ID="${THINKBOT_RUN_ID:-}"

jq -cn \
  --arg ts "$TS" \
  --arg session "$SESSION" \
  --arg run_id "$RUN_ID" \
  --arg tool "$TOOL" \
  --arg url "$URL" \
  --arg query "$QUERY" \
  --arg file_path "$FILE_PATH" \
  --argjson in_corpus "$IN_CORPUS" \
  '{ts:$ts, session:$session, run_id:$run_id, tool:$tool, url:$url, query:$query, file_path:$file_path, in_corpus:$in_corpus}' \
  >> "$LOG_FILE"

exit 0
