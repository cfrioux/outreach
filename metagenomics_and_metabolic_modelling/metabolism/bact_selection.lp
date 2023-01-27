% What is available in each bacterium's metabolism using its own reactions and the content of the environment

available(M, B) :- env(M), bacterium(B).
available(M, B) :- product(M, R), reaction(R, B), available(M2, B) : reactant(M2, R).

% #show available/2.

% We'll select a subset of bacterium from the set of all bacteria
{bacterium_select(B) : bacterium(B)}.

% We compute the putative exchanges between bacteria that are selected

exchange(M, B1, B2) :- available(M, B1), not available(M, B2), reactant(M, R), reaction(R, B2), bacterium_select(B1), bacterium_select(B2).

% What is available in each bacterium's metabolism using its own reactions and the content of the environment together with what it can receive from other bacteria
available_cooperation(M, B) :- exchange(M, _, B), bacterium_select(B).
available_cooperation(M, B) :- env(M), bacterium_select(B).
available_cooperation(M, B) :- product(M, R), reaction(R, B), bacterium_select(B), available_cooperation(M2, B) : reactant(M2, R).

% What is available with cooperation and was no before 
newly_available(M, B) :- available_cooperation(M, B), not available(M, B).

% #show exchange/3.

#show newly_available/2.
% #show available_cooperation/2.

% All targets must be available with cooperation
:- target(M), not available_cooperation(M, _).

% Let's select a community of minimal size
#minimize{1, B: bacterium_select(B)}.

#show bacterium_select/1.