#!/usr/bin/env bash
echo "[CHECK-ENV] Vérification environnement MantraLab..."
command -v git >/dev/null && echo "✔️ Git OK" || echo "❌ Git manquant"
command -v brave-browser >/dev/null && echo "✔️ Brave OK" || echo "❌ Brave manquant"
command -v bash >/dev/null && echo "✔️ Bash OK" || echo "❌ Bash manquant"
echo "[CHECK-ENV] Terminé."
