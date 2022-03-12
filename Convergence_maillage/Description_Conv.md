Le rapport d’aspect R = dx (n) / dx (1) et le nombre de mailles a été calculé (pour les blocs latéraux) pour une taille de maille dx donnée.
Résultats comparés pour le régime établi.
cf. le code Matlab Smoothness.m

Cas 1 :
Simulation pour une taille de maille dx = 1 mm. (10 mailles)
Au début on voulait 100 mailles dans l’injection, mais compte tenu de l’écoulement (jet laminaire stable et profil connu) cela paraissait excessif.
10 mailles semblent donc un bon point de départ.

Cas 2 :
Simulation pour une taille de maille dx = 0,5 mm. (20 mailles)
On a simplement divisé les tailles de mailles par deux.
L’analyse des résultats (cf get_data.m) ne nous montre pas de différence sur le profil de vitesse.

Cas 3 :
Simulation pour une taille de maille dx = 2 mm. (5 mailles)
On a simplement multiplié les tailles de mailles par deux par rapport au cas 1.
L’analyse des résultats (cf get_data.m) nous montre des différences sur le profil de vitesse.

Cas 4 :
Simulation pour une taille de maille dx = 2,5 mm. (4 mailles)
Ne sachant comment ParaView estimait les données sur une demi-maille (probablement une interpolation),
on a effectué ce calcul supplémentaire pour que le centre d’injection tombe pile sur une maille.
L’analyse des résultats (cf get_data.m) nous montre des différences semblables au cas 3 sur le profil de vitesse.

Le cas 1 sera retenu, le cas deux n’apportant rien si ce n’est du temps de calcul supplémentaire.
