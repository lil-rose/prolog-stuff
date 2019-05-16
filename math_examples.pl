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