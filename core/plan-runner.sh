#!/bin/bash
source ./core/libs/helpers.sh

HOST=$(hostname -s)
CONFIG_DIR="./configs/$HOST"
LOG_FILE="./logs/install-$HOST.log"

mkdir -p logs

echo "[INFO] Starte Installationsplan für $HOST" | tee "$LOG_FILE"

for role in $(yq e ".servers.$HOST.roles[]" configs/server-plan.yaml); do
  echo "[INFO] ▶️ Starte Rolle: $role" | tee -a "$LOG_FILE"
  bash "roles/${HOST}_${role}.sh" --config "$CONFIG_DIR/$role.yaml" >> "$LOG_FILE" 2>&1
done

echo "[INFO] ✅ Alle Rollen ausgeführt." | tee -a "$LOG_FILE"
