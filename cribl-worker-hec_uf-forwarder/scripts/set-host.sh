#!/usr/bin/env bash
set -euo pipefail
if [ $# -ne 1 ]; then echo "Usage: $0 <HOST_OR_IP:PORT>"; exit 1; fi
conf="uf-app/local/outputs.conf"
[ -f "$conf" ] || { echo "Missing $conf"; exit 1; }
sed -i.bak "s|^server = .*|server = $1|" "$conf"
echo "✓ Server set to $1 in $conf"
