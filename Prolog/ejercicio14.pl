% transponer(+M, -MT)
transponer([], []).
transponer([[] | _], []).
transponer(M, [C | Nt]) :- columna1Separada(M, C, N), transponer(N, Nt).

columna1Separada([], [], []).
columna1Separada([[X | F] | M], [X | C], [F | R]) :- columna1Separada(M, C, R).

desde(X, X).
desde(X, Y) :- N is X + 1, desde(N, Y).

% listasQueSumanN(+N, +L, ?LListas)
listasQueSumanN(0, 0, []).
listasQueSumanN(N, L, [X | XS]) :- L > 0, between(0, N, X), N1 is N - X, L1 is L - 1, listasQueSumanN(N1, L1, XS).

% matrizCuadradaSumaFija(+N, +S, -M)
matrizCuadradaSumaFija(0, _, _, []).
matrizCuadradaSumaFija(F, L, S, [X | XS]) :- F > 0, listasQueSumanN(S, L, X), F1 is F - 1, matrizCuadradaSumaFija(F1, L, S, XS). 

% cuadradoSemiMagico(+N, -XS)
cuadradoSemiMagico(N, M) :- desde(0, S), matrizCuadradaSumaFija(N, N, S, M).

% cuadradoMagico(+N, -XS)
cuadradoMagico(N, M) :- desde(0, S), matrizCuadradaSumaFija(N, N, S, M), transponer(M, T), matrizCuadradaSumaFija(N, N, S, T).


