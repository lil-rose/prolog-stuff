direct_boss(maria, juan).
direct_boss(juan, pedro).
boss(X, Y) :- direct_boss(X, Y).
boss(X, Y) :- direct_boss(X, Z) , boss(Z, Y).