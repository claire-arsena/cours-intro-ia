hors_de(_, []).
hors_de(X, [T|Q]) :- 
    dif(X, T), 
    hors_de(X, Q).

differents([]).
differents([T|Q]) :- 
    hors_de(T, Q), 
    differents(Q).