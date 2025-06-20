gauss(0, 0).

gauss(N, R) :-
    N > 0,
    N1 is N - 1,
    gauss(N1, R1),
    R is R1 + N



% factorial(4, R).
factorial(0, 1).

factorial(N, R) :-
    N > 0,
    N1 is N - 1,
    factorial(N1, R1),
    R is R1 * N, !.

% N =1
% R = 4 * res, 3 * res, ...
% T = 0
% res = 0