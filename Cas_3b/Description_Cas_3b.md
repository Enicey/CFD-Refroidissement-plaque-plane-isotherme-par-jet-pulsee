Ce cas corrige l’erreur présente dans le cas 3a, à savoir que le profil calculé n’était pas un profil de poiseuille.
L’erreur était due au fait que abs(x) renvoyait systématiquement 0 (probablement une erreur de paquage).
Le terme abs(x) a été remplacé par sqrt(x*x), qui lui fonctionne.
Pour s’en convaincre, les trois lignes de code suivantes ont été ajoutées afin d’afficher les données :

cout << "x = " << x << "\n" << endl;
cout << "x = " << abs(x) << "\n" << endl;
cout << "x = " << sqrt(x*x) << "\n" << endl;

On en a profité pour changer le blockMeshDict afin que le repère soit centré en milieu de sortie de buse.
