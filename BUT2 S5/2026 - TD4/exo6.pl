mouvement(0, _, _, _, []).
mouvement(N, Start, Interm, End, S) :-
    N > 0,
    N1 is N - 1,
    mouvement(N1, Start, End, Interm, S1),
    append(S1, [Start -> End], S2),
    mouvement(N1, Interm, Start, End, S3),
    append(S2, S3, S).