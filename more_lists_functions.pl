last([Z], Z) :- !.
last([X|R], Z):- last(R, Z).
% Interval between N1 and N2 in an ordered list (ascending order).
interval([],N1,N2,[]):-!.
interval([X|R],N1,N2,[X|S]):- X>=N1,X=<N2,interval(R,N1,N2,S),!.
interval([X|R], N1, N2, S):- interval(R, N1, N2, S), !.

from_x([X|R], X, R) :- R \= [], !.
from_x([Y|R], X, S) :- from_x(R, X, S).