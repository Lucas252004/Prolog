% prefijo(?P, +L)
prefijo(P, L) :- append(P, _, L).

% sufijo(?S, +L)
sufijo(S, L) :- append(_, S, L).

% sublista(?S, +L)
sublista([], _).
sublista(S, L) :- prefijo(P, L), append(P, S, L1), append(L1, _, L), S \= [].

% esSubsecuencia(+L, ?S)
esSubsecuencia([], []).
esSubsecuencia([X | XS], [X | YS]) :- esSubsecuencia(XS, YS).
esSubsecuencia([_ | XS], YS) :- esSubsecuencia(XS, YS).


% interseccion(+L1, +L2, -L3) --> CONSULTAR
interseccion([], _, []).
interseccion([X | XS], YS, [X|ZS]) :- member(X, YS), interseccion(XS, YS, ZS).
interseccion([X | XS], YS, ZS) :- not(member(X, YS)), interseccion(XS, YS, ZS).

% partir(?N, ?L, ?L1, ?L2)
partir(N, L, L1, L2) :- append(L1, L2, L), length(L1, N).

% borrar(+ListaOriginal, +X, -ListaSinXs)
borrar([], _, []).
borrar([X | XS], X, YS) :- borrar(XS, X, YS).
borrar([X | XS], N, [X | YS]) :- N \= X, borrar(XS, N, YS).

% sacarDuplicados(+L1, -L2) --> CONSULTAR SI HAY MANERA DE NO DAR SOLUCIONES REPETIDAS
sacarDuplicados([], []).
sacarDuplicados([X | XS], YS) :- member(X, XS), sacarDuplicados(XS, YS).
sacarDuplicados([X | XS], [X | YS]) :- not(member(X, XS)), sacarDuplicados(XS, YS).

% seleccionar(+Elem, +Lista, -Resto)
seleccionar(X, [X | XS], XS).
seleccionar(X, [Y | YS], [Y | ZS]) :- seleccionar(X, YS, ZS).

% permutacion(+L1, ?L2)
permutacion([], []).
permutacion(L, [X | R]) :- seleccionar(X, L, L1), permutacion(L1, R).

% reparto(+L, +N, -LListas)
reparto(L, 1, [L]).
reparto(L, N, [X | XS]) :- N > 1, M is N - 1, append(X, R, L), reparto(R, M, XS).

% repartoSinVacias(+L, -LListas)
repartoSinVacias([], []).
repartoSinVacias(L, [P | PS]) :- prefijoNoVacio(L, P, S), repartoSinVacias(S, PS). 

% prefijoNoVacio(+Lista, -Prefijo, -Sufijo)
prefijoNoVacio(L, P, S) :- prefijo(P, L), P \= [], append(P, S, L).
