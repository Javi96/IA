	

(mapclass Developer)

(deftemplate Jess_developer (slot name))

(deffacts initial-developer
	(Jess_developer (name "Supercell"))
	(Jess_developer (name "Nintendo"))	
	(Jess_developer (name "Halfbrick Studios"))
	(Jess_developer (name "Electronic Arts "))
	(Jess_developer (name "Mojang AB"))
	(Jess_developer (name "King"))
	(Jess_developer (name "Warner Bros"))
	(Jess_developer (name "Etermax"))	
	(Jess_developer (name "Ketchapp"))
	(Jess_developer (name "Gameloft"))
	(Jess_developer (name "Spotify Ltd"))
	(Jess_developer (name "AppDreamTeam"))
	(Jess_developer (name "PSY"))
	(Jess_developer (name "Smash Mouth"))
	(Jess_developer (name "Rihanna"))
	(Jess_developer (name "Facebook"))
	(Jess_developer (name "Twitter"))
	(Jess_developer (name "Linkedln"))
	(Jess_developer (name "Google"))
	(Jess_developer (name "IBERIA"))
	(Jess_developer (name "You Tube"))
	(Jess_developer (name "Amazon"))
	(Jess_developer (name "Simon Schama"))
	(Jess_developer (name "Brandon Boyd"))
	(Jess_developer (name "Zoltán Géczi"))
	(Jess_developer (name "John Stevens Cabot Abbott"))
	(Jess_developer (name "Carlos Burges Ruiz de Gopegui"))
	(Jess_developer (name "Pere Manel Verdugo Zamora")))

(defrule load-developer
	(Jess_developer (name ?n))
	=>
	(make-instance of Developer(name ?n)))
	

(mapclass Operative_system)

(deftemplate Jess_Operative_system (slot name) (slot version))

(deffacts initial-operative_system
	(Jess_Operative_system (name "Android") (version 4.4))
	(Jess_Operative_system (name "iOS") (version 10.0))
	(Jess_Operative_system (name "Windows Phone") (version 8.1))
	(Jess_Operative_system (name "BlackBerry") (version 5.0))
	(Jess_Operative_system (name "Symbian") (version 6.0)))

(defrule load-OS
	(Jess_Operative_system (name ?n) (version ?v))
	=>
	(make-instance of Operative_system (name ?n) (version ?v)))
	

(mapclass App)

(deftemplate Jess-App (slot name) (slot developer) (slot download) (slot operative_system) (slot pegi) (slot price) (slot score) (slot type))

(deffacts ini-App
	(Jess-App (name "App") (developer "Disney") (download 200) (operative_system "Android") (pegi 12) (price 1.20) (score 2.0) (type App))
	(Jess-App (name "Game") (developer "Disney") (download 200) (operative_system "Android") (pegi 12) (price 1.20) (score 2.0) (type Game))
	(Jess-App (name "Comic") (developer "Disney") (download 200) (operative_system "Android") (pegi 12) (price 1.20) (score 2.0) (type Comic))
	(Jess-App (name "Clash Royale") (developer "Supercell") (download 33688) (operative_system "Android") (pegi 9) (price 0.0) (score 4.5) (type Action))
	(Jess-App (name "Super Mario Run") (developer "Nintendo") (download 7164) (operative_system "iOS") (pegi 4) (price 9.99) (score 2.0) (type Action))
	(Jess-App (name "Fruit Ninja") (developer "Halfbrick Studios") (download 9342) (operative_system "Windows Phone") (pegi 4) (price 0.0) (score 4.5) (type Action))
	(Jess-App (name "Plants vs. Zombies 2") (developer "Electronic Arts ") (download 19141) (operative_system "Android") (pegi 9) (price 0.0) (score 4.8) (type Adventure))
	(Jess-App (name "Minecraft: Pocket Edition") (developer "Mojang AB") (download 6835 ) (operative_system "BlackBerry") (pegi 9) (price 6.99) (score 4.0) (type Adventure))
	(Jess-App (name "Candy Crush Saga") (developer "King") (download 63887 ) (operative_system "Symbian") (pegi 4) (price 0.0) (score 4.0) (type Arcade))
	(Jess-App (name "Batman: Arkham Origins") (developer "Warner Bros") (download 593 ) (operative_system "Android") (pegi 9) (price 0.0) (score 4.0) (type Arcade))
	(Jess-App (name "Apalabrados") (developer "Etermax") (download 86187 ) (operative_system "Symbian") (pegi 4) (price 0.0) (score 4.5) (type TableGame))
	(Jess-App (name "2048") (developer "Ketchapp") (download 4643 ) (operative_system "Android") (pegi 4) (price 0.0) (score 4.5) (type TableGame))
	(Jess-App (name "UNO & Friends") (developer "Gameloft") (download 4916 ) (operative_system "iOS") (pegi 9) (price 1.0) (score 4.0) (type Cards))
	(Jess-App (name "MORTAL KOMBAT X") (developer "Warner Bros") (download 457897) (operative_system "iOS") (pegi 18) (price 15.00) (score 1.5) (type Cards))
	(Jess-App (name "Spotify Music") (developer "Spotify Ltd") (download 12648) (operative_system "Android") (pegi 4) (price 0.0) (score 5.0) (type Music))
	(Jess-App (name "iMusic ") (developer "AppDreamTeam") (download 453) (operative_system "BlackBerry") (pegi 4) (price 0.0) (score 2.0) (type Music))
	(Jess-App (name "All Stars") (developer "Smash Mouth") (download 496258) (operative_system "Windows Phone") (pegi 4) (price 5.20) (score 5.0) (type Rock))
	(Jess-App (name "Gangnam Style") (developer "PSY") (download 169487562) (operative_system "iOS") (pegi 9) (price 1.20) (score 3.0) (type Pop))
	(Jess-App (name "Loud") (developer "Rihanna") (download 123654884) (operative_system "Android") (pegi 4) (price 1.70) (score 5.0) (type Electronic))
	(Jess-App (name "Facebook") (developer "Facebook") (download 2165451) (operative_system "iOS") (pegi 9) (price 0.0) (score 4.8) (type Social_network))
	(Jess-App (name "Twitter") (developer "Twitter") (download 9521784) (operative_system "Android") (pegi 9) (price 0.0) (score 4.4) (type Social_network))
	(Jess-App (name "Linkedln") (developer "Linkedln") (download 326594) (operative_system "BlackBerry") (pegi 9) (price 0.0) (score 4.3) (type Social_network))
	(Jess-App (name "Google Earth") (developer "Google") (download 65491327) (operative_system "Android") (pegi 4) (price 0.0) (score 4.5) (type Travel))
	(Jess-App (name "Iberia") (developer "IBERIA") (download 459865) (operative_system "iOS") (pegi 4) (price 0.0) (score 1.5) (type Travel))
	(Jess-App (name "You Tube") (developer "You Tube") (download 789542) (operative_system "iOS") (pegi 4) (price 0.0) (score 5.0) (type Video))
	(Jess-App (name "Twitch") (developer "Amazon") (download 3265415) (operative_system "Symbian") (pegi 4) (price 0.0) (score 5.0) (type Video))
	(Jess-App (name "Book") (developer "Disney") (download 200) (operative_system "Android") (pegi 12) (price 1.20) (score 2.0) (type Book))
	(Jess-App (name "The Face of Britain") (developer "Simon Schama") (download 8654) (operative_system "BlackBerry") (pegi 4) (price 4.0) (score 3.0) (type Art))
	(Jess-App (name "So the Echo") (developer "Brandon Boyd") (download 45) (operative_system "Symbian") (pegi 4) (price 45.90) (score 4.5) (type Art))
	(Jess-App (name "Steve Jobs") (developer "Zoltán Géczi") (download 465994) (operative_system "iOS") (pegi 4) (price 0.0) (score 4.5) (type Biography))
	(Jess-App (name "Benjamin Franklin") (developer "John Stevens Cabot Abbott") (download 4569) (operative_system "Android") (pegi 4) (price 0.0) (score 3.0) (type Biography))
	(Jess-App (name "Automator para OS X") (developer "Carlos Burges Ruiz de Gopegui") (download 4253387) (operative_system "iOS") (pegi 4) (price 5.0) (score 4.0) (type Informatic))
	(Jess-App (name "iCloud Beta") (developer "Pere Manel Verdugo Zamora") (download 574228) (operative_system "iOS") (pegi 4) (price 6.5) (score 4.0) (type Informatic)))
	
(defrule load-Apps
	(Jess-App (name ?name) (download ?download) (pegi ?pegi) (type ?type) (price ?price) (score ?score) (developer ?dev) (operative_system ?os))
	?h1 <- (object (is-a Developer) (name ?dev))
	?h2 <- (object (is-a Operative_system) (name ?os))
	=>
	(make-instance of App (name ?name) (developer ?h1)(download ?download) (operative_system ?h2)(pegi ?pegi) (price ?price) (score ?score) (type ?type)))

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

(mapclass User)

(defrule recom-user-Travels
	(object (is-a User) (OBJECT ?user) (name ?name) (age ?age) (device ?OS) (recom $?recom) (pleasure Travel))
	(object (is-a App) (OBJECT ?app) (pegi ?pegi&:(< ?pegi ?age)) (operative_system ?OS))
	(object (is-a Operative_system) (OBJECT ?OS) (name ?nameOS))
	(test (not (member$ ?app $?recom)))
	=>
	(slot-insert$ ?user recom (+ 1 (length$ ?recom)) ?app)
)

