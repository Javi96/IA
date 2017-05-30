frase(X) --> grupo_nominal(GN), grupo_verbal(GV), complemento_cc(C), {atom_concat(' por ', GN, X2), atom_concat(GV, X2, X1), atom_concat(' ', C, X3), atom_concat(X1,X3,X)}.

complemento_cc(X) --> preposicion(P), grupo_nominal(GN), {atom_concat(P, ' ', X1), atom_concat(X1, GN, X)}.

complemento_directo(X) --> articulo(A), nombre(N), {atom_concat(A,N,X)}.

grupo_nominal(N) --> nombre(N).

grupo_nominal(X) --> articulo(A), nombre(N), {atom_concat(A, ' ', X1), atom_concat(X1, N, X)}.

grupo_nominal(X) --> articulo(A), nombre(N), complemento_directo(CD), {atom_concat(GN, ' ', X1), atom_concat(X1, V, X2), atom_concat(X2, ' ', X3),atom_concat(X3, CD, X)}.

grupo_verbal(X) --> verbo(V, pasado, 3, singular), grupo_nominal(GN), {atom_concat(GN, ' ', X1), atom_concat(X1, V, X)}.

grupo_verbal(V) --> verbo(V, pasado, 3, singular).

articulo(P) --> [P], {es_articulo(P)}.
nombre(P) --> [P], {es_nombre(P)}.

verbo(A, Tiempo, Persona, Numero) --> [V], {
	atom_concat(Raiz, Terminacion, V),
	es_verbo(Raiz, Infinitivo),
	es_terminacion(Terminacion, Tiempo,Persona,Numero),
	atom_concat('fue', ' ', X1),
	atom_concat(X1, Raiz, X2),
	nueva_terminacion(Infinitivo, Persona, Numero, NuevaT),
	atom_concat(X2, NuevaT, A)
}.



preposicion(P) --> [P], {es_preposicion(P)}.

es_articulo(el).
es_articulo(una).
es_articulo(la).

es_nombre(decision).
es_nombre(cuaderno).
es_nombre(ninio).
es_nombre(flor).
es_nombre(yo).



es_preposicion(en).

es_verbo(dibuj, ar).

es_terminacion(o, pasado, 3, singular).

nueva_terminacion(ar, 3, singular, ada).





















