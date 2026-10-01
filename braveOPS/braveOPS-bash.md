🛡️ Résumé des scripts BraveOps — MantraLab v3.0

1. braveOPS.sh — Installation & Durcissement Brave
Script d’infrastructure chargé d’installer Brave et d’appliquer le durcissement MantraLab v3.0.  
Il configure le navigateur pour les opérations cyber‑défense et crée trois profils tactiques.

Fonctions principales :
- Installation Brave (Linux / Termux)  
- Application du durcissement (policies + hardening JSON)  
- Création des profils : GitOps, OSINT, BlackOps  
- Mise en place d’un environnement navigateur sécurisé et cloisonné  

Rôle : Préparer Brave pour les opérations MantraLab.  
Type : INFRA / Setup.

---

2. braveOPS-launcher.sh — Lancement des Profils Durcis
Script opérationnel permettant de lancer Brave avec un profil spécifique selon la mission.  
Il n’installe rien : il utilise les profils durcis créés par braveOPS.sh.

Profils disponibles :
- GitOps → développement, GitHub, CI/CD  
- OSINT → collecte, anonymisation, WebRTC off  
- BlackOps → mode furtif, incognito, extensions désactivées  

Fonctions principales :
- Menu militaire interactif  
- Lancement propre du profil choisi  
- Options tactiques (incognito, no‑extensions, anti‑leak)  

Rôle : Exploiter Brave durci en mode opérationnel.  
Type : OPÉRATION / Usage.

---

Synthèse militaire
| Script | Fonction | Type |
|--------|----------|------|
| braveOPS.sh | Installation + durcissement Brave | INFRA |
| braveOPS-launcher.sh | Lancement des profils durcis | OPÉRATION |

---
