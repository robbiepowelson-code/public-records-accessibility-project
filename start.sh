#!/usr/bin/env bash
# Start a local preview of the site at http://localhost:8000
cd "$(dirname "$0")"
PORT="${1:-8000}"
echo "Previewing at http://localhost:$PORT  (Ctrl+C to stop)"
( sleep 1; open "http://localhost:$PORT" 2>/dev/null || true ) &
python3 -m http.server "$PORT"
