pai(adao,cain).
pai(adao,abel).
pai(adao,seth).
pai(seth,enos).

% a) Quem são os filhos de Adão?
filho(Filho, Pai) :- pai(Pai, Filho). % filho(Filho, adao).
filhos(Filhos, Pai) :- findall(Filho, pai(Pai, Filho), Filhos). % filhos(Filhos,adao)

% b) Quem são os netos de Adão?
avo(Avo,Neto) :- pai(Avo, Filho), pai(Filho, Neto). % avo(adao, Neto)
netos(Netos, Avo) :- findall(Neto, avo(Avo, Neto), Netos). % netos(Netos, adao)

% c) Quem são os tios de Enos?
tio(Tio, Sobrinho) :- pai(Pai, Neto), pai(Avo, Pai), pai(Avo, Tio), Tio \= Pai. % tio(Tio, enos)
tios(Tios, Sobrinho) :- findall(Tio, tio(Tio, Sobrinho), Tios). % tios(Tios, enos)