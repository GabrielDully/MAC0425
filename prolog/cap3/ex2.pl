% 3.2. O predicado `num` classifica números em três categorias: 'positivos', 'nulo' e 'negativos'.
% Esse predicado, da maneira como está definido, realiza retrocesso desnecessário.
% Explique por que isso acontece e, em seguida, aplique cortes para eliminar esse retrocesso.
num(N,positivo) :- N > 0, !.
num(N,negativo) :- N < 0, !.
num(N,nulo).