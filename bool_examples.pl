% Examples of boolean expressions:

% not, and, or (with the result in variable R):

nope(P, R) :- (\+P, R = true, !); R = false.

and(P,Q,R) :- (P,Q, R = true,!); R = false.

or(P,Q,R) :- ((P;Q), R = true,!); R = false.

% Some examples of circuits with logic gates:

circuit1(P,Q,R) :- 
    (S1 = (P,Q)),
    (S2 = (Q,R)),
    (S3 = (\+S2)),
    (S1;S3).
circuit1_again(P,Q,R, Result) :-
    and(P,Q,S1),
    and(Q,R,S2),
    nope(S2,S3),
    or(S1,S3, Result).