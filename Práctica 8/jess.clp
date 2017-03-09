(defclass Developer (is-a :THING)
	(slot name (type string)))
	
(defclass App (is-a :THING)
	(slot download (type integer))
	(slot name (type string))
	(multislot operative_system (type symbol) (allowed-values IOS Android Windows))  
	(slot pegi (type integer))
	(slot price (type float))
	(slot score (type float)))

(defclass Game (is-a App))
(defclass Music (is-a App))
(defclass Social_network (is-a App))
(defclass Travel (is-a App))
(defclass Video (is-a App))



;; cuestion 1, carga de instancias desde jess

(mapclass Game)

(deftemplate GameJess
	(slot download (type integer))
	(slot name (type string))
	(multislot operative_system (type symbol) (allowed-values IOS Android Windows))  
	(slot pegi (type integer))
	(slot price (type float))
	(slot score (type float)))

(deffacts initial-games
	(GameJess (name "Clash of Clans") (download 125) (operative_system IOS) (pegi 13) (price 0.0) (score 4.4)))

(defrule load-apps
	(GameJess (name ?name) (download ?download) (operative_system ?operative_system) (pegi ?pegi) (price ?price) (score ?score))
	=>
	(make-instance of Game (name ?name) (download ?download) (operative_system ?operative_system) (pegi ?pegi) (price ?price) (score ?score)))

(mapclass Developer)

(deftemplate DeveloperJess
	(slot name (type string)))

(deffacts initial-developers
	(DeveloperJess (name "Disney")))

(defrule load-developers
	(DeveloperJess (name ?name))
	=>
	(make-instance of Developer (name ?name)))
