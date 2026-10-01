# 🛠️ Tools — MantraLab v3.0

Dossier regroupant les outils opérationnels utilisés par MantraLab v3.0 pour
l’automatisation, le durcissement, le diagnostic et le support cyber‑défense.

## 📁 Structure
- `scripts/` — scripts Bash/PowerShell opérationnels
- `templates/` — modèles réutilisables pour générer des modules ou outils
- `utils/` — outils techniques complémentaires (hashing, logs, checks)
- `brave/` — outils dédiés au module BraveOps (installation, durcissement, lancement)

## 🎯 Objectifs
- Automatiser les tâches répétitives
- Standardiser les opérations MantraLab
- Fournir des outils minimalistes, rapides, militaires
- Centraliser les scripts pour GitOps, OSINT, BlackOps

## ⚙️ Outils inclus
- `braveOPS.sh` — installation + durcissement Brave
- `braveOPS-launcher.sh` — lancement des profils GitOps / OSINT / BlackOps
- `check-env.sh` — vérification environnement MantraLab
- `hash-file.sh` — calcul d’empreintes SHA256/SHA512
- `log-ops.sh` — logger militaire minimaliste
- `template-module.sh` — générateur de module MantraLab

## 🧩 Format
Tous les outils sont :
- minimalistes  
- commentés  
- compatibles Linux / Termux / Windows (via PS)  
- orientés cyber‑défense
