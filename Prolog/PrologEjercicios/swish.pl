persona(juan, h, 15).
persona(maricarmen, m, 7).
persona(jose, h, 25).
persona(iovani, h, 20).
persona(ignacio, h, 30).
persona(salvador, h, 18).
persona(josue, h, 23).
persona(antonio, h, 15).
persona(axel, h, 22).
persona(carlos, h, 52).
persona(daniela, m, 22).
persona(alfonso, h, 12).


% query: persona. %
%personas :- persona(X), write(X), nl, fail.%
	
% query: existe(juan). % 
% existe(X) :- persona(X), write("Si existe el registro"); write("No exisite el registro"). %

% query: persona. %
personas :- persona(N, S, E), 
    		write(N), write(" es "), write(S),
    		write(" y tiene "), write(E), nl, fail.

% query: existe(juan). % 
existe(X) :- persona(X, _, _), write("Si existe el registro"); write("No exisite el registro"). 

%mayores.%
mayores :- persona(N, _, E), E >= 18,
    		write(N), write(" tiene "),
    		write(E), write(" anos "), nl, fail.


% hombres. %
hombres :- persona(N, S, _), S = h,  write(N), nl, fail.

mujeres :- persona(N, S, _), S = m,  write(N), nl, fail.

%q: contar(m). , L= lista  %
contar(S) :- findall(S, persona(_, S, _), L), length(L, N), write(N).


















