% juntar(?Lista1, ?Lista2, ?Lista3)
juntar([], L1, L1).
juntar([L | L1], L2, [L | L3]) :- juntar(L1, L2, L3).