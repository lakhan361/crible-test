#!/usr/bin/env bash
set -euo pipefail
mkdir -p logs
echo "$(date +'%Y-%m-%d %H:%M:%S.000') INFO manual test line" >> logs/app.log
echo "✓ Wrote a test line to logs/app.log"
