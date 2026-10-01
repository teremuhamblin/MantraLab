#!/usr/bin/env bash
FILE="$1"
echo "[HASH] SHA256:"
sha256sum "$FILE"
echo "[HASH] SHA512:"
sha512sum "$FILE"
