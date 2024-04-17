% les bacteries

bacterie(bleue).
bacterie(verte).
bacterie(jaune).

% les reseaux métaboliques

% Bleue
reaction(r8, bleue).
reactant(a, r8).
produit(d, r8).

reaction(r4, bleue).
reactant(c, r4).
produit(f, r4).

reaction(r5, bleue).
reactant(f, r5).
produit(t2, r5).

% Verte
reaction(r1, verte).
reactant(e, r1).
reactant(f, r1).
produit(g, r1).

reaction(r3, verte).
reactant(c, r3).
reactant(d, r3).
produit(e, r3).

reaction(r10, verte).
reactant(a, r10).
reactant(b, r10).
produit(c, r10).

reaction(r9, verte).
reactant(g, r9).
produit(t1, r9).

% Jaune
reaction(r2, jaune).
reactant(f, r2).
reactant(g, r2).
produit(t2, r2).

reaction(r6, jaune).
reactant(a, r6).
produit(f, r6).

reaction(r7, jaune).
reactant(b, r7).
produit(g, r7).

% l'environnement
env(a).
env(b).

% les cibles à produire
cible(t1).
cible(t2).