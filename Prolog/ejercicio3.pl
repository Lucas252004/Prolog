natural(0).
natural(suc(X)) :- natural(X).

menorOIgual(0, X) :- natural(X).
menorOIgual(suc(X), suc(Y)) :- menorOIgual(X, Y).