(defclass Developer (is-a :THING)
	(slot name (type string)))

(defclass Operative_system (is-a :THING)
	(slot name (type string))
	(slot version (type float)))
	
(defclass App (is-a :THING)
	(slot download (type integer))
	(slot name (type string))
	(slot pegi (type integer))
	(slot price (type float))
	(slot score (type float))
	(slot operative_system (type instance) (allowed-classes Operative_system))
	(slot developer (type instance) (allowed-classes Developer)))

(defclass Game (is-a App))
(defclass Music (is-a App))
(defclass Social_network (is-a App))
(defclass Travel (is-a App))
(defclass Video (is-a App))



*************************************************************
*************************************************************

(mapclass Operative_system)

(deftemplate OperativeSystemJess
	(slot name (type string))
	(slot version (type float)))
	
(deffacts initial-os "Initial instances of class Operative_system"
	(OperativeSystemJess (name "iOS") (version 10.0))
	(OperativeSystemJess (name "Android 2") (version 4.0)))

(defrule load-os
	(OperativeSystemJess (name ?name) (version ?version))
	=>
	(make-instance of Operative_system (name ?name) (version ?version)))

*************************************************************
*************************************************************

(mapclass Developer)

(deftemplate DeveloperJess
	(slot name (type string)))

(deffacts initial-developers
	(DeveloperJess (name "Disney"))
	(DeveloperJess (name "Electronic Arts")))

(defrule load-developers
	(DeveloperJess (name ?name))
	=>
	(make-instance of Developer (name ?name)))
	
*************************************************************
*************************************************************

(mapclass Game)

(deftemplate GameJess
	(slot download (type integer))
	(slot name (type string))
	(slot pegi (type integer))
	(slot price (type float))
	(slot score (type float))
	(slot operative_system (type instance) (allowed-classes Operative_system))
	(slot developer (type instance) (allowed-classes Developer)))

(deffacts initial-games "Initial instances of class App::Game"
	(GameJess (name "Juego 1") (download 125465) (operative_system iOS) (pegi 13) (price 0.0) (score 4.4) (developer Disney)))

(defrule load-apps
	(GameJess (name ?name) (download ?download) (operative_system ?operative_system) (pegi ?pegi) (price ?price) (score ?score) (developer ?developer))
	=>
	(make-instance of Game (name ?name) (download ?download) (operative_system ?operative_system) (pegi ?pegi) (price ?price) (score ?score) (developer ?developer)))
