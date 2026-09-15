% --- 1. Faits de base optimisés [cite: 5, 8] ---
homme(albert). homme(jean). homme(paul). homme(bertrand). homme(louis). homme(benoit).
femme(marie). femme(germaine). femme(sophie). femme(christiane). femme(simone).

parent(louis, benoit). parent(albert, jean). parent(jean, simone). parent(jean, paul).
parent(paul, sophie). parent(paul, bertrand). parent(marie, sophie). parent(marie, bertrand).
parent(germaine, jean). parent(christiane, simone). parent(christiane, paul). parent(simone, benoit).

% --- 2. Définitions des prédicats [cite: 10, 11, 12] ---
pere(X, Y) :- homme(X), parent(X, Y).
mere(X, Y) :- femme(X), parent(X, Y).
grand_parent_de(X, Y) :- parent(X, Z), parent(Z, Y).

% --- 3. Enfants [cite: 13, 14] ---
avoir_un_enfant(X) :- parent(X, _).
etre_un_enfant(X) :- parent(_, X).

% --- 4. Fratrie (Utile pour oncles et cousins) ---
frere_ou_soeur(X, Y) :- parent(P, X), parent(P, Y), X \= Y.

% --- 5. Famille étendue [cite: 15, 16, 17, 18] ---
oncle(X, Y) :- homme(X), parent(P, Y), frere_ou_soeur(X, P).
tante(X, Y) :- femme(X), parent(P, Y), frere_ou_soeur(X, P).

cousin(X, Y) :- homme(X), parent(P1, X), parent(P2, Y), frere_ou_soeur(P1, P2).
cousine(X, Y) :- femme(X), parent(P1, X), parent(P2, Y), frere_ou_soeur(P1, P2).


ancetre(X, Y) :- parent(X, Y).
ancetre(X, Y) :- parent(X, Z), ancetre(Z, Y).


marie(X, Y) :- parent(X, Z), parent(Y, Z), X \= Y.