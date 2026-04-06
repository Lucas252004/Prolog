% last(?L, ?U)
last(L, U) :- append(_, [U], L).

% reverse(+L, ?R)
reverse([], []).
reverse([X | XS], YS) :- reverse(XS, RS), append(RS, [X], YS).

% prefijo(?P, +L)
prefijo(P, L) :- append(P, _, L).

% sufijo(?S, +L)
sufijo(S, L) :- append(_, S, L).

% sublista(?S, +L)
sublista([], _).
sublista(S, L) :- prefijo(P, L), append(P, S, L1), append(L1, _, L), S \= [].

% pertenece(?X, +L)
pertenece(X, [X | _]).
pertenece(X, [Y | YS]) :- X \= Y, pertenece(X, YS).