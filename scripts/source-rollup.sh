#!/usr/bin/env bash
# =============================================================================
# ThinkBot — Source Observability Rollup
# =============================================================================
# Reads logs/tool-calls/*.jsonl from the last N days and prints a markdown
# report of source consultation patterns.
#
# Usage:
#   ./scripts/source-rollup.sh                # last 7 days to stdout
#   ./scripts/source-rollup.sh --days 30      # last 30 days
#   ./scripts/source-rollup.sh --save         # also write to logs/tool-calls/rollup-YYYY-MM-DD.md
# =============================================================================

set -euo pipefail

PROJECT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
LOG_DIR="$PROJECT_DIR/logs/tool-calls"
SOURCES_DIR="$PROJECT_DIR/research/sources"
DAYS=7
SAVE=false

while [ $# -gt 0 ]; do
  case $1 in
    --days)   DAYS="$2"; shift 2 ;;
    --days=*) DAYS="${1#*=}"; shift ;;
    --save)   SAVE=true; shift ;;
    -h|--help)
      sed -n '3,12p' "$0" | sed 's/^# \{0,1\}//'
      exit 0
      ;;
    *) echo "Unknown arg: $1" >&2; exit 1 ;;
  esac
done

if ! command -v jq &>/dev/null; then
  echo "Error: jq not found. brew install jq" >&2
  exit 1
fi

if [ ! -d "$LOG_DIR" ]; then
  echo "No log directory yet: $LOG_DIR" >&2
  echo "Run at least one pipeline first." >&2
  exit 0
fi

# Collect JSONL files modified in the last N days (bash 3.2 compat — no mapfile).
FILES=()
while IFS= read -r line; do
  [ -n "$line" ] && FILES+=("$line")
done < <(find "$LOG_DIR" -maxdepth 1 -name '*.jsonl' -mtime "-${DAYS}" 2>/dev/null | sort)

if [ "${#FILES[@]}" -eq 0 ]; then
  echo "No tool-call logs in the last $DAYS days." >&2
  exit 0
fi

# Concatenate all entries to a single JSONL stream for jq.
ALL_JSONL=$(cat "${FILES[@]}")

TOTAL=$(printf '%s\n' "$ALL_JSONL" | jq -s 'length')
if [ "$TOTAL" -eq 0 ]; then
  echo "Log files are empty." >&2
  exit 0
fi

IN_CORPUS=$(printf '%s\n' "$ALL_JSONL" | jq -s '[.[] | select(.in_corpus==true)] | length')
HIT_RATE=$(awk -v i="$IN_CORPUS" -v t="$TOTAL" 'BEGIN{ if(t>0) printf "%.1f", (i/t)*100; else print "0.0" }')

# Build corpus host list (authoritative, not from cache).
CORPUS_HOSTS=$(grep -ohE 'https?://[^ |)]+' "$SOURCES_DIR"/*.md 2>/dev/null \
  | sed -E 's|^https?://([^/]+).*|\1|' \
  | sort -u)

# Observed hosts (from WebFetch entries with non-empty URL).
OBSERVED_HOSTS=$(printf '%s\n' "$ALL_JSONL" \
  | jq -r 'select(.url != null and .url != "") | .url' \
  | sed -E 's|^https?://([^/]+).*|\1|' \
  | sort)

# ---------- Rendering ----------
OUT=$(mktemp)
{
  echo "# Source Observability Rollup"
  echo ""
  echo "- Window: last $DAYS days (files: ${#FILES[@]})"
  echo "- Generated: $(date -u +%Y-%m-%dT%H:%M:%SZ)"
  echo "- Total tool calls logged: $TOTAL"
  echo "- In-corpus hit rate: **$HIT_RATE%** ($IN_CORPUS / $TOTAL)"
  echo ""

  echo "## Tool breakdown"
  echo ""
  echo "| Tool | Count |"
  echo "|------|------:|"
  printf '%s\n' "$ALL_JSONL" | jq -r '.tool // "unknown"' | sort | uniq -c | sort -rn \
    | awk '{ printf "| %s | %d |\n", $2, $1 }'
  echo ""

  echo "## Top 20 consulted hosts"
  echo ""
  echo "| Count | Host | In corpus? |"
  echo "|------:|------|:-----------|"
  printf '%s\n' "$OBSERVED_HOSTS" | uniq -c | sort -rn | head -20 | while read -r count host; do
    if printf '%s\n' "$CORPUS_HOSTS" | grep -qxF "$host"; then
      mark="yes"
    else
      mark="no"
    fi
    printf "| %d | %s | %s |\n" "$count" "$host" "$mark"
  done
  echo ""

  echo "## Dark matter — top hosts consulted ≥3× that are NOT in the corpus"
  echo ""
  DARK=$(printf '%s\n' "$OBSERVED_HOSTS" | uniq -c | sort -rn | awk '$1 >= 3 { print }' \
    | while read -r count host; do
        if ! printf '%s\n' "$CORPUS_HOSTS" | grep -qxF "$host"; then
          printf "| %d | %s |\n" "$count" "$host"
        fi
      done)
  if [ -z "$DARK" ]; then
    echo "_None — every high-frequency host is already in the corpus._"
  else
    echo "| Count | Host |"
    echo "|------:|------|"
    echo "$DARK" | head -10
  fi
  echo ""

  echo "## Unused corpus entries — hosts in the corpus with zero hits"
  echo ""
  UNUSED=$(printf '%s\n' "$CORPUS_HOSTS" | while read -r host; do
    [ -z "$host" ] && continue
    if ! printf '%s\n' "$OBSERVED_HOSTS" | grep -qxF "$host"; then
      echo "- $host"
    fi
  done)
  if [ -z "$UNUSED" ]; then
    echo "_None — every corpus host was consulted at least once._"
  else
    printf '%s\n' "$UNUSED"
  fi
  echo ""

  echo "## Banned-source alarms"
  echo ""
  BLOCKED=$(printf '%s\n' "$ALL_JSONL" | jq -r 'select(.url != null and .url != "") | .url' \
    | grep -iE 'aibusinessreview\.org' | sort | uniq -c | sort -rn || true)
  if [ -z "$BLOCKED" ]; then
    echo "_No hits on banned sources (aibusinessreview.org). Good._"
  else
    echo '```'
    echo "$BLOCKED"
    echo '```'
  fi
  echo ""

  echo "## Top 20 WebSearch queries"
  echo ""
  echo "| Count | Query |"
  echo "|------:|-------|"
  printf '%s\n' "$ALL_JSONL" | jq -r 'select(.tool=="WebSearch" and .query != "") | .query' \
    | sort | uniq -c | sort -rn | head -20 \
    | awk '{ n=$1; $1=""; sub(/^ /,""); printf "| %d | %s |\n", n, $0 }'
  echo ""

  echo "## Corpus file reads (smoking gun for corpus consultation)"
  echo ""
  CORPUS_READS=$(printf '%s\n' "$ALL_JSONL" \
    | jq -r 'select(.tool=="Read" and (.file_path | test("research/sources"))) | .file_path' \
    | sed -E "s|.*research/sources/||" | sort | uniq -c | sort -rn)
  if [ -z "$CORPUS_READS" ]; then
    echo "_No corpus files were Read during this window._"
    echo ""
    echo "This means fellows are steering from the in-prompt hint text but have not actually opened the corpus files."
  else
    echo "| Count | File |"
    echo "|------:|------|"
    echo "$CORPUS_READS" | awk '{ printf "| %d | %s |\n", $1, $2 }'
  fi
  echo ""

  echo "## Per-run-ID breakdown"
  echo ""
  echo "| Run ID | Calls | In-corpus | % |"
  echo "|--------|------:|----------:|--:|"
  printf '%s\n' "$ALL_JSONL" | jq -r '.run_id // "(unset)"' | sort -u | while read -r run; do
    calls=$(printf '%s\n' "$ALL_JSONL" | jq --arg r "$run" -s '[.[] | select((.run_id // "(unset)")==$r)] | length')
    corp=$(printf '%s\n' "$ALL_JSONL" | jq --arg r "$run" -s '[.[] | select((.run_id // "(unset)")==$r and .in_corpus==true)] | length')
    pct=$(awk -v c="$corp" -v t="$calls" 'BEGIN{ if(t>0) printf "%.0f", (c/t)*100; else print "0" }')
    printf "| %s | %d | %d | %s%% |\n" "$run" "$calls" "$corp" "$pct"
  done
  echo ""
} > "$OUT"

cat "$OUT"

if [ "$SAVE" = true ]; then
  DEST="$LOG_DIR/rollup-$(date -u +%Y-%m-%d).md"
  cp "$OUT" "$DEST"
  echo ""
  echo "Saved: $DEST"
fi

rm -f "$OUT"
