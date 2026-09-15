rond(sphere).

nonrond(X) :- rond(X), !, fail.
nonrond(_).

neg(P) :- P, !, fail.
neg(_).