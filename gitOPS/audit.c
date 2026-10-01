/*
 * ============================================================
 *  MantraLab — audit.c (MIL‑PRO/ADVANCED)
 *  Audit du dépôt : sécurité, conformité, discipline
 *  Auteur : The MadDoG.tmdg
 * ============================================================
 */

#include <stdio.h>
#include <stdlib.h>

int main() {
    printf("🛡️ MantraLab — Audit du dépôt...\n");

    // Vérification des fichiers sensibles
    const char *forbidden[] = {
        "*.key", "*.secret", "*.env", "*.pcap", "*.dump"
    };

    for (int i = 0; i < 5; i++) {
        char cmd[256];
        snprintf(cmd, sizeof(cmd), "git ls-files | grep -E \"%s\"", forbidden[i]);

        if (system(cmd) == 0) {
            printf("❌ Fichier interdit détecté : %s\n", forbidden[i]);
            return 1;
        }
    }

    // Vérification de la signature des commits
    printf("⚙️ Vérification des signatures...\n");
    if (system("git log --pretty=format:'%s' | grep -q 'Signed-off-by:'") != 0) {
        printf("❌ Commits non signés détectés.\n");
        return 1;
    }

    printf("✔️ Audit terminé : conformité totale.\n");
    return 0;
}
