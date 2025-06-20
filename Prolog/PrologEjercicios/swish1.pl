% vacuna(farmaceutica, >=, <) farmaceutica, rango %

vacuna(pfizer, 70, 100).
vacuna(sinovac, 60, 69).
vacuna(patria, 50, 59).
vacuna(jandj, 40, 69).
vacuna(astra, 30, 39).
vacuna(spuknik, 20, 29).
vacuna(cancio, 10, 19).
vacuna(moderna, 1, 9).

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

% con cual farmaseutica se vacunara una persona X %
% vacunar(antonio) %
vacunar(N) :- persona(N, _, E), vacuna(F, I, S),
    		  E >= I, E =< S, 
    		  write(N), write(" le toca "), write(F).

% ordenar a cuales les toca x vacuna %
ordenar :- vacuna(F, I, S),
    		write("persona que se deben de vacunar con "),
    		write(F), nl,
    		persona(N, _, E), E >= I, E =< S,
    		write(N), nl, fail. 
    	
    			
















