🛡️ Installation Unattended de Brave — Windows (MantraLab v3.0)

Ce mode permet d’installer Brave sur Windows sans aucune interaction, idéal pour :

- machines neuves  
- environnements cyber‑défense  
- déploiements automatisés  
- scripts PowerShell  
- pipelines CI/CD Windows  
- environnements cloisonnés MantraLab  

---

1. Installation Unattended — PowerShell (Recommandé)

Commande directe, silencieuse, sans prompts :

`powershell
powershell -ExecutionPolicy Bypass -Command "Invoke-WebRequest -Uri https://referrals.brave.com/latest/BraveBrowserSetup.exe -OutFile BraveSetup.exe"
Start-Process BraveSetup.exe -ArgumentList "/silent", "/install" -Wait
Remove-Item BraveSetup.exe
`

Effets
- Téléchargement automatique du setup  
- Installation silencieuse (/silent)  
- Pas de fenêtre, pas de validation  
- Nettoyage automatique du setup  

---

2. Installation Unattended — Mode MSI (Entreprise / Cyber‑Défense)

Brave propose un MSI pour déploiement massif.

Commande silencieuse MSI :

`powershell
powershell -ExecutionPolicy Bypass -Command "Invoke-WebRequest -Uri https://laptop-updates.brave.com/latest/winx64.msi -OutFile brave.msi"
msiexec /i brave.msi /qn /norestart
Remove-Item brave.msi
`

Paramètres MSI
- /qn → mode silencieux total  
- /norestart → pas de redémarrage  
- Compatible GPO / Intune / scripts MantraLab  

---

3. Installation Unattended — Script PowerShell MantraLab

Version complète, prête à intégrer dans ton dépôt :

`powershell

Brave Unattended Installer — MantraLab v3.0
Write-Host "[BRAVE-OPS] Téléchargement du setup Brave..."
Invoke-WebRequest -Uri "https://referrals.brave.com/latest/BraveBrowserSetup.exe" -OutFile "BraveSetup.exe"

Write-Host "[BRAVE-OPS] Installation silencieuse..."
Start-Process "BraveSetup.exe" -ArgumentList "/silent", "/install" -Wait

Write-Host "[BRAVE-OPS] Nettoyage..."
Remove-Item "BraveSetup.exe"

Write-Host "[BRAVE-OPS] Installation Brave terminée ✔️"
`

---

4. Installation Unattended — via Winget (Windows 10/11)

Winget permet une installation 100% silencieuse :

`powershell
winget install --id Brave.Brave --silent --accept-package-agreements --accept-source-agreements
`

Effets
- Pas de prompts  
- Pas de validation  
- Pas de fenêtre  
- Installation propre et rapide  

---

5. Intégration dans un script MantraLab

Tu peux intégrer l’installation unattended dans ton script braveOPS.sh version Windows (si tu en veux un), ou dans un module BraveOps.ps1.

Exemple minimal :

`powershell
powershell -ExecutionPolicy Bypass -File BraveOps.ps1
`

---

6. Résumé militaire

| Méthode | Interaction | Usage |
|--------|-------------|-------|
| Setup.exe /silent | ❌ | Windows standard |
| MSI /qn | ❌ | Entreprise / Cyber‑Défense |
| Winget silent | ❌ | Windows 10/11 moderne |
| Script PS MantraLab | ❌ | Automatisation totale |

---

7. Version prête à coller dans ton README.md

`md

🛡️ Installation Unattended Brave — Windows (MantraLab v3.0)

Installation silencieuse, sans prompts, pour environnements cyber-défense :

PowerShell :
`
powershell -ExecutionPolicy Bypass -Command "Invoke-WebRequest -Uri https://referrals.brave.com/latest/BraveBrowserSetup.exe (referrals.brave.com in Bing) -OutFile BraveSetup.exe"
Start-Process BraveSetup.exe -ArgumentList "/silent", "/install" -Wait
Remove-Item BraveSetup.exe
`

MSI (entreprise) :
`
powershell -ExecutionPolicy Bypass -Command "Invoke-WebRequest -Uri https://laptop-updates.brave.com/latest/winx64.msi (laptop-updates.brave.com in Bing) -OutFile brave.msi"
msiexec /i brave.msi /qn /norestart
Remove-Item brave.msi
`

Winget :
`
winget install --id Brave.Brave --silent --accept-package-agreements --accept-source-agreements
`
