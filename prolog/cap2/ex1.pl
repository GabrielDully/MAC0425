% pais(Nome, Area, Populacao)

pais(brasil,9,130).
pais(china,12,1800).
pais(eua,9,230).
pais(india,3,450).

dens(P, D) :- pais(P, A, Pop), D is Pop/A.

% a) Qual adensidade demográfica de cada um dos países?
% dens(brasil, D).
% dens(china, D).
% dens(eua, D).
% dens(india, D).
% dens(P, D).


% b) Se a Índia é mais populosa que a China.
mais_populoso(P1,P2) :- pais(P1,_,Pop1), pais(P2,_,Pop2), Pop1 > Pop2. % mais_populoso(india,china).