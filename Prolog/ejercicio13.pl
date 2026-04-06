% coprimos(-X, -Y)
coprimos(X, Y) :- armarPares(X, Y), gcd(X, Y) =:= 1.
% armarPares(-X, -Y)
armarPares(X, Y) :- desde(0, N), between(0, N, X), Y is N - X.