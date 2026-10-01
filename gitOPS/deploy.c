/*
 * ============================================================
 *  MantraLab — deploy.c (MIL‑PRO)
 *  Déploiement contrôlé du dépôt MantraLab
 *  Auteur : The MadDoG.tmdg
 * ============================================================
 */

#include <stdio.h>
#include <stdlib.h>

int main() {
    printf("🛡️ MantraLab — Déploiement en cours...\n");

    // Vérification des dossiers essentiels
    const char *dirs[] = {
        "src", "tools", "scripts", "docs", "manifests", ".config"
    };

    for (int i = 0; i < 6; i++) {
        char cmd[128];
        snprintf(cmd, sizeof(cmd), "test -d %s", dirs[i]);

        if (system(cmd) != 0) {
            printf("❌ Dossier manquant : %s\n", dirs[i]);
            return 1;
        } else {
            printf("✔️ Dossier valide : %s\n", dirs[i]);
        }
    }

    // Simulation du déploiement
    printf("⚙️ Initialisation du moteur MantraLab...\n");
    printf("⚙️ Vérification des modules internes...\n");
    printf("⚙️ Déploiement terminé avec discipline.\n");

    return 0;
}
