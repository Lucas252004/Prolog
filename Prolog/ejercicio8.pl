% esSubsecuencia(+L, ?S)
esSubsecuencia([], []).
esSubsecuencia([X | XS], [X | YS]) :- esSubsecuencia(XS, YS).
esSubsecuencia([_ | XS], YS) :- esSubsecuencia(XS, YS).

%parteQueSuma(+L, +S, -P)
parteQueSuma(L, S, P) :- esSubsecuencia(L, P), sum_list(P, S).
