child(manuel, francisco).
child(manuel,francisco).
child(francisco,pedro).
child(pedro,juan).

ancestor(X,Y) :- child(Y,X).
ancestor(X,Y) :- child(Y,Z), ancestor(X,Z).
