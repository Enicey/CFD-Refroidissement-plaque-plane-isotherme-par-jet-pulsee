Le rapport d'aspect R = dx(n) / dx(1) et le nombre de maille a été calculé (pour les blocks latéraux) pour une taille de maille dx donnée.
cf. le code Matlab Smoothness.m

Cas 1 :
Simulation pour une taille de maille dx = 1 mm. (10 mailles)
Au début on voulais 100 mailles dans l'injection mais compte tennu de l'écoulement (jet laminaire stable) cela paraissait exessif.
10 mailles nous paraissait donc un bon point de départ.

Cas 2 :
Simulation pour une taille de maille dx = 0.5 mm. (20 mailles)
On a simplement divisé les tailles de mailles par deux.
L'analyse des résultats (cf get_data.m) ne nous montre pas de difference probante sur le profile de vitesse.

Cas 3 :
Simulation pour une taille de maille dx = 2 mm. (5 mailles)
On a simplement multiplié les tailles de mailles par deux par rapport au cas 1.
L'analyse des résultats (cf get_data.m) nous montre des differences sur le profile de vitesse.

Cas 4 :
Simulation pour une taille de maille dx = 2.5 mm. (4 mailles)
Ne sachant comment ParaView estimait les données sur une demi maille (probablement une interpolation)
on a éffectué ce calcule supplémentaire pour que le centre d'injection tombe pile sur une maille.
L'analyse des résultats (cf get_data.m) nous montre des differences semblable au cas 3 sur le profile de vitesse.

Le cas 1 sera retenu, le cas deux n'apportant rien si ce n'est du temps de calcul supplémentaire.
