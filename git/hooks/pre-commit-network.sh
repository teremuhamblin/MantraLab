#!/bin/sh
echo "[MantraLab] Analyse de sécurité réseau..."

FILES=$(git diff --cached --name-only)

# Interdiction des captures réseau
echo "$FILES" | grep -E "\.(pcap|pcapng|cap)$" >/dev/null
if [ $? -eq 0 ]; then
    echo "❌ Capture réseau détectée (pcap/cap). Commit refusé."
    exit 1
fi

# Interdiction des dumps mémoire
echo "$FILES" | grep -E "\.(dump|mem|raw)$" >/dev/null
if [ $? -eq 0 ]; then
    echo "❌ Dump mémoire détecté. Commit refusé."
    exit 1
fi

# Interdiction des scripts réseau non conformes
echo "$FILES" | grep -E "network_.*\.sh$" >/dev/null
if [ $? -eq 0 ]; then
    echo "⚠️ Script réseau détecté : vérification..."
    if ! grep -q "MANTRALAB-NETSEC" "$FILES"; then
        echo "❌ Script réseau non conforme. Commit refusé."
        exit 1
    fi
fi

echo "✔️ Sécurité réseau validée."
exit 0
