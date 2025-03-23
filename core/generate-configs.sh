#!/bin/bash
HOST="$1"
TEMPLATE_DIR="./templates"
OUT_DIR="./configs/$HOST"
mkdir -p "$OUT_DIR"

envsubst < "$TEMPLATE_DIR/network.yaml.tpl" > "$OUT_DIR/network_vlan.yaml"
envsubst < "$TEMPLATE_DIR/users.yaml.tpl" > "$OUT_DIR/users.yaml"
envsubst < "$TEMPLATE_DIR/firewall.yaml.tpl" > "$OUT_DIR/firewall.yaml"

echo "✅ Konfigurationen für $HOST generiert unter $OUT_DIR"
