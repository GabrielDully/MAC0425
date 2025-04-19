% funcionario(Código, Nome, Salário)
funcionario(4,leo,2500.35).
funcionario(5,clo,1800.00).
funcionario(6,gil,1100.00).

% dependente(Nome, Código_pk)
dependente(lia,4).
dependente(clo,4).
dependente(gil,5).

% a) Quem tem salário entre R$1500,00 e R$3000,00?
a(C,F) :-
    funcionario(C,F,S),
    S >= 1500,
    S =< 3000.

% b) Quem não tem dependentes e ganha menos de R$1200,00?
b(C,F) :-
    funcionario(C,F,S),
    S < 1200,
    \+ dependente(_,C).

% c) Quem depende de funcionário que ganha mais de R$1700,00?
c(D) :-
    funcionario(C,F,S),
    dependente(D,C),
    S > 1700.
