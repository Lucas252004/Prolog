% unCorte(+L, +L1, +L2, -D)
unCorte(L, L1, L2, D) :- append(L1, L2, L), sumlist(L1, S1), sumlist(L2, S2), D is abs(S1 - S2).

% corteMasParejo(+L, -L1, -L2)
corteMasParejo(L, L1, L2) :- unCorte(L, L1, L2, D), not((unCorte(L, _, _, D2), D2 < D))