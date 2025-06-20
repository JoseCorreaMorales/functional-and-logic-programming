%academia, docente, materias y horas x materia %
% 4 academias, 3 docentes x academia y dos materias por docente %

%materia: materia y horas - 
%docente: academia y docente - 12

%academa sistemas
docente(sistemas, escobar).   
docente(sistemas, cesar).
docente(sistemas, horacio).

asignarura(poo, escobar, 4).
asignarura(funprogra, esbocar, 5).
asignarura(redes, horacio, 1).


%academia ticskz
docente(tics, ).
docente(tics, ).
docente(tics, ).

%academia gestion 
docente(gestion, ).
docente(gestion, ).
docente(gestion, ).

%academia industrial
docente(industrial, ).
docente(industrial, ).
docente(industrial, ).


% a) Nombre de los docentes de la academia X.

docentes_academia(Academia) :-
    findall(Nombre, docente(Academia, Nombre), Nombres), write(Nombres).

% b) Materias que imparte el docente X y las horas de cada materia.

materias_por_docente(Docente) :- 
    asignatura(Materia, Docente, Horas), write(Materia), write("  "),
    write(Horas), nl, fail.


