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
	(slot developer (type instance) (allowed-classes Developer))
	(slot type (type symbol) (allowed-values App Game Action Adventure Arcade TableGame Cards Music Social_network Rock Pop Electronic Travel Video Book Art Biography Teen Comic Informatic)))

(defclass Game (is-a App))
(defclass Action (is-a Game))
(defclass Adventure(is-a Game))
(defclass Arcade(is-a Game))
(defclass TableGame (is-a Game))
(defclass Cards(is-a Game))

(defclass Music (is-a App))
(defclass Rock (is-a Music))
(defclass Pop (is-a Music))
(defclass Electronic(is-a Music))

(defclass Social_network (is-a App))
(defclass Travel (is-a App))
(defclass Video (is-a App))

(defclass Book (is-a App))
(defclass Art (is-a Book))
(defclass Biography (is-a Book))
(defclass Teen (is-a Book))
(defclass Comic (is-a Book))
(defclass Informatic (is-a Book))

(mapclass Developer)

(deftemplate Jess_developer (slot name))

(deffacts ini-devs
	(Jess_developer (name "Disney")))

(defrule load-devs
	(Jess_developer (name ?n))
	=>
	(make-instance of Developer(name ?n)))
	

(mapclass Operative_system)

(deftemplate Jess_OS (slot name) (slot version))

(deffacts ini-OS
	(Jess_OS (name "Android") (version 2.0)))

(defrule load-OS
	(Jess_OS (name ?n) (version ?v))
	=>
	(make-instance of Operative_system (name ?n) (version ?v)))
	

(mapclass App)

(deftemplate Jess-App (slot name) (slot developer) (slot download) (slot operative_system) (slot pegi) (slot price) (slot score) (slot type))

(deffacts ini-App
	(Jess-App (name "App") (developer "Disney") (download 200) (operative_system "Android") (pegi 12) (price 1.20) (score 2.0) (type App))
	(Jess-App (name "Game") (developer "Disney") (download 200) (operative_system "Android") (pegi 12) (price 1.20) (score 2.0) (type Game))
	(Jess-App (name "Action") (developer "Disney") (download 200) (operative_system "Android") (pegi 12) (price 1.20) (score 2.0) (type Action))
	(Jess-App (name "Adventure") (developer "Disney") (download 200) (operative_system "Android") (pegi 12) (price 1.20) (score 2.0) (type Adventure))
	(Jess-App (name "Arcade") (developer "Disney") (download 200) (operative_system "Android") (pegi 12) (price 1.20) (score 2.0) (type Arcade))
	(Jess-App (name "TableGame") (developer "Disney") (download 200) (operative_system "Android") (pegi 12) (price 1.20) (score 2.0) (type TableGame))
	(Jess-App (name "Cards") (developer "Disney") (download 200) (operative_system "Android") (pegi 12) (price 1.20) (score 2.0) (type Cards))
	(Jess-App (name "Music") (developer "Disney") (download 200) (operative_system "Android") (pegi 12) (price 1.20) (score 2.0) (type Music))
	(Jess-App (name "Rock") (developer "Disney") (download 200) (operative_system "Android") (pegi 12) (price 1.20) (score 2.0) (type Rock))
	(Jess-App (name "Pop") (developer "Disney") (download 200) (operative_system "Android") (pegi 12) (price 1.20) (score 2.0) (type Pop))
	(Jess-App (name "Electronic") (developer "Disney") (download 200) (operative_system "Android") (pegi 12) (price 1.20) (score 2.0) (type Electronic))
	(Jess-App (name "Social_network") (developer "Disney") (download 200) (operative_system "Android") (pegi 12) (price 1.20) (score 2.0) (type Social_network))
	(Jess-App (name "Travel") (developer "Disney") (download 200) (operative_system "Android") (pegi 12) (price 1.20) (score 2.0) (type Travel))
	(Jess-App (name "Video") (developer "Disney") (download 200) (operative_system "Android") (pegi 12) (price 1.20) (score 2.0) (type Video))
	(Jess-App (name "Book") (developer "Disney") (download 200) (operative_system "Android") (pegi 12) (price 1.20) (score 2.0) (type Book))
	(Jess-App (name "Art") (developer "Disney") (download 200) (operative_system "Android") (pegi 12) (price 1.20) (score 2.0) (type Art))
	(Jess-App (name "Biography") (developer "Disney") (download 200) (operative_system "Android") (pegi 12) (price 1.20) (score 2.0) (type Biography))
	(Jess-App (name "Teen") (developer "Disney") (download 200) (operative_system "Android") (pegi 12) (price 1.20) (score 2.0) (type Teen))
	(Jess-App (name "Comic") (developer "Disney") (download 200) (operative_system "Android") (pegi 12) (price 1.20) (score 2.0) (type Comic))
	(Jess-App (name "Informatic") (developer "Disney") (download 200) (operative_system "Android") (pegi 12) (price 1.20) (score 2.0) (type Informatic)))
	
(defrule load-Apps
	(Jess-App (name ?n) (download ?d) (pegi ?pegi) (type ?t) (price ?price) (score ?s) (developer ?dev) (operative_system ?os))
	?h1 <- (object (is-a Developer) (name ?dev))
	?h2 <- (object (is-a Operative_system) (name ?os))
	=>
	(make-instance of App (name ?n) (developer ?h1)(download ?d) (operative_system ?h2)(pegi ?pegi) (price ?price) (score ?s) (type ?t)))

(mapclass :THING)
(mapclass Game)

(defrule MAIN::set-game
	(object (is-a App) (OBJECT ?app) (type Game))
	(object (is-a :STANDARD-CLASS) (:NAME "Game") (:DIRECT-INSTANCES $?list))
	=>
	(slot-set "Game" :DIRECT-INSTANCES
	(insert$ ?list (+ 1 (length$ ?list)) ?app)))

 
(mapclass Action)

(defrule MAIN::set-action-superclass
	(object (is-a App) (OBJECT ?app) (type Action))
	(object (is-a :STANDARD-CLASS) (:NAME "Action") (:DIRECT-INSTANCES $?list1))
	(object (is-a :STANDARD-CLASS) (:NAME "Game") (:DIRECT-INSTANCES $?list2))
	=>
	(slot-set "Action" :DIRECT-INSTANCES
	(insert$ ?list1 (+ 1 (length$ ?list1)) ?app))
	(slot-set "Game" :DIRECT-INSTANCES
	(insert$ ?list2 (+ 1 (length$ ?list2)) ?app)))
 
 
(mapclass Adventure)

(defrule MAIN::set-Adventure-superclass
	(object (is-a App) (OBJECT ?app) (type Adventure))
	(object (is-a :STANDARD-CLASS) (:NAME "Adventure") (:DIRECT-INSTANCES $?list1))
	(object (is-a :STANDARD-CLASS) (:NAME "Game") (:DIRECT-INSTANCES $?list2))
	=>
	(slot-set "Adventure" :DIRECT-INSTANCES
	(insert$ ?list1 (+ 1 (length$ ?list1)) ?app))
	(slot-set "Game" :DIRECT-INSTANCES
	(insert$ ?list2 (+ 1 (length$ ?list2)) ?app)))
 
 
(mapclass Arcade)
 
(defrule MAIN::set-Arcade-superclass
	(object (is-a App) (OBJECT ?app) (type Arcade))
	(object (is-a :STANDARD-CLASS) (:NAME "Arcade") (:DIRECT-INSTANCES $?list1))
	(object (is-a :STANDARD-CLASS) (:NAME "Game") (:DIRECT-INSTANCES $?list2))
	=>
	(slot-set "Arcade" :DIRECT-INSTANCES
	(insert$ ?list1 (+ 1 (length$ ?list1)) ?app))
	(slot-set "Game" :DIRECT-INSTANCES
	(insert$ ?list2 (+ 1 (length$ ?list2)) ?app)))
 
 
(mapclass TableGame) 
(defrule MAIN::set-TableGame-superclass
	(object (is-a App) (OBJECT ?app) (type TableGame))
	(object (is-a :STANDARD-CLASS) (:NAME "TableGame") (:DIRECT-INSTANCES $?list1))
	(object (is-a :STANDARD-CLASS) (:NAME "Game") (:DIRECT-INSTANCES $?list2))
	=>
	(slot-set "TableGame" :DIRECT-INSTANCES
	(insert$ ?list1 (+ 1 (length$ ?list1)) ?app))
	(slot-set "Game" :DIRECT-INSTANCES
	(insert$ ?list2 (+ 1 (length$ ?list2)) ?app)))
 
 
(mapclass Cards)
(defrule MAIN::set-Cards-superclass
	(object (is-a App) (OBJECT ?app) (type Cards))
	(object (is-a :STANDARD-CLASS) (:NAME "Cards") (:DIRECT-INSTANCES $?list1))
	(object (is-a :STANDARD-CLASS) (:NAME "Game") (:DIRECT-INSTANCES $?list2))
	=>
	(slot-set "Cards" :DIRECT-INSTANCES
	(insert$ ?list1 (+ 1 (length$ ?list1)) ?app))
	(slot-set "Game" :DIRECT-INSTANCES
	(insert$ ?list2 (+ 1 (length$ ?list2)) ?app)))
  
 

(mapclass Music)
(defrule MAIN::set-Music
	(object (is-a App) (OBJECT ?app) (type Music))
	(object (is-a :STANDARD-CLASS) (:NAME "Music") (:DIRECT-INSTANCES $?list))
	=>
	(slot-set "Music" :DIRECT-INSTANCES
	(insert$ ?list (+ 1 (length$ ?list)) ?app)))

 
(mapclass Pop)
(defrule MAIN::set-Pop-superclass
	(object (is-a App) (OBJECT ?app) (type Pop))
	(object (is-a :STANDARD-CLASS) (:NAME "Pop") (:DIRECT-INSTANCES $?list1))
	(object (is-a :STANDARD-CLASS) (:NAME "Music") (:DIRECT-INSTANCES $?list2))
	=>
	(slot-set "Pop" :DIRECT-INSTANCES
	(insert$ ?list1 (+ 1 (length$ ?list1)) ?app))
	(slot-set "Music" :DIRECT-INSTANCES
	(insert$ ?list2 (+ 1 (length$ ?list2)) ?app)))
 

(mapclass Rock)
(defrule MAIN::set-Rock-superclass
	(object (is-a App) (OBJECT ?app) (type Rock))
	(object (is-a :STANDARD-CLASS) (:NAME "Rock") (:DIRECT-INSTANCES $?list1))
	(object (is-a :STANDARD-CLASS) (:NAME "Music") (:DIRECT-INSTANCES $?list2))
	=>
	(slot-set "Rock" :DIRECT-INSTANCES
	(insert$ ?list1 (+ 1 (length$ ?list1)) ?app))
	(slot-set "Music" :DIRECT-INSTANCES
	(insert$ ?list2 (+ 1 (length$ ?list2)) ?app)))
 
 
(mapclass Electronic)
(defrule MAIN::set-Electronic-superclass
	(object (is-a App) (OBJECT ?app) (type Electronic))
	(object (is-a :STANDARD-CLASS) (:NAME "Electronic") (:DIRECT-INSTANCES $?list1))
	(object (is-a :STANDARD-CLASS) (:NAME "Music") (:DIRECT-INSTANCES $?list2))
	=>
	(slot-set "Electronic" :DIRECT-INSTANCES
	(insert$ ?list1 (+ 1 (length$ ?list1)) ?app))
	(slot-set "Music" :DIRECT-INSTANCES
	(insert$ ?list2 (+ 1 (length$ ?list2)) ?app)))
 

(mapclass Social_network)
(defrule MAIN::set-Social_network
	(object (is-a App) (OBJECT ?app) (type Social_network))
	(object (is-a :STANDARD-CLASS) (:NAME "Social_network") (:DIRECT-INSTANCES $?list))
	=>
	(slot-set "Social_network" :DIRECT-INSTANCES
	(insert$ ?list (+ 1 (length$ ?list)) ?app)))

(mapclass Travel)
(defrule MAIN::set-Travel
	(object (is-a App) (OBJECT ?app) (type Travel))
	(object (is-a :STANDARD-CLASS) (:NAME "Travel") (:DIRECT-INSTANCES $?list))
	=>
	(slot-set "Travel" :DIRECT-INSTANCES
	(insert$ ?list (+ 1 (length$ ?list)) ?app)))


(mapclass Video)
(defrule MAIN::set-Video
	(object (is-a App) (OBJECT ?app) (type Video))
	(object (is-a :STANDARD-CLASS) (:NAME "Video") (:DIRECT-INSTANCES $?list))
	=>
	(slot-set "Video" :DIRECT-INSTANCES
	(insert$ ?list (+ 1 (length$ ?list)) ?app)))
 
 
(mapclass Book)
(defrule MAIN::set-Book
	(object (is-a App) (OBJECT ?app) (type Book))
	(object (is-a :STANDARD-CLASS) (:NAME "Book") (:DIRECT-INSTANCES $?list))
	=>
	(slot-set "Book" :DIRECT-INSTANCES
	(insert$ ?list (+ 1 (length$ ?list)) ?app))) 
 
 
(mapclass Art)
(defrule MAIN::set-Art-superclass
	(object (is-a App) (OBJECT ?app) (type Art))
	(object (is-a :STANDARD-CLASS) (:NAME "Art") (:DIRECT-INSTANCES $?list1))
	(object (is-a :STANDARD-CLASS) (:NAME "Book") (:DIRECT-INSTANCES $?list2))
	=>
	(slot-set "Art" :DIRECT-INSTANCES
	(insert$ ?list1 (+ 1 (length$ ?list1)) ?app))
	(slot-set "Book" :DIRECT-INSTANCES
	(insert$ ?list2 (+ 1 (length$ ?list2)) ?app))) 
 
(mapclass Biography)
(defrule MAIN::set-Biography-superclass
	(object (is-a App) (OBJECT ?app) (type Biography))
	(object (is-a :STANDARD-CLASS) (:NAME "Biography") (:DIRECT-INSTANCES $?list1))
	(object (is-a :STANDARD-CLASS) (:NAME "Book") (:DIRECT-INSTANCES $?list2))
	=>
	(slot-set "Biography" :DIRECT-INSTANCES
	(insert$ ?list1 (+ 1 (length$ ?list1)) ?app))
	(slot-set "Book" :DIRECT-INSTANCES
	(insert$ ?list2 (+ 1 (length$ ?list2)) ?app))) 
 
(mapclass Teen)
(defrule MAIN::set-Teen-superclass
	(object (is-a App) (OBJECT ?app) (type Teen))
	(object (is-a :STANDARD-CLASS) (:NAME "Teen") (:DIRECT-INSTANCES $?list1))
	(object (is-a :STANDARD-CLASS) (:NAME "Book") (:DIRECT-INSTANCES $?list2))
	=>
	(slot-set "Teen" :DIRECT-INSTANCES
	(insert$ ?list1 (+ 1 (length$ ?list1)) ?app))
	(slot-set "Book" :DIRECT-INSTANCES
	(insert$ ?list2 (+ 1 (length$ ?list2)) ?app))) 

(mapclass Comic)
(defrule MAIN::set-Comic-superclass
	(object (is-a App) (OBJECT ?app) (type Comic))
	(object (is-a :STANDARD-CLASS) (:NAME "Comic") (:DIRECT-INSTANCES $?list1))
	(object (is-a :STANDARD-CLASS) (:NAME "Book") (:DIRECT-INSTANCES $?list2))
	=>
	(slot-set "Comic" :DIRECT-INSTANCES
	(insert$ ?list1 (+ 1 (length$ ?list1)) ?app))
	(slot-set "Book" :DIRECT-INSTANCES
	(insert$ ?list2 (+ 1 (length$ ?list2)) ?app))) 

 
 
(mapclass Informatic)
(defrule MAIN::set-Informatic-superclass
	(object (is-a App) (OBJECT ?app) (type Informatic))
	(object (is-a :STANDARD-CLASS) (:NAME "Informatic") (:DIRECT-INSTANCES $?list1))
	(object (is-a :STANDARD-CLASS) (:NAME "Book") (:DIRECT-INSTANCES $?list2))
	=>
	(slot-set "Informatic" :DIRECT-INSTANCES
	(insert$ ?list1 (+ 1 (length$ ?list1)) ?app))
	(slot-set "Book" :DIRECT-INSTANCES
	(insert$ ?list2 (+ 1 (length$ ?list2)) ?app))) 
