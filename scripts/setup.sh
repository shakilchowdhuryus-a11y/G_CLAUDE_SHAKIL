#!/usr/bin/env bash
# Idempotent setup: installs deps for any project that declares them.
set -euo pipefail
cd "$(dirname "$0")/.."
for d in . projects/*/; do
  [ -d "$d" ] || continue
  if [ -f "$d/package-lock.json" ]; then (cd "$d" && npm ci --silent)
  elif [ -f "$d/package.json" ]; then (cd "$d" && npm install --silent); fi
  if [ -f "$d/requirements.txt" ]; then pip install -q -r "$d/requirements.txt"; fi
done
echo "setup ok"
