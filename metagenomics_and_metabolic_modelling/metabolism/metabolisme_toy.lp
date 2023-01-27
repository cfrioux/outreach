% les bacteries

bacterium(bleue).
bacterium(verte).
bacterium(jaune).

% les reseaux métaboliques

% Bleue
reaction(r8, bleue).
reactant(a, r8).
product(d, r8).

reaction(r4, bleue).
reactant(c, r4).
product(f, r4).

reaction(r5, bleue).
reactant(f, r5).
product(t2, r5).

% Verte
reaction(r1, verte).
reactant(e, r1).
reactant(f, r1).
product(g, r1).

reaction(r3, verte).
reactant(c, r3).
reactant(d, r3).
product(e, r3).

reaction(r10, verte).
reactant(a, r10).
reactant(b, r10).
product(c, r10).

reaction(r9, verte).
reactant(g, r9).
product(t1, r9).

% Jaune
reaction(r2, jaune).
reactant(f, r2).
reactant(g, r2).
product(t2, r2).

reaction(r6, jaune).
reactant(a, r6).
product(f, r6).

reaction(r7, jaune).
reactant(b, r7).
product(g, r7).

% l'environnement
env(a).
env(b).

% les cibles à produire
target(t1).
target(t2).