desde(X, X).
desde(X, Y) :- N is X + 1, desde(N, Y).

desdeReversible(X, Y) :- nonvar(Y), Y >= X.
desdeReversible(X, Y) :- var(Y), desde(X, Y).

% primo(+N)
primo(N) :- N > 1, Npred is N - 1, not((between(2, Npred, X), mod(N, X) =:= 0)).

% divideSuCuadrado(+N, +P)
divideSuCuadrado(N, P) :- P2 is P * P, mod(N, P2) =:= 0.

% esPoderoso(+N)
esPoderoso(N) :- N > 1, not((between(2, N, P), primo(P), mod(N, P) =:= 0, not(divideSuCuadrado(N, P)))). 

% siguientePoderoso(+N, -P)
siguientePoderoso(N, N) :- esPoderoso(N).
siguientePoderoso(N, P) :- not(esPoderoso(N)), N1 is N + 1, siguientePoderoso(N1, P).

% proximoNumeroPoderoso(+N, -P)
proximoNumeroPoderoso(N, P) :- N1 is N + 1, siguientePoderoso(N1, P).