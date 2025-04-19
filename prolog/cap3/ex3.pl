
d(0).
d(1).
falha :- 1 =:= 2.
bin([A,B,C]) :- d(A), d(B), d(C), write([A,B,C]), nl, falha.