homme(albert).
homme(jean).
homme(paul).
homme(bertrand).
homme(louis).
homme(benoit).

femme(marie).
femme(germaine).
femme(sophie).
femme(christiane).
femme(simone).

pere(louis, benoit).
pere(albert, jean).
pere(jean, simone).
pere(jean, paul).
pere(paul, sophie).
pere(paul, bertrand).

mere(marie, sophie).
mere(marie, bertrand).
mere(germaine, jean).
mere(christiane, simone).
mere(christiane, paul).
mere(simone, benoit).

parent_de(X, Y) :- pere(X, Y).
parent_de(X, Y) :- mere(X, Y).

fils_de(X, Y) :- homme(X), parent_de(Y, X).

fille_de(X, Y) :- femme(X), parent_de(Y, X).

enfant_de(X, Y) :- parent_de(Y, X).

grand_pere_de(X, Y) :- pere(X, Z), parent_de(Z, Y).

grand_mere_de(X, Y) :- mere(X, Z), parent_de(Z, Y).

frere_de(X, Y) :- homme(X), pere(P, X), pere(P, Y), mere(M, X), mere(M, Y), X \= Y.

soeur_de(X, Y) :- femme(X), pere(P, X), pere(P, Y), mere(M, X), mere(M, Y), X \= Y.

demi_frere_de(X, Y) :- homme(X), parent_de(P, X), parent_de(P, Y), parent_de(AutreP1, X), parent_de(AutreP2, Y), AutreP1 \= P, AutreP2 \= P, AutreP1 \= AutreP2, X \= Y.

demi_soeur_de(X, Y) :- femme(X), parent_de(P, X), parent_de(P, Y), parent_de(AutreP1, X), parent_de(AutreP2, Y), AutreP1 \= P, AutreP2 \= P, AutreP1 \= AutreP2, X \= Y.


