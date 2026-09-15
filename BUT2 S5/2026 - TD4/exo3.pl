element_de(X, [X|_]).
element_de(X, [_|Q]) :- element_de(X, Q).

elements_impairs_de([], []).
elements_impairs_de([X], [X]).
elements_impairs_de([X, _|Q], [X|LI]) :- elements_impairs_de(Q, LI).

inverse([], []).
inverse([T|Q], LInv) :- inverse(Q, QInv), append(QInv, [T], LInv).
