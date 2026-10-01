MantraLab — Discipline Git
==========================

Ce dossier représente la zone interne de Git utilisée par MantraLab pour
maintenir une discipline stricte des commits, des branches et des métadonnées.

```text
.git/
│
└── README.rst
```

Objectifs
---------
- Assurer une cohérence totale des commits via COMMIT_TEMPLATE.txt
- Garantir la conformité aux règles de sécurité MantraLab
- Centraliser les informations internes liées au contrôle de version

Règles de discipline
--------------------
- Tous les commits doivent respecter le format militaire défini dans
  COMMIT_TEMPLATE.txt.
- Aucun fichier temporaire, cache ou artefact ne doit être ajouté au dépôt.
- Les branches doivent être nommées selon les modules :
  * core/...
  * tools/...
  * scripts/...
  * docs/...
  * manifests/...
  * config/...

Signature
---------
Tous les commits doivent être signés :

Signed-off-by: The MadDoG.tmdg <mantralab@local>

Auteur
------
The MadDoG.tmdg
MantraLab Defense Division
