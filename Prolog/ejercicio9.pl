desde(X, X).
desde(X, Y) :- N is X + 1, desde(N, Y).

desdeReversible(X, Y) :- nonvar(Y), Y >= X.
desdeReversible(X, Y) :- var(Y), desde(X, Y).