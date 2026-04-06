% familia.pl
padre(juan, maria).
padre(juan, pedro).
madre(ana, maria).
madre(ana, pedro).
progenitor(X, Y) :- padre(X, Y).
progenitor(X, Y) :- madre(X, Y).