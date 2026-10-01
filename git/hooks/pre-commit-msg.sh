#!/bin/sh
TEMPLATE=".git/templates/COMMIT_TEMPLATE.txt"

if [ -f "$TEMPLATE" ]; then
    cat "$TEMPLATE" >> "$1"
fi
