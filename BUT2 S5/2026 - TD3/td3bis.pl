aime(marie, vin). 
aime(pierre, X) :- aime(X, vin).
voleur(pierre). 
vole(X, Y) :- voleur(X), aime(X, Y). 

sign(X, negatif) :- X < 0, !.
sign(X, zero) :- X =:= 0, !.
sign(X, positif) :- X > 0.

elements_impairs([], []).
elements_impairs([X], [X]).
elements_impairs([X, _|Q], [X|R]) :- elements_impairs(Q, R).

inverse([], []).
inverse([T|Q], L) :- inverse(Q, QInv), append(QInv, [T], L).

?- sign(-1, Y).
?- elements_impairs([a, b, c, d, e], L).
?- inverse([1, 2, 3], L).