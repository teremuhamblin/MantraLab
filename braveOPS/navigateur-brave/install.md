🛡️ Installation Unattended de Brave — Mode MantraLab v3.0

Ce mode permet d’installer Brave sans aucune interaction, sans prompts, sans validation utilisateur, pour automatiser les déploiements MantraLab (CI/CD, machines neuves, environnements isolés, Termux, VM, containers).

---

1. Installation Unattended — Linux (APT)

Commandes directes, silencieuses, sans prompts :

`bash
sudo apt update -y
sudo apt install -y curl apt-transport-https

curl -fsS https://brave-browser-apt-release.s3.brave.com/brave-browser-archive-keyring.gpg \
  | sudo tee /usr/share/keyrings/brave-browser-archive-keyring.gpg >/dev/null

echo "deb [signed-by=/usr/share/keyrings/brave-browser-archive-keyring.gpg] \
  https://brave-browser-apt-release.s3.brave.com/ stable main" \
  | sudo tee /etc/apt/sources.list.d/brave-browser-release.list >/dev/null

sudo apt update -y
sudo apt install -y brave-browser
`

Caractéristiques
- Aucun prompt  
- Aucun choix utilisateur  
- Aucun message bloquant  
- Installation 100% automatisée  
- Compatible CI/CD, scripts, VM, WSL, containers  

---

2. Installation Unattended — Termux (Android)

Commandes silencieuses :

`bash
pkg update -y
pkg install -y x11-repo
pkg install -y brave
`

Caractéristiques
- Installation directe  
- Aucun prompt  
- Compatible environnements mobiles MantraLab  

---

3. Installation Unattended — Mode MantraLab (Durcissement auto)

Tu peux combiner l’installation unattended avec un durcissement automatique via ton script braveOPS.sh :

Exécution silencieuse :

`bash
chmod +x braveOPS.sh
./braveOPS.sh >/dev/null 2>&1
`

Effets
- Installation Brave  
- Application des policies durcies  
- Copie des fichiers BraveOps  
- Création des profils GitOps / OSINT / BlackOps  
- Aucune interaction utilisateur  

---

4. Intégration dans un pipeline CI/CD

Exemple minimal :

`bash
steps:
  - name: Install Brave (Unattended)
    run: |
      sudo apt update -y
      sudo apt install -y curl apt-transport-https
      curl -fsS https://brave-browser-apt-release.s3.brave.com/brave-browser-archive-keyring.gpg \
        | sudo tee /usr/share/keyrings/brave-browser-archive-keyring.gpg >/dev/null
      echo "deb [signed-by=/usr/share/keyrings/brave-browser-archive-keyring.gpg] \
        https://brave-browser-apt-release.s3.brave.com/ stable main" \
        | sudo tee /etc/apt/sources.list.d/brave-browser-release.list >/dev/null
      sudo apt update -y
      sudo apt install -y brave-browser
`

Usage
- Déploiement automatisé  
- Tests OSINT automatisés  
- Pipelines GitOps durcis  
- Environnements reproductibles  

---

5. Résumé militaire

| Mode | Interaction | Usage |
|------|-------------|-------|
| APT unattended | ❌ | Serveurs, VM, CI/CD |
| Termux unattended | ❌ | Android, OSINT mobile |
| braveOPS.sh unattended | ❌ | Durcissement automatique |
| CI/CD unattended | ❌ | Pipelines MantraLab |

---
