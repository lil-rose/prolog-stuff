% Factorial of a number
fact(0,1).
fact(N, Result) :- T is N -1 , fact(T, S1), Result is N * S1.

% Fibonacci series
fibb(0,1).
fibb(1,1).
fibb(N, F) :- N1 is N-1, N2 is N-2, fibb(N1,F1), fibb(N2,F2), F is F1 + F2.

% Exponentiation
exp(X,1,X).
exp(X,N,Result) :- N1 is N-1, exp(X,N1,Result1), Result is X * Result1.

% X(n) = X(n-1) + X(n-2) + 1, n >=2
% X(0) = 1
% X(1) = 2
serie1(0, 1).
serie1(1, 2).
serie1(N, Xn) :-
    N_1 is N - 1,
    serie1(N_1,Xn_1),
    N_2 is N - 2,
    serie1(N_2,Xn_2),
    Xn is Xn_1 + Xn_2 + 1.

% X(n) = 2X(n-1) + 3X(n-2), n >=2
% X(0) = 1
% X(1) = 2
serie2(0, 1).
serie2(1, 2).
serie2(N, Xn) :-
    N_1 is N - 1,
    serie2(N_1,Xn_1),
    N_2 is N - 2,
    serie2(N_2,Xn_2),
    Xn is Xn_1*2 + Xn_2*3 .