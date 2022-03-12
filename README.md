# ReadMe_Projet_M2_MSME_Refroidissement-plaque-plane-isotherme-par-jet-pulsée
Repository contenant les dossiers system, constant et 0 de chaque cas étudié du projet de M2 OpenFoam : Refroidissement d'une plaque plane par un jet d'air.
Dans chaque cas il y a un fichier texte qui explique les modifications et les apports

Le cas 1 correspond à une variante de la cavité entrainée (1er tuto OpenFoam cavity) (cf. le dossier associé à ce cas pour plus de détails)

Le cas 2 correspond à la configuration du projet. A savoir un bloc d'injection avec les conditions aux limites associées (cf. le dossier associé à ce cas pour plus de détails)

Le cas 3 correspond à une implémentation d'une condition aux limites de Poiseuille en entrée.

Le cas 4 correspond à une implémentation d'une équation d'advection-diffusion afin de modéliser les effets de températures.

Ces cas ont été pour nous une maniere didactique de nous familiariser avec OpenFoam. Dans les dossiers suivants le code à été optimisé de manière à passer le moins de temps dessus entre chaque cas.

Etude du jet :

Le dossier Convergence_maillage étudie quel maillage est le plus adapté à notre cas.

On déduie de l'étude précédente (convergence en maillage) notre cas de référence.

Le dossier Etude_Angle simule une injection avec differents angle d'incidence.

Le dossier Etude_distance simule une injection avec differentes distances entre l'injection et la plaque à refroidir.

Le dossier Etude_Reynolds simule une injection avec differents Reynolds dans la buse d'injection.
