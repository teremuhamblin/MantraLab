# CHANGELOG — MantraLab v2.9
Plateforme CyberDéfense — The MadDoG.tmdg  
Historique des évolutions, améliorations, correctifs et opérations GitOps.

---

## [2.9.0] — Stabilisation SLSA + GitOps
### Ajouts
- Intégration complète du workflow SLSA Generic Generator.
- Ajout du pack GitOps (deploy.c, audit.c, sync.c).
- Mise en place du Makefile militaire pour compilation centralisée.
- Ajout du manuel opérationnel dans `docs/manual.md`.
- Ajout des bots contributeurs : Dependabot, Renovate, GitHub Actions, Semantic‑Release.
- Ajout du workflow `mantralab-auto-ops.yml` pour opérations automatisées.
- Ajout du workflow `release.yml` pour versioning automatisé.

### Modifications
- Réorganisation de la structure du dépôt pour conformité MDL‑1.0.
- Mise à jour du README principal avec architecture militaire.
- Normalisation des dossiers : `.gitops/ops/`, `bin/`, `docs/`, `src/`.
- Amélioration des scripts d’audit et de synchronisation.

### Correctifs
- Correction des chemins relatifs dans les scripts GitOps.
- Correction des permissions GitHub Actions pour publication de release.
- Correction des incohérences dans la documentation interne.

---

## [2.8.0] — Consolidation des modules internes
### Ajouts
- Ajout des modules internes dans `.gitops/ops/`.
- Ajout des procédures d’audit renforcées.
- Ajout des premières règles de conformité MDL‑1.0.

### Modifications
- Mise à jour du README pour refléter la nouvelle architecture.
- Renforcement des scripts de synchronisation.

### Correctifs
- Correction des erreurs de compilation dans les modules C.
- Correction des chemins de documentation.

---

## [2.7.0] — Préparation SLSA
### Ajouts
- Ajout des premiers workflows GitHub Actions.
- Ajout des premières procédures de déploiement automatisé.

### Modifications
- Réorganisation des dossiers internes.
- Mise à jour des scripts d’analyse.

### Correctifs
- Correction des erreurs de dépendances.
- Correction des scripts de diagnostic.

---

## Historique antérieur
Les versions antérieures à 2.7.0 ont été consolidées dans la documentation interne et ne sont plus maintenues publiquement.

---

## Format des commits
- `feat:` ajout fonctionnel
- `fix:` correctif
- `docs:` documentation
- `ops:` opérations GitOps / AutoOps
- `sec:` sécurité / conformité MDL‑1.0
- `refactor:` restructuration interne
- `chore:` maintenance
