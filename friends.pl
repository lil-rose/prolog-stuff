friends(george, kate).
friends(george, susie).
friends(kate, susie).
friends(george, peter).
friends(susie, peter).

known(X,Y) :- friends(X,Z), friends(Y,Z).