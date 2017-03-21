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


(mapclass Operative_system)

(deftemplate OperativeSystemJess
	(slot name)
	(slot version))
	
(deffacts initial-os "Initial instances of class Operative_system"
	(OperativeSystemJess (name "iOS") (version 10.0))
	(OperativeSystemJess (name "Android") (version 4.0)))

(defrule load-os
	(OperativeSystemJess (name ?name) (version ?version))
	=>
	(make-instance of Operative_system (name ?name) (version ?version)))


(mapclass Developer)

(deftemplate DeveloperJess
	(slot name))

(deffacts initial-developers
	(DeveloperJess (name "Disney"))
	(DeveloperJess (name "YouTube"))
	(DeveloperJess (name "Electronic Arts")))

(defrule load-developers
	(DeveloperJess (name ?name))
	=>
	(make-instance of Developer (name ?name)))


(mapclass Game)

(deftemplate GameJess
	(slot download)
	(slot name)
	(slot pegi)
	(slot price)
	(slot score)
	(slot os_name)
	(slot os_version)
	(slot dev_name))

(deffacts initial-game-app "Initial instances of class App::Game"
	(GameJess (name "Juego 1") (download 125465) (os_name "iOS") (os_version 10)(pegi 13) (price 0.0) (score 4.4) (dev_name "Disney")))

(defrule load-game
	(GameJess (name ?name) (download ?download)	(pegi ?pegi) (price ?price) (score ?score)
	=>
	(make-instance of Game (name ?name) (download ?download) (pegi ?pegi) (price ?price) (score ?score))))

(defrule load-game-dev
	(GameJess (name ?name) (dev_name ?dev_name))
	(object (is-a Developer) (name ?dev_name) (OBJECT ?dev))
	(object (is-a Game) (name ?name) (developer ?dev_inst) (OBJECT ?g))
	(test (member$ (Developer (name ?dev_name)) ?dev))
	=>
	(slot-insert$ ?g (developer (name ?dev_name))))
	
(defrule load-game-os
	(GameJess (name ?name) (os_name ?os_name) (os_version ?os_version))
	(object (is-a Operative_system) (name ?os_name) (version ?os_version) (OBJECT ?os))
	(object (is-a Game) (name ?name) (operative_system ?op_sys) (OBJECT ?g))
	(test (member$ (Operative_system (name ?os_name) (version ?os_version)) ?os))
	=>
	(slot-insert$ ?g (operative_system (name ?os_name) (version ?os_version))))
	
(mapclass Music)

(deftemplate MusicJess
	(slot download)
	(slot name)
	(slot pegi)
	(slot price)
	(slot score)
	(slot operative_system)
	(slot developer))

(deffacts intial-music-app "Initial instances of class App::Music"
	(MusicJess (name "Music 1") (download 123) (operative_system Android) (pegi 4) (price 0.0) (score 3.2) (developer YouTube)))

(defrule load-music
	(MusicJess (name ?name) (download ?download) (operative_system ?operative_system) (pegi ?pegi) (price ?price) (score ?score) (developer ?developer))
	=>
	(make-instance of Music (name ?name) (download ?download) (operative_system ?operative_system) (pegi ?pegi) (price ?price) (score ?score) (developer ?developer)))



(mapclass Social_network)

(deftemplate Social_networkJess
	(slot download)
	(slot name)
	(slot pegi)
	(slot price)
	(slot score)
	(slot operative_system)
	(slot developer))

(deffacts intial-social_network-app "Initial instances of class App::Social_network"
	(Social_networkJess (name "Social_network 1") (download 123) (operative_system Android) (pegi 4) (price 0.0) (score 3.2) (developer YouTube)))

(defrule load-social_network
	(Social_networkJess (name ?name) (download ?download) (operative_system ?operative_system) (pegi ?pegi) (price ?price) (score ?score) (developer ?developer))
	=>
	(make-instance of Social_network (name ?name) (download ?download) (operative_system ?operative_system) (pegi ?pegi) (price ?price) (score ?score) (developer ?developer)))


(mapclass Travel)

(deftemplate TravelJess
	(slot download)
	(slot name)
	(slot pegi)
	(slot price)
	(slot score)
	(slot operative_system)
	(slot developer))

(deffacts intial-travel-app "Initial instances of class App::Travel"
	(TravelJess (name "Travel 1") (download 123) (operative_system Android) (pegi 4) (price 0.0) (score 3.2) (developer YouTube)))

(defrule load-travel
	(TravelJess (name ?name) (download ?download) (operative_system ?operative_system) (pegi ?pegi) (price ?price) (score ?score) (developer ?developer))
	=>
	(make-instance of Travel (name ?name) (download ?download) (operative_system ?operative_system) (pegi ?pegi) (price ?price) (score ?score) (developer ?developer)))


(mapclass Video)

(deftemplate VideoJess
	(slot download)
	(slot name)
	(slot pegi)
	(slot price)
	(slot score)
	(slot operative_system)
	(slot developer))

(deffacts intial-video-app "Initial instances of class App::Video"
	(VideoJess (name "Video 1") (download 123) (operative_system Android) (pegi 4) (price 0.0) (score 3.2) (developer YouTube)))

(defrule load-video
	(VideoJess (name ?name) (download ?download) (operative_system ?operative_system) (pegi ?pegi) (price ?price) (score ?score) (developer ?developer))
	=>
	(make-instance of Video (name ?name) (download ?download) (operative_system ?operative_system) (pegi ?pegi) (price ?price) (score ?score) (developer ?developer)))


