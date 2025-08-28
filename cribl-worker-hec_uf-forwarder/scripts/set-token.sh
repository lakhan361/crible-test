#!/usr/bin/env bash
set -euo pipefail
if [ $# -ne 1 ]; then echo "Usage: $0 <HEC_TOKEN>"; exit 1; fi
conf="uf-app/local/outputs.conf"
[ -f "$conf" ] || { echo "Missing $conf"; exit 1; }
sed -i.bak "s|^token = .*|token = $1|" "$conf"
echo "✓ Token set in $conf"
