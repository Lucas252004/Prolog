% intercalar(?L1, ?L2, ?L3)
intercalar([], L, L).
intercalar(L, [], L).
intercalar([X | XS], [Y | YS], [X, Y | ZS]) :- intercalar(XS, YS, ZS).
% El predicado es reversible en todos sus terminos