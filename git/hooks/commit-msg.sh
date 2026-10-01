#!/bin/sh
MSG=$(head -n 1 "$1")

echo "$MSG" | grep -E "^\[(CORE|TOOL|SCRIPT|DOC|CONF|MANIFEST|FIX|SEC|OPT|CLEAN)\]" > /dev/null
if [ $? -ne 0 ]; then
    echo "❌ Format invalide. Commit refusé."
    exit 1
fi

echo "✔️ Format valide."
exit 0
