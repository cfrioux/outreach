% What is available in each bacterium's metabolism using its own reactions and the content of the environment

available(M, B) :- env(M), bacterium(B).
available(M, B) :- product(M, R), reaction(R, B), available(M2, B) : reactant(M2, R).

% what is available by considering shared metabolism

community_available (M) :- env(M).
community_available (M) :- product(M, R), reaction(R, _), community_available(M2) : reactant(M2, R).

% what is available only in community

community_avail_only(M) :- community_available(M), not available(M,_).

% We'll select a subset of bacterium from the set of all bacteria
{bacterium_select(B) : bacterium(B)}.

selected_community_available (M) :- env(M).
selected_community_available (M) :- product(M, R), reaction(R, B), bacterium_select(B), community_available(M2) : reactant(M2, R).

% All targets must be available with cooperation
:- target(M), not selected_community_available(M).

% Let's select a community of minimal size
#minimize{1, B: bacterium_select(B)}.

#show bacterium_select/1.
#show community_avail_only/1.