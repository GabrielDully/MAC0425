:- discontiguous pai/2.
:- discontiguous mae/2.

% a) Usando fatos, defina as relações pai e mãe. Em seguida, consulte o sistema para ver se suas definições estão corretas.

% Ana + Ivo
pai(ivo,eva).
mae(ana,eva).

% Bia + Gil
pai(gil,rai).
mae(bia,rai).

pai(gil,clo).
mae(bia,clo).

pai(gil,ary).
mae(bia,ary).

% Eva + Rai
pai(rai,noe).
mae(eva,noe).

% Ary + Lia
pai(ary,gal).
mae(lia,gal).

% b) Acrescente ao programa os fatos necessários para definir as relações homem e mulher. Por exemplo, para estabelecer que Ana é mulher e Ivo é homem, acrescente os fatos mulher(ana) e homem(ivo).

% Homens(5):
homem(ivo).
homem(gil).
homem(rai).
homem(ary).
homem(noe).

% Mulheres(6):
mulher(ana).
mulher(bia).
mulher(eva).
mulher(clo).
mulher(lia).
mulher(gal).

% c) Usando duas regras, defina a relação gerou(X,Y) tal que X gerou Y se X é pai ou mãe de Y. Faça consultas para verificar se sua definição está correta. Por exemplo, para a consulta gerou(X,eva) o sistema deverá apresentar as respostas X = ana e X = ivo.
gerou(Genitor,Prole) :- pai(Genitor,Prole).
gerou(Genitor,Prole) :- mae(Genitor,Prole).  

% d) Usando relações já existentes, crie regras para definir as relações filho, filha, tio, tia, primo, prima, avô e avó. Para cada relação, desenhe o grafo de relacionamentos, codifique a regra correspondente e faça consultas para verificar a corretude.
% Filho & Filha:
filho(Prole,Genitor) :- gerou(Genitor,Prole), homem(Prole).
filha(Prole,Genitor) :- gerou(Genitor,Prole), mulher(Prole).

% Tio & Tia:
tio(Tio,Sobrinhe) :- gerou(Genitor,Sobrinhe), gerou(Ave,Genitor), gerou(Ave,Tio), homem(Tio), Tio \= Genitor.
tia(Tia,Sobrinhe) :- gerou(Genitor,Sobrinhe), gerou(Ave,Genitor), gerou(Ave,Tia), mulher(Tia), Tia \= Genitor.

% Primo & Prima:
primo(Primo,X) :- gerou(Genitor,X), gerou(Ave,Genitor), gerou(Ave,Tie), gerou(Tie, Primo), homem(Primo).

prima(Prima,X) :- gerou(Genitor,X), gerou(Ave,Genitor), gerou(Ave,Tie), gerou(Tie, Prima), mulher(Prima).

% Avô & Avó:
avo(Avo,Neto) :- gerou(Avo,Filho), gerou(Filho,Neto), homem(Avo).
ava(Ava,Neto) :- gerou(Ava,Filho), gerou(Filho,Neto), mulher(Ava).