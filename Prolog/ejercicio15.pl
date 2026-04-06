desde(X, X).
desde(X, Y) :- N is X + 1, desde(N, Y).

desdeReversible(X, Y) :- nonvar(Y), Y >= X.
desdeReversible(X, Y) :- var(Y), desde(X, Y).

% esTriangulo(+T)
esTriangulo(tri(A, B, C)) :- A > 0, B > 0, C > 0, A < B + C, B < A + C, C < A + B.

% perimetro(?T, ?P)
% perimetro(+T, ?P)
perimetro(tri(A,B,C), P) :- ground(tri(A,B,C)), esTriangulo(tri(A, B, C)), P is A + B + C.

% armarTriplas(P, A, B, C)
armarTriplas(P, A, B, C) :- between(1, P, A), LB is P - A, between(1, LB, B), C is P - A - B.

% permietro(-T, ?P)
perimetro(tri(A, B, C), P) :- not((ground(tri(A,B,C)))), desdeReversible(3, P), armarTriplas(P, A, B, C), esTriangulo(tri(A, B, C)).

% triangulo(-T)
triangulo(T) :- perimetro(T, _).