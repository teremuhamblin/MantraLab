#!/bin/sh
echo "[MantraLab] Vérification pré-commit..."

# Interdiction des fichiers secrets
if git diff --cached --name-only | grep -E "\.key$|\.secret$|\.env$"; then
    echo "❌ Fichiers sensibles détectés. Commit refusé."
    exit 1
fi

# Interdiction des binaires non justifiés
if git diff --cached --name-only | grep -E "\.(exe|dll|bin|so)$"; then
    echo "❌ Binaire non autorisé. Commit refusé."
    exit 1
fi

echo "✔️ Discipline respectée."
exit 0
