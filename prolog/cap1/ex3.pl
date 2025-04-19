pai(naruto,boruto).
pai(naruto,himawari).
pai(sasuke,sarada).
mae(hinata,boruto).
mae(hinata,himawari).
mae(sakura,sarada).

% a) Todo mundo que tem filho é feliz.
tem_filho(X) :- pai(X,Y).
tem_filho(X) :- mae(X,Y).

feliz(X) :- tem_filho(X).

% b) Um casal é formado por duas pessoas que têm filhos em comum (definição).
casal(X,Y) :- pai(X,Z), mae(Y,Z).
casal(X,Y) :- pai(Y,Z), mae(X,Z).