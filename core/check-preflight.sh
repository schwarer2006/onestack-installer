#!/bin/bash
echo "✅ Prüfe grundlegende Voraussetzungen..."
which git >/dev/null || echo "❌ Git fehlt!"
which yq >/dev/null || echo "❌ yq fehlt!"
