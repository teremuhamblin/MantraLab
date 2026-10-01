/*
 * ============================================================
 *  MantraLab — sync.c (MIL‑PRO)
 *  Synchronisation du dépôt avec discipline
 *  Auteur : The MadDoG.tmdg
 * ============================================================
 */

#include <stdio.h>
#include <stdlib.h>

int main() {
    printf("🛡️ MantraLab — Synchronisation...\n");

    // Pull sécurisé
    printf("⚙️ Récupération des mises à jour...\n");
    if (system("git pull --rebase") != 0) {
        printf("❌ Échec du rebase sécurisé.\n");
        return 1;
    }

    // Vérification des conflits
    printf("⚙️ Vérification des conflits...\n");
    if (system("git diff --name-only --diff-filter=U") == 0) {
        printf("❌ Conflits détectés. Synchronisation stoppée.\n");
        return 1;
    }

    printf("✔️ Synchronisation réussie.\n");
    return 0;
}
