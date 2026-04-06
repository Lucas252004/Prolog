% aplanar(+XS, -YS)
aplanar([], []).
aplanar([X | XS], YS) :- is_list(X), aplanar(X, X1), aplanar(XS, X2), append(X1, X2, YS).
aplanar([X | XS], [X | YS]) :- not(is_list(X)), aplanar(XS, YS).