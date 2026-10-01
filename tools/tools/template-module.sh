#!/usr/bin/env bash
NAME="$1"
mkdir -p "$NAME"/{src,docs,tests}
echo "# Module $NAME — MantraLab v3.0" > "$NAME/README.md"
echo "[MODULE] $NAME créé."
