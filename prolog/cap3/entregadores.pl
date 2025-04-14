entrega(joao, centro).
entrega(joao, vila_maria).
entrega(maria, centro).
entrega(maria, jardins).
entrega(pedro, vila_maria).

% Seleciona o primeiro entregador de um bairro.
melhor_entregador(X,Y) :-
    entrega(Y,X), !.

% Seleciona todos os entregadores de um bairro retroativamente.
todos_entregadores(X, Y) :-
    entrega(Y, X).

% Retorna a lista de todos os entregadores de um bairro, selecionados retroativamente.
todos_entregadores_listados(X,L) :-
    findall(Y, entrega(Y, X), L).

% Retorna o entregador responsável por mais bairros.
entregadores(Lista) :-
    setof(X, entrega(X, Y), Lista).

quantidade_entregas(Entregador, Qtd) :-
    findall(Bairro, entrega(Entregador, Bairro), Bairros),
    length(Bairros, Qtd).

mais_experiente(TopEntregador) :-
    entregadores(Lista),
    findall(Qtd-Ent, (
        member(Ent, Lista),
        quantidade_entregas(Ent, Qtd)
    ), Pares),
    sort(1, @>=, Pares, [MelhorQtd-TopEntregador|_]).


