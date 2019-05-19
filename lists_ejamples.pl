% X is member or not of a list.
member(X, [X|T]).
member(X, [Y|T]) :- member(X,T).

% Union between two lists.
union([],L,L).
union([X|R1],L2,[X|R3]) :- union(R1,L2,R3).

% invert a list
invert([X],[X]).
invert([X|R],S) :- invert(R,S1), union(S1,[X],S).

% invert but without using union.
invert2([], L, L).
invert2([X|R], L2, L3) :- invert2(R, [X|L2], L3).

