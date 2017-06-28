/*
 * Estado inicial: fichas blancas a la izquierda, fichas negras a la
 * derecha. El hueco esta entre ambas listas de fichas.
 */

goal(state(['W','W','W'],['B','B','B'])).

/*
 * Estado final: fichas negras a la izquierda, fichas blancas a la
 * derecha. El hueco esta entre ambas listas de fichas.
 */

begin(state(['B','B','B'],['W','W','W'])).

% Esta operación mueve el una ficha hacia la izquierda, saltando las dos
% adyacentes. En el primer reverse damos la vuelta a la primera lista
% del estado actual en otra lista donde accedemos a las tres ultimas
% componentes de la original ([1,2,3,4]->[4,3,2|1]).
% En el primer append concatenamos el resultado anterior de la forma que
% nos interesa con la segunda lista del estado actual
% ([3,4,2],[5,6]->[3,4,2,5,6]) y lo guardamos en la segunda lista del
% resultado.
% En el segundo reverse le damos la vuelta al cuerpo de S en
% una variable temporal ([1]->[1]) y en el último append concatenamos el
% resultado anterior con una lista vacia sobre la primera lista del
% estado resultado.
% El resultado obtenido es de la forma [1][3,4,2,5,6], donde podemos ver
% que hemos cambiado el huevo vacío por la ficha con valor 2.
% Las operaciones para 'ii' e 'i' funcionan igual, solo que en el primer
% reverse tomamos menos elementos al ser un desplazamiento más corto.

move(state(L, R), state(FL, FR), 'iii'):-
	reverse(L, [A,B,C|S]),
	append([B, A, C], R, FR),
	reverse(S, TEMP),
	append(TEMP,[] , FL).

move(state(L, R), state(FL, FR), 'ii'):-
	reverse(L, [A,B|S]),
	append([A, B], R, FR),
	reverse(S, TEMP),
	append(TEMP, [] ,FL).

move(state(L, R), state(FL, FR), 'i'):-
	reverse(L, [A|S]),
	append([A], R, FR),
	reverse(S, TEMP),
	append(TEMP, [] ,FL).

% Este caso es similar al anterior pero al mover fichas hacia la
% izquierda nos ahorramos tener que usar reverse, pues solo fragmentamos
% las listas del estado inicial y las concatenamos con las del estado
% resultado como veamos conveniente.

move(state(L, [A, B, C| S]), state(FL, FR), 'ddd'):-
	append(L, [C, A, B], FL),
	append(S, [] ,FR).

move(state(L, [A, B| S]), state(FL, FR), 'dd'):-
	append(L, [B, A], FL),
	append(S, [] ,FR).

move(state(L, [A| S]), state(FL, FR), 'd'):-
	append(L, [A], FL),
	append(S, [] ,FR).

% Predicado que ejecuta los movimientos que encajen con el estado actual
% de manera que si se va a pasar por un estado que ha sido visitad, éste
% es descartado y se pasa al siguiente, añadiendo los estados válidos
%  la lista de soluciones.

solution(STATE, _, [], [STATE]):-
	goal(STATE),
	nl.

solution(STATE, VISITED, [H_OPERATOR | T_OPERATOR], [STATE | P_STATE]):-
	move(STATE, NEXT_STATE, H_OPERATOR),
	\+ member(NEXT_STATE, VISITED),
	solution(NEXT_STATE, [NEXT_STATE | VISITED], T_OPERATOR, P_STATE).

% Este predicado determina la forma de la salida por pantalla, de manera
% que para cada elemento de la lista, lo muestra en una línea seguido de
% su posición dentro de la lista.

showList([], _):- nl.
showList([HEAD | TAIL], C):-
	tab(2),
	write(HEAD),
	write(' '),
	writeln(C),
	D is C +1,
	showList(TAIL, D).

% Predicado que realiza la consulta y muestra por pantalla la secuencia
% de operandos seguida de la lista de estados por los que se ha pasado
% sin que se hayan repetido, hasta llegar al estado objetivo.

query:-	begin(STATE),
	solution(STATE,[STATE], OPERATORS, STATES),
	writeln('Operations without repetition: '),
	showList(OPERATORS, 0),
	writeln('State path: '),
	showList(STATES, 0).





