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

% feliz(X) :- tem_filho(X, _).

% b) Um casal é formado por duas pessoas que têm filhos em comum (definição).
casal(X,Y) :- pai(X,Z), mae(Y,Z).
casal(X,Y) :- pai(Y,Z), mae(X,Z).

% casal(X,Y) :-
%     tem_filho(X,F),
%     tem_filho(Y,F),
%     X \= Y.