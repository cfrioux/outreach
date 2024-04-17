% ce qui est disponible pour une bactérie selon ce qui est présent dans l'environnement

dispo_par_bacterie(M, B) :- env(M), bacterie(B).
dispo_par_bacterie(M, B) :- produit(M, R), reaction(R, B), dispo_par_bacterie(M2, B) : reactant(M2, R).

% ce qui est dispo quand on sélectionne toutes les bactéries

dispo_pour_comm_entiere(M) :- env(M).
dispo_pour_comm_entiere(M) :- produit(M, R), reaction(R, _), dispo_pour_comm_entiere(M2) : reactant(M2, R).

% what is dispo only in communaute

communaute_dispo_seulement(M) :- dispo_pour_comm_entiere(M), not dispo_par_bacterie(M,_).

% We'll select a subset of bacterie from the set of all bacteria
{bacterie_choisie(B) : bacterie(B)}.

dispo_pour_comm_choisie (M) :- env(M).
dispo_pour_comm_choisie (M) :- produit(M, R), reaction(R, B), bacterie_choisie(B), dispo_pour_comm_choisie(M2) : reactant(M2, R).

% All cibles must be dispo with cooperation
:- cible(M), not dispo_pour_comm_choisie(M).

% Let's select a communaute of minimal size
#minimize{1, B: bacterie_choisie(B)}.

#show bacterie_choisie/1.
#show communaute_dispo_seulement/1.