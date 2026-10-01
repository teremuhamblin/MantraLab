#!/usr/bin/env bash
# ============================================================
#  Script : braveOPS.sh
#  Projet : MantraLab v3.0
#  Objet  : Installation + Durcissement du navigateur Brave
#  Auteur : The MadDoG.tmdg
# ============================================================

set -euo pipefail

C_GREEN="\e[32m"; C_RED="\e[31m"; C_YELLOW="\e[33m"; C_RESET="\e[0m"
log() { echo -e "${C_GREEN}[BRAVE-OPS]${C_RESET} $1"; }
warn() { echo -e "${C_YELLOW}[AVERTISSEMENT]${C_RESET} $1"; }
err() { echo -e "${C_RED}[ERREUR]${C_RESET} $1"; exit 1; }

# ------------------------------------------------------------
# 1. Vérification dossier BraveOps
# ------------------------------------------------------------
if [ ! -d "./BraveOps" ]; then
    err "Dossier BraveOps introuvable. Place ce script dans MantraLab/."
fi
log "Dossier BraveOps détecté ✔️"

# ------------------------------------------------------------
# 2. Installation Brave (Linux / Termux)
# ------------------------------------------------------------
install_brave_linux() {
    log "Installation Brave (Linux)…"
    sudo apt update -y
    sudo apt install -y curl apt-transport-https

    curl -fsS https://brave-browser-apt-release.s3.brave.com/brave-browser-archive-keyring.gpg \
        | sudo tee /usr/share/keyrings/brave-browser-archive-keyring.gpg >/dev/null

    echo "deb [signed-by=/usr/share/keyrings/brave-browser-archive-keyring.gpg] \
        https://brave-browser-apt-release.s3.brave.com/ stable main" \
        | sudo tee /etc/apt/sources.list.d/brave-browser-release.list

    sudo apt update -y
    sudo apt install -y brave-browser
}

install_brave_termux() {
    log "Installation Brave (Termux)…"
    pkg update -y
    pkg install -y x11-repo
    pkg install -y brave
}

if command -v apt >/dev/null 2>&1; then
    install_brave_linux
elif command -v pkg >/dev/null 2>&1; then
    install_brave_termux
else
    warn "OS non détecté. Installation Brave ignorée."
fi

log "Brave installé ✔️"

# ------------------------------------------------------------
# 3. Application du durcissement BraveOps
# ------------------------------------------------------------
BRAVE_CONFIG_DIR="$HOME/.config/BraveSoftware/Brave-Browser"
POLICY_DIR="/etc/brave/policies/managed"

log "Création des dossiers de configuration…"
mkdir -p "$BRAVE_CONFIG_DIR"
sudo mkdir -p "$POLICY_DIR"

log "Copie des fichiers de durcissement…"
cp ./BraveOps/brave-hardening.json "$BRAVE_CONFIG_DIR/" || warn "Impossible de copier brave-hardening.json"
sudo cp ./BraveOps/brave-policies.json "$POLICY_DIR/" || warn "Impossible de copier brave-policies.json"

log "Durcissement appliqué ✔️"

# ------------------------------------------------------------
# 4. Création des profils GitOps / OSINT / BlackOps
# ------------------------------------------------------------
log "Création des profils Brave…"

mkdir -p "$BRAVE_CONFIG_DIR/MantraLab-GitOps"
mkdir -p "$BRAVE_CONFIG_DIR/MantraLab-OSINT"
mkdir -p "$BRAVE_CONFIG_DIR/MantraLab-BlackOps"

echo "{}" > "$BRAVE_CONFIG_DIR/MantraLab-GitOps/Preferences"
echo "{}" > "$BRAVE_CONFIG_DIR/MantraLab-OSINT/Preferences"
echo "{}" > "$BRAVE_CONFIG_DIR/MantraLab-BlackOps/Preferences"

log "Profils créés ✔️"
log "BraveOPS terminé. Brave est maintenant durci pour MantraLab v3.0."
