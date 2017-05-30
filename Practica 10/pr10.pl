frase(X) --> grupo_nominal(GN), grupo_verbal(GV), complemento_cc(C), {atom_concat(GV, GN, X1), atom_concat(X1,C,X)}.

complemento_cc(X) --> preposicion(P), grupo_nominal(GN), {atom_concat(P, ' ', X1), atom_concat(X1, GN, X)}.

complemento_directo(X) --> articulo(A), nombre(N), {atom_concat(A,N,X)}.

grupo_nominal(N) --> nombre(N).

grupo_nominal(X) --> articulo(A), nombre(N), {atom_concat(A, ' ', X1), atom_concat(X1, N, X)}.

grupo_nominal(X) --> articulo(A), nombre(N), complemento_directo(CD), {atom_concat(GN, ' ', X1), atom_concat(X1, V, X2), atom_concat(X2, ' ', X3),atom_concat(X3, CD, X)}.

grupo_verbal(X) --> verbo(V), grupo_nominal(GN), {atom_concat(GN, ' ', X1), atom_concat(X1, V, X)}.

grupo_verbal(V) --> verbo(V).

articulo(P) --> [P], {es_articulo(P)}.
nombre(P) --> [P], {es_nombre(P)}.
verbo(P) --> [P], {es_verbo(P)}.
preposicion(P) --> [P], {es_preposicion(P)}.

es_articulo(el).
es_articulo(una).
es_articulo(la).

es_nombre(decision).
es_nombre(cuaderno).
es_nombre(ninio).
es_nombre(flor).
es_nombre(yo).

es_verbo(tome).
es_verbo(dibujo).
es_verbo(come).

es_preposicion(en).





% es_terminacion(termin, Tiempo, Persona, Numero).
es_terminacion(o, pasado ,3 , singular).

% es_verbo(Raiz, Infinitivo).
es_verbo(dibuj, ar).

verbo --> [V].
verbo(Infinitivo, Tiempo, Persona, Numero) --> [V], {
	atom_concat(Raiz, Terminacion, V),
	es_verbo(Raiz, Infinitivo),
	es_terminacion(Terminacion, Tiempo,Persona,Numero)
}.

% verbo(Infinitivo, Tiempo, Persona, Numero, [hablarás], []).

% ej cuatro entrega






















