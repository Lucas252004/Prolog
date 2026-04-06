%inorder(+AB, -Lista)
inorder(nil, []).
inorder(bin(I, R, D), L) :- inorder(I, LI), inorder(D, LD), append(LI, [R], L1), append(L1, LD, L).

%arbolConInorder(+Lista, -AB)
arbolConInorder([], nil).
arbolConInorder(L, bin(I, R, D)) :- append(LI, [R | LD], L), arbolConInorder(LI, I), arbolConInorder(LD, D).

%aBB(+T)
aBB(nil).
aBB(A) :- inorder(A, L), sort(L, L).

%aBBInsertar(+X, +T1, -T2)
aBBInsertar(X, nil, bin(nil, X, nil)).
aBBInsertar(R, bin(I, R, D), bin(I, R, D)).
aBBInsertar(X, bin(I, R, D), bin(I2, R, D)) :- X < R, aBBInsertar(X, I, I2).
aBBInsertar(X, bin(I, R, D), bin(I, R, D2)) :- X > R, aBBInsertar(X, D, D2).

% El predicado funciona correctamente con +X, +T1, ?T2 ; +X, -T1, +T2
% X debe de esta siempre instanciado debido al comparador aritmetico, asi mismo el caso +X, -T1, -T2 dara dos soluciones y luego tira error por comparacion aritmetica
