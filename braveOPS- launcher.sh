#!/usr/bin/env bash
# ============================================================
#  Script : braveOPS-launcher.sh
#  Projet : MantraLab v3.0
#  Objet  : Lancement des profils Brave durcis
#  Auteur : The MadDoG.tmdg
# ============================================================

set -euo pipefail

C_BLUE="\e[34m"; C_RESET="\e[0m"
log() { echo -e "${C_BLUE}[BRAVE-LAUNCHER]${C_RESET} $1"; }

BRAVE_BIN="brave-browser"
if ! command -v brave-browser >/dev/null 2>&1; then
    BRAVE_BIN="brave"
fi

CONFIG="$HOME/.config/BraveSoftware/Brave-Browser"

menu() {
    echo -e "${C_BLUE}=== BraveOPS Launcher — MantraLab v3.0 ===${C_RESET}"
    echo "1) Profil GitOps"
    echo "2) Profil OSINT"
    echo "3) Profil BlackOps"
    echo "4) Quitter"
    echo -n "Choix : "
}

launch_gitops() {
    log "Lancement profil GitOps…"
    "$BRAVE_BIN" --profile-directory="MantraLab-GitOps" >/dev/null 2>&1 &
}

launch_osint() {
    log "Lancement profil OSINT…"
    "$BRAVE_BIN" --profile-directory="MantraLab-OSINT" --disable-webrtc >/dev/null 2>&1 &
}

launch_blackops() {
    log "Lancement profil BlackOps…"
    "$BRAVE_BIN" --profile-directory="MantraLab-BlackOps" \
        --disable-webrtc \
        --incognito \
        --disable-extensions \
        >/dev/null 2>&1 &
}

while true; do
    menu
    read -r CHOICE
    case "$CHOICE" in
        1) launch_gitops ;;
        2) launch_osint ;;
        3) launch_blackops ;;
        4) exit 0 ;;
        *) echo "Choix invalide." ;;
    esac
done
