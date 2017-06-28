
%%% PRACTICA 10 - Inteligencia Artificial %%%
%%% Autores (Grupo 5)%%%
%%% Jose Javier Cortes Tejada%%%
%%% Pedro David Gonzalez Vazquez%%%


/*
Este predicado lanza las 3 frases del enunciado y otra extra para comprobar concordacion de genero y numero.
*/
launch():-
	(frase(A, [el,ninio,dibujo,una,flor,en,el,cuaderno], []),writeln(A)),
	(frase(C, [el,ninio,dibujo,unas,flores,en,el,cuaderno], []),writeln(C)),
	(frase(B, [el,ninio,dibujo,una,flor], []),writeln(B)), 
	(frase(D, [yo,tome,la,decision], []),writeln(D)).

/*
Launches GDC de las frases pedidas, hay dos posibles formatos GN-GV-C o GN-GV. La concatenacion de 'por' se realiza aqui ya que es obligatorio en base al 
sistema que se quiere construir, mientras que el resto de invocaciones a atom_concat son necesarias para que la salida por pantalla sea coherente.
*/
frase(X) --> 	grupo_nominal(GN, Numero, _, Persona), grupo_verbal(GV, Numero, Persona), complemento_cc(C, _, _, _), 
				{atom_concat(' por ', GN, X2), atom_concat(GV, X2, X1), atom_concat(X1,C,X)}.
frase(X) --> 	grupo_nominal(GN, Numero, _, Persona), grupo_verbal(GV, Numero, Persona), 
				{atom_concat(' por ', GN, X1), atom_concat(GV, X1, X)}.

/*
Predicado que determina un complemento circunstacial formado por una preposicion y seguido en un grupo nominal.
*/				
complemento_cc(X, Numero, Genero, Persona) --> preposicion(P), grupo_nominal(GN, Numero, Genero, Persona), {atom_concat(P, ' ', X1), atom_concat(' ', X1, X2),atom_concat(X2, GN, X)}.

/*
Predicado que determina un grupo nominal. Este puede estar formado simplemente por un nombre (por ejemplo flor), un pronombre o un articulo seguido de un nombre.
*/
grupo_nominal(N, Numero, Genero, _) --> nombre(N, Numero, Genero).

grupo_nominal(N, Numero, Genero, Persona) --> pronombre(N, Numero, Genero, Persona).

grupo_nominal(X, Numero, Genero, _) --> articulo(A, Numero, Genero), nombre(N, Numero, Genero), {atom_concat(A, ' ', X1), atom_concat(X1, N, X)}.

/*
Predicado que determina un grupo verbal. Este puede estar formado por un verbo o un verbo y un grupo nominal.
*/
grupo_verbal(V, Numero, Persona) --> verbo(V, _, Numero, Persona, _).

grupo_verbal(X, Numero, Persona) --> verbo(V, _, Numero, Persona, Numero1), grupo_nominal(GN, Numero1, _, _), {atom_concat(GN, ' ', X1), atom_concat(X1, V, X)}.

/*
Predicado que determina un articulo.
*/
articulo(A, Numero, Genero) --> [A], {es_articulo(A,Numero, Genero)}.

/*
Predicado que determina una preposicion.
*/
preposicion(P) --> [P], {es_preposicion(P)}.

/*
Predicado que determina un nombre.
*/
nombre(N, Numero, Genero) --> [N], {es_nombre(N, Numero, Genero)}.

/*
Predicado que determina un pronombre y los cambios que hay que aplicarle para la transformacion en pasiva. Para ello,
mediante encaje de patrones determinamos que pronombres encajan con el genero, el numero y la persona dadod y ademas volcamos
en P los resultados del encaje con el predicado cambia_pronombre, el cual devuelve ñps cambios necesarios para la transformacion 
en pasiva (yo -> mi).
*/
pronombre(P, Numero, Genero, Persona) --> [X], {
	es_pronombre(X, Numero, Genero, Persona),
	cambia_pronombre(X, Numero, Genero, Persona, P)
}.

/*
Predicado que determina un verbo y los cambios necesarios para la transformacino a pasiva. Para ello, determinamos si dicho verbo esta
como hecho en el sistema. Una vez hecho esto cambiamos el tiempo de dicho verbo con el predicado cambia_tiempo, haciendo uso del numero 
(Numero1) del nuevo sujeto de la frase en pasiva para el encaje de patrones. Para determinar la terminacion del nuevo verbo volvemos a 
hacer uso de Numero1 y lo concatenamos en A con atom_concat.
*/
verbo(A, Tiempo, Numero, Persona, Numero1) --> [V], {
	atom_concat(Raiz, Terminacion, V),
	es_verbo(Raiz, Infinitivo),
	es_terminacion(Terminacion, Tiempo,Persona, Numero),
	cambia_tiempo(Tiempo, Numero1, C),
	atom_concat(C, ' ', NuevoTiempo),
	atom_concat(NuevoTiempo, Raiz, X1),
	cambia_terminacion(Infinitivo, Persona, Numero1, NuevaTerm),
	atom_concat(X1, NuevaTerm, A)
}.

/*
Predcados que definen articulos.
*/
es_articulo(el, singular, masculino).
es_articulo(una, singular, femenino).
es_articulo(la, singular, femenino).
es_articulo(unas, plural, femenino).

/*
Predicados que definen nombres.
*/
es_nombre(decision, singular, femenino).
es_nombre(cuaderno, singular, masculino).
es_nombre(ninio, singular, masculino).
es_nombre(flor, singular, femenino).
es_nombre(flores, plural, femenino).

/*
Predicados que definen pronombres.
*/
es_pronombre(yo, singular, _, 1).

/*
Predicados que definen preposiciones.
*/
es_preposicion(en).

/*
Predicados que definen verbos.
*/
es_verbo(dibuj, ar).
es_verbo(tom, ar).

/*
Predicados que determinan las terminaciones aceptadas por el sistema.
*/
es_terminacion(o, pasado, 3, singular).
es_terminacion(e, pasado, 1, singular).

/*
Predicados que definen los cambios que hay que aplicar sobre los verbos para la transformacion a pasiva.
*/
cambia_terminacion(ar, 3, singular, ada).
cambia_terminacion(ar, 1, singular, ada).
cambia_terminacion(ar, 3, plural, adas).
cambia_terminacion(ar, 1, plural, adas).

/*
Predicados que definen los cambios que hay que aplicar sobre los pronombres para la transformacion a pasiva.
*/
cambia_pronombre(yo, singular, _, 1, mi).

/*
Predicados que determinan las particulas que hay que añadir al verbo para la transformacion a pasiva.
*/
cambia_tiempo(pasado, singular, fue).
cambia_tiempo(pasado, plural, fueron).

















