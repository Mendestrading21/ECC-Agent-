# ECC-Agent — plan d'exploitation et de valeur

**Version : 10 novembre 2026 · Statut : proposition stratégique à valider par l'usage.**

Dépôt : [Mendestrading21/ECC-Agent-](https://github.com/Mendestrading21/ECC-Agent-) · Visibilité observée : publique.

Base documentaire : branche `claude/ecc-repo-copy-6g1srf`, commit [847e7f649490](https://github.com/Mendestrading21/ECC-Agent-/commit/847e7f6494900ef9b9ea0569269f7e2db6d38071), daté du 2026-09-04. Cette date est celle du code audité ; le plan est daté du 10 novembre 2026.

**Mode de lecture :** les constats sont reliés aux sources ; les tarifs, seuils, budgets et développements futurs sont des propositions. Aucune métrique de clients ou de revenus n'est inventée. Aucun engagement de dépense, lancement commercial ou déploiement applicatif n'est pris par ce document.

Version de travail du 10 novembre 2026. Périmètre : dépôt `Mendestrading21/ECC-Agent-`, branche par défaut observée `claude/ecc-repo-copy-6g1srf`. HEAD inspecté : `847e7f6494900ef9b9ea0569269f7e2db6d38071` (4 septembre 2026). Proposition stratégique sans engagement de dépense.

## 1. Décision proposée

Utiliser ECC-Agent- comme **outillage interne de production et de contrôle qualité** pour les applications du portefeuille. Sa valeur doit être démontrée par des livraisons plus fiables et du temps réellement économisé. Ne pas lui attribuer un chiffre d'affaires autonome avant d'avoir identifié une offre originale, un acheteur et une prestation reproductible.

Problème ciblé : retrouver les bonnes instructions, éviter les installations redondantes, préparer les contrôles, relire les changements et reprendre une mission sans perdre son contexte.

## 2. Ce que le dépôt permet d'affirmer

| Élément | Observation | Limite |
|---|---|---|
| Origine | `package.json` nomme `ecc-universal`, Affaan Mustafa et `affaan-m/ECC` [S1] | Le dépôt hébergé sous Mendestrading21 ne démontre pas la propriété de tout le logiciel |
| Licence | Le fichier LICENSE porte une licence MIT et le copyright 2026 Affaan Mustafa [S2] | Conserver les mentions requises ; vérifier séparément dépendances, marques et actifs |
| Bibliothèque | Agents, règles, compétences, hooks et installateurs sont présents ; AGENTS décrit leur usage [S3] | Les décomptes documentaires ne prouvent ni utilisation locale ni fiabilité |
| Interface | `ecc_dashboard.py` contient une interface Tkinter qui parcourt agents, compétences, commandes et règles [S4] | Aucune exécution de cette interface n'a été effectuée pour ce dossier |
| Origine de l'interface | Un fichier de même rôle existe aussi dans le dépôt amont [S5] | Sa présence locale ne permet pas de revendiquer une création spécifique |
| Offre commerciale amont | README et documentation de sponsoring parlent des services et de l'écosystème ECC [S6–S7] | Clients, installations, audience et revenus amont ne sont pas ceux de ce dépôt |

L'état courant contient une divergence documentaire : `package.json` annonce 2.2.1, tandis que `WORKING-CONTEXT.md`, daté du 8 avril, décrit encore 1.10.0 et une branche `main` [S1, S8]. Ces notes sont historiques pour cette analyse. Aucun paiement, client externe, installation locale ni résultat de test actuel n'a été vérifié.

## 3. Produit interne et différenciation

La valeur propre à construire n'est pas la taille du catalogue. C'est un petit ensemble de parcours adaptés aux dépôts réellement maintenus : préparation d'une tâche, inspection des modifications, contrôle ciblé, revue, livraison documentée.

Chaque parcours doit préciser son entrée, les permissions nécessaires, ses fichiers de sortie et sa condition d'arrêt. Deux parcours proposés : transformer une anomalie reproductible en correctif vérifié ; préparer une livraison documentaire sans modifier le code.

L'alternative de référence est une configuration simple avec instructions locales et commandes de vérification existantes. ECC doit battre cette solution sur le temps humain et les erreurs, pas uniquement produire davantage de texte. Les instructions spécialisées de chaque application restent prioritaires pour ses règles métier.

## 4. Périmètre à construire

1. **Inventaire utile** : documenter les composants effectivement utilisés, leur origine, version et raison d'être. Ne pas activer tout le catalogue.
2. **Profils par projet** : sélectionner un nombre limité de compétences et contrôles ; éviter les règles contradictoires entre applications.
3. **Reprise de mission** : conserver problème, état réel, prochaine action et preuves dans les documents du projet.
4. **Mesure des coûts** : relever temps humain, appels aux modèles lorsqu'ils sont mesurables, reprises et incidents.
5. **Maintenance** : appliquer les mises à jour amont par lots revus et réversibles, avec un inventaire des différences locales.

Une refonte esthétique du dashboard, une plateforme hébergée pour clients et une automatisation sans surveillance ne font pas partie du premier lot. Aucun nouvel abonnement n'est nécessaire pour rédiger ce plan.

## 5. Modèle économique interne

Les chiffres suivants sont **des hypothèses de calcul**, pas des prix fournisseurs ni des économies observées. Valorisation du temps : 50 CHF/heure. Coût mensuel supplémentaire supposé : 100 CHF. Mise en place initiale : 20 heures, soit 1 000 CHF de coût économique.

| Scénario mensuel | Heures brutes évitées | Maintenance | Heures nettes | Valeur nette du temps | Après dépenses supplémentaires |
|---|---:|---:|---:|---:|---:|
| Prudent | 4 h | 3 h | 1 h | 50 CHF | −50 CHF |
| Central | 10 h | 3 h | 7 h | 350 CHF | 250 CHF |
| Expansion | 20 h | 4 h | 16 h | 800 CHF | 700 CHF |

Formule : `(heures évitées − maintenance) × valeur horaire − dépenses supplémentaires`. Le scénario central rembourse économiquement les 1 000 CHF initiaux en quatre mois de fonctionnement stabilisé. Ce n'est pas un encaissement : les heures récupérées ne deviennent du revenu que si elles permettent une vente ou évitent une dépense réelle. Avec deux mois de mise en place puis dix mois au scénario central, le résultat économique annuel indicatif est de 1 500 CHF après investissement initial. Il faut déduire aussi les frais non inclus et les régressions éventuelles.

Le seuil opérationnel, hors investissement initial, est de deux heures nettes économisées par mois avec ces hypothèses. Maintenir ECC seulement si le gain reste positif sur plusieurs cycles comparables.

## 6. Commercialisation éventuelle

Une offre de service pourrait viser de petites équipes qui ont déjà des dépôts et des assistants de développement mais rencontrent des difficultés d'installation, de reprise ou de qualité. La prestation vendrait un diagnostic, une configuration ciblée, une formation et une transmission documentée. Elle devrait présenter explicitement sa dépendance au projet open source amont, sans suggérer d'affiliation officielle.

Test proposé après validation interne : trois entretiens puis un pilote à périmètre fixe. Hypothèse de prix à tester : 900 CHF pour six heures de réalisation et deux heures de support inclus. À 50 CHF/heure et 50 CHF de coûts directs, la contribution économique serait de 450 CHF avant acquisition, administration et fiscalité. Ce tarif ne constitue ni prix de marché ni offre publiée.

Ne pas ouvrir une maintenance illimitée : définir les versions, plateformes, délais et exclusions. Aucun abonnement ou revenu récurrent n'entre dans le scénario de base. Les formules de sponsoring décrites dans la documentation ECC concernent l'amont et ne doivent pas être reprises comme revenus acquis.

## 7. Exécution sur 90 jours

| Période | Livrable | Critère de passage |
|---|---|---|
| J1–J14 | Origines, versions, différences locales et installation de référence documentées | Un environnement choisi, sans double installation, restaurable |
| J15–J30 | Deux parcours pilotes et relevé de dix tâches représentatives | Temps et résultat avant/après enregistrés ; erreurs classées |
| J31–J60 | Deux profils de projet et procédure de reprise | Aucun affaiblissement des contrôles métier ; gain net observable |
| J61–J90 | Bilan coûts/qualité et décision de maintien | Gain positif sur deux cycles ; sinon simplification ou arrêt |

Rôles proposés : responsable de l'outillage, responsable du dépôt pilote et relecteur sécurité.

## 8. Jalons à douze mois et indicateurs

Mois 1–3 : prouver l'utilité sur deux parcours. Mois 4–6 : étendre uniquement aux projets dont le besoin est démontré. Mois 7–9 : étudier un pilote externe si la maintenance interne est stable. Mois 10–12 : décider de poursuivre comme outil interne, de proposer un service limité ou de revenir à une configuration plus simple.

Mesurer le délai médian entre demande et livraison acceptée, les minutes de supervision, le taux de reprise, les incidents attribuables aux hooks, le coût par tâche acceptée et le temps d'une mise à jour. Ne pas utiliser le nombre d'agents, de compétences ou de commits comme preuve de valeur commerciale.

## 9. Risques et prochaine action

Les principaux risques sont la confusion avec la marque amont, la maintenance d'une copie devenue divergente, les permissions excessives, les instructions contradictoires et une dépense d'IA supérieure au gain de temps. Prévoir attribution explicite, permissions minimales, mises à jour revues, restauration documentée et plafond de dépenses.

**Prochaine action :** choisir un dépôt pilote et relever dix tâches récentes avec leur durée, leurs reprises et leur coût. Ce relevé décidera quels composants ECC méritent d'être conservés. Le plan est documenté ; son exécution, les tests du produit et sa validation économique restent à réaliser.

## Sources inspectées

- [S1 — package.json](https://github.com/Mendestrading21/ECC-Agent-/blob/847e7f6494900ef9b9ea0569269f7e2db6d38071/package.json)
- [S2 — LICENSE](https://github.com/Mendestrading21/ECC-Agent-/blob/847e7f6494900ef9b9ea0569269f7e2db6d38071/LICENSE)
- [S3 — AGENTS.md](https://github.com/Mendestrading21/ECC-Agent-/blob/847e7f6494900ef9b9ea0569269f7e2db6d38071/AGENTS.md)
- [S4 — Interface locale](https://github.com/Mendestrading21/ECC-Agent-/blob/847e7f6494900ef9b9ea0569269f7e2db6d38071/ecc_dashboard.py)
- [S5 — Interface dans le dépôt amont](https://github.com/affaan-m/ECC/blob/main/ecc_dashboard.py)
- [S6 — README](https://github.com/Mendestrading21/ECC-Agent-/blob/847e7f6494900ef9b9ea0569269f7e2db6d38071/README.md)
- [S7 — Sponsoring amont](https://github.com/Mendestrading21/ECC-Agent-/blob/847e7f6494900ef9b9ea0569269f7e2db6d38071/docs/business/metrics-and-sponsorship.md)
- [S8 — Notes historiques](https://github.com/Mendestrading21/ECC-Agent-/blob/847e7f6494900ef9b9ea0569269f7e2db6d38071/WORKING-CONTEXT.md)
