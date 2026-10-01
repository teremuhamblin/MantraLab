```text
docs/manual.md
```

📘 MANTRALAB — MANUEL STRUCTURE + PROCÉDURES (v2.9)

(Dossier : docs/manual.md)

`markdown

🛡️ MANTRALAB — MANUEL STRUCTURE & PROCÉDURES

Version : 2.9 — Défense Totale

Auteur : The MadDoG.tmdg

Licence : MantraLab‑1.0

---

1. 🎯 OBJECTIF DU MANUEL
Ce manuel fournit :
- La structure complète du projet MantraLab  
- Les procédures disciplinaires pour l’exploitation, la maintenance et la défense du dépôt  
- Les règles militaires pour les modules, scripts, workflows et artefacts  
- Les protocoles de sécurité (SLSA, MDL‑1.0, gitOPS)

Ce document est destiné aux opérateurs, analystes, développeurs et cyber‑défenseurs utilisant MantraLab.

---

2. 🧩 STRUCTURE DU DÉPÔT

`text
MANTRALAB/
│
├── git/                → Discipline du dépôt
├── gitOPS/             → Automatisation & procédures
├── .config/            → Configuration interne
│
├── src/                → Moteur de recherche
│   ├── core/           → Indexation, analyse
│   ├── api/            → Interfaces
│   └── ui/             → Interface utilisateur
│
├── tools/              → Outils OSINT, network, forensic
│   ├── osint/
│   ├── network/
│   └── forensic/
│
├── scripts/            → Scripts Python, Bash, PowerShell, C
│
├── docs/               → Documentation, procédures, playbooks
│
└── manifests/          → Manifestes, MDL‑1.0, métadonnées
`

---

3. 🛡️ PROCÉDURES OPÉRATIONNELLES

3.1. 🔧 Procédure d’installation
`bash
git clone https://github.com/teremuhamblin/MantraLab.git
cd MantraLab
`

Vérification initiale
- [x] Présence du Makefile  
- [x] Présence des dossiers disciplinaires  
- [x] Présence des manifestes MDL‑1.0  
- [x] Présence du workflow SLSA  

---

3.2. 🧱 Procédure de compilation (scripts C)
`bash
make all
`

Résultats attendus :
- [x] deploy  
- [x] audit  
- [x] sync  

---

3.3. 🧪 Procédure d’analyse OSINT
`bash
tools/osint/<module>.sh --target <cible>
`

Checklist :
- [x] Définir la cible  
- [x] Activer les filtres OSINT  
- [x] Exporter les résultats  
- [x] Archiver dans docs/reports/  

---

3.4. 🌐 Procédure d’analyse réseau
`bash
tools/network/scan.sh --mode deep
`

Modes :
- quick  
- deep  
- stealth  

---

3.5. 🧬 Procédure forensic
`bash
tools/forensic/dump.sh --device <id>
`

Étapes :
- [x] Acquisition  
- [x] Analyse  
- [x] Extraction  
- [x] Rapport  

---

4. 🛡️ PROCÉDURES GITOPS

4.1. 🔄 Synchronisation disciplinée
`bash
scripts/sync.sh
`

Checklist :
- [x] Vérification des branches  
- [x] Vérification des commits  
- [x] Vérification des métadonnées  
- [x] Vérification des manifestes  

---

4.2. 🚀 Procédure de déploiement
`bash
scripts/deploy.sh
`

Étapes :
- [x] Préparation  
- [x] Validation  
- [x] Déploiement  
- [x] Génération provenance SLSA  

---

4.3. 🛡️ Procédure d’audit
`bash
scripts/audit.sh
`

Audit couvre :
- Structure  
- Modules  
- Scripts  
- Manifestes  
- Workflow SLSA  
- Conformité MDL‑1.0  

---

5. 🔐 PROCÉDURES SÉCURITÉ

5.1. 🛡️ SLSA — Supply Chain Security
Workflow :  
.github/workflows/mantralab-slsa-provenance.yml

Étapes :
- [x] Checkout complet  
- [x] Build modules  
- [x] Génération provenance  
- [x] Upload artefacts  

Fichier généré :
`
provenance.json
`

---

5.2. 📜 MDL‑1.0 — Licence MantraLab
Règles :
- [x] Interdiction de redistribution non autorisée  
- [x] Interdiction de modification des modules critiques  
- [x] Obligation de conserver les disclaimers  
- [x] Obligation de conserver les métadonnées  

---

5.3. 🔐 Procédure de durcissement
- [x] Vérifier les permissions GitHub Actions  
- [x] Vérifier les secrets  
- [x] Vérifier les workflows  
- [x] Vérifier les scripts exécutables  
- [x] Vérifier les manifestes  

---

6. 📚 PLAYBOOKS OPÉRATIONNELS

6.1. 🔎 Playbook OSINT
- Identifier la cible  
- Activer les modules OSINT  
- Collecter les données  
- Filtrer les sources  
- Exporter les résultats  

6.2. 🌐 Playbook Réseau
- Scanner la cible  
- Identifier les ports  
- Détecter les services  
- Analyser les vulnérabilités  
- Générer un rapport  

6.3. 🧬 Playbook Forensic
- Acquisition  
- Analyse  
- Extraction  
- Archivage  

---

7. 🧨 ANNEXES

7.1. Schéma ASCII
```text
MANTRALAB/
├── src/
│   ├── core/
│   ├── api/
│   └── ui/
├── tools/
│   ├── osint/
│   ├── network/
│   └── forensic/
├── scripts/
├── docs/
└── manifests/
```

---

8. 🛡️ CONCLUSION
Ce manuel constitue la base opérationnelle de MantraLab v2.9.  
Il garantit :
- Discipline  
- Sécurité  
- Traçabilité  
- Cohérence  
- Robuste
