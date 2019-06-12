% X is member or not of a list.
member(X, [X|T]).
member(X, [Y|T]) :- member(X,T).

% X is not member of a list.
notMember(X, []) :- !.
notMember(X, [X|R]) :- !, Fail.
notMember(X, [Y|R]) :- notMember(X, R).


% Union between two lists.
union([],L,L).
union([X|R1],L2,[X|R3]) :- union(R1,L2,R3).

% invert a list
invert([X],[X]).
invert([X|R],S) :- invert(R,S1), union(S1,[X],S).

% invert but without using union.
invert2([], L, L).
invert2([X|R], L2, L3) :- invert2(R, [X|L2], L3).

% count elements on a list
count([], 0).
count([X|R], N) :- count(R, N2), N is N2 + 1.

% Count Elem in list

countElem([], Elem, 0) :- !.
countElem([Elem], Elem, 1) :- !.
countElem([X|R]. Elem, N) :- countElem(R, Elem, N).
countElem([Elem|R], Elem, N) :- countElem(R, Elem, N2), N is N2 + 1.

% delete repeated elements on a list.
deteleRepeated([], L, []).
deteleRepeated([X|R], A, [X|S]) :- notMember(X, A), !, deteleRepeated(R, A, S).
deteleRepeated([X|R], A, S) :- deteleRepeated(R, A, S).



% Sort list from lower to highest.
insert_sorted(X, [], [X]):- !.
insert_sorted(X, [Y|R], [X,Y|R]) :- X < Y.
insert_sorted(X, [Y|R], S) :- insert_sorted(X, R, S).

sort([], []).
sort([X|R], S) :- sort(R, S1), insert_sorted(X, S1, S).

