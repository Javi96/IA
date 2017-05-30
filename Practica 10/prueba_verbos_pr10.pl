es_terminacion(o, pasado, 3, singular).

es_verbo(dibuj, ar).

nueva_terminacion(ar, 3, singular, ado).

verbo(A, Tiempo, Persona, Numero) --> [V], {
	atom_concat(Raiz, Terminacion, V),
	es_verbo(Raiz, Infinitivo),
	es_terminacion(Terminacion, Tiempo,Persona,Numero),
	atom_concat('fue', ' ', X1),
	atom_concat(X1, Raiz, X2),
	nueva_terminacion(Infinitivo, Persona, Numero, NuevaT),
	atom_concat(X2, NuevaT, A)
}.

% verbo(Infinitivo, Tiempo, Persona, Numero, [hablarás], []).
% ej cuatro entrega
