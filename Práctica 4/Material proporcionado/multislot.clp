; Ejemplos de uso de las comparaciones de multislots

(deftemplate usuario
    (slot nombre)
    (multislot gustos))

(deffacts inicio
	(usuario (nombre juan) (gustos lectura juegos fotos))
	(usuario (nombre maria) (gustos juegos lectura))
    (usuario (nombre luis) (gustos lectura juegos fotos))
    (usuario (nombre pedro) (gustos juegos fotos lectura))
    (usuario (nombre clara) (gustos musica))
    )

; R0 determina a qué usuarios les gusta hacer fotos.
(defrule R0
    (usuario (nombre ?n)(gustos $? fotos $?))
    =>
    (printout t "A " ?n " le gusta hacer fotos" crlf))

; R1 determina qué usuarios tienen gustos iguales aunque estén en distinto orden. 
; Utiliza complement$ que devuelve los elementos que están en la segunda lista 
; y no están en la primera.
; create$ sin argumentos devuelve la lista vacía
(defrule R1
    (usuario (nombre ?n) (gustos $?g))
    (usuario (nombre ?m) (gustos $?h))
    (test(neq ?n ?m))
    (test(eq (complement$ $?g $?h) (create$ )))
	(test(eq (complement$ $?h $?g) (create$ )))
    =>
    (printout t "gustos iguales " ?n " " ?m crlf))

; R2 determina qué usuarios tienen gustos que son un subconjunto de los gustos 
; de otro usuario pero no coinciden en su totalidad. 
(defrule R2
    (usuario (nombre ?n) (gustos $?g))
    (usuario (nombre ?m) (gustos $?h))
    (test(neq ?n ?m))
    (test(eq (complement$ $?g $?h) (create$ )))
	(test(neq (complement$ $?h $?g) (create$ )))
    =>
    (printout t "gustos de " ?m " incluidos en los de " ?n crlf))

; R3 determina qué usuarios tienen gustos que son un subconjunto de los gustos 
; de otro usuario o coinciden en su totalidad. 
(defrule R3
    (usuario (nombre ?n) (gustos $?g))
    (usuario (nombre ?m) (gustos $?h))
    (test(neq ?n ?m))
    (test(eq (complement$ $?g $?h) (create$ )))
    =>
    (printout t "gustos de " ?m " incluidos o iguales a los de " ?n crlf))

(reset)
(run)