vacio(nil).
raiz(R, bin(_, R, _)).
altura(0, nil).
altura(N, bin(I, _, D)) :- altura(AI, I), altura(AD, D), M is max(AI, AD), N is M + 1.
cantNodos(0, nil).
cantNodos(N, bin(I, _, D)) :- cantNodos(AI, I), cantNodos(AD, D), N is 1 + AI + AD.