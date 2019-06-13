% X is member of a list.
member(X, [X]).
member(X, [X|R]).
member(X, [Y|R]) :- member(X,R).

% X is not member of a list.
notMember(X, []) :- !.
% notMember(X, [X|R]) :- !, False.
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
countElem([X|R], Elem, N) :- countElem(R, Elem, N).
countElem([Elem|R], Elem, N) :- countElem(R, Elem, N2), N is N2 + 1.

% delete repeated elements on a list.
deteleRepeated([], L, []).
deteleRepeated([X|R], A, [X|S]) :- notMember(X, A), !, deteleRepeated(R, A, S).
deteleRepeated([X|R], A, S) :- deteleRepeated(R, A, S).



% Sort list from lower to highest.
insert_sorted(X, [], [X]):- !.
insert_sorted(X, [Y|R], [X,Y|R]) :- X < Y.
insert_sorted(X, [Y|R], S) :- insert_sorted(X, R, S).

sortList([], []).
sortList([X|R], S) :- sortList(R, S1), insert_sorted(X, S1, S).

% intersection between two lists
inter([], L, []):-!.
inter([X|R], L, [X|S]) :- member(X, L), !, inter(R, L, S). 
inter([X|R], L, S) :- inter(R, L, S).

% delete X from list
delete(X, [], []) :- !.
delete(X, [X], []) :- !.
delete(X, [X|R], S) :- !, delete(X, R, S).
delete(X, [Y|R], [Y|S]) :- delete(X, R, S).

% Check if is a list.
isList([]) :- !.
isList([X]) :- !.
isList([X|R]) :- !.

% Count atomic items on a list.
atomics([], 0) :- !.
% atomics([X], 1) :- !.
atomics([X|R], S) :- isList(X), atomics(X, S1), atomics(R, S2), S is S1 + S2, !.
atomics([X|R], S) :- atomics(R, S2), S is 1 + S2.


% Last item of a list.
lastItem([X], X) :- !.
lastItem([X|R], S) :- lastItem(R, S).

% Summation of numbers of a list
summation([X], X) :- !.
summation([X|R], S) :- summation(R, S2), S is X + S2.

% Bigger number in a list
bigger([X], X) :- !.
bigger([X|R], X) :- bigger(R, X2), X >= X2, !.
bigger([X|R], X2) :- bigger(R, X2).


% Smaller number in a list.
smaller([X], X) :- !.
smaller([X|R], X) :- smaller(R, X2), X =< X2, !.
smaller([X|R], X2) :- smaller(R, X2).

% Determines index of an item in a list.
indexOf(X, [X|R], 0).
indexOf(X, [Y|R], Index) :- indexOf(X, R, I), Index is I + 1.

% First list is equal to second list.
equalLists([], []):-!.
equalLists([X|R1], [X|R2]) :- equalLists(R1, R2).

% Determines if a list is palindrome.
palindrome([]) :- !.
palindrome([X]) :- !.
palindrome(L) :- invert(L, L1), equalLists(L, L1), !.

