#!/bin/bash
echo "✅ Prüfe Zustand nach Installation..."
systemctl is-active ssh >/dev/null && echo "✅ SSH läuft" || echo "❌ SSH nicht aktiv"
