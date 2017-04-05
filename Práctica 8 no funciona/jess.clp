(mapclass Developer)

(deftemplate Jess_developer "Class definition for developers"
	(slot name))

(deffacts initial-developer "Initial developers in the system"
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

(defrule load-developer "Creates instances from the developer template Jess in Protégé"
	(Jess_developer (name ?name))
	=>
	(make-instance of Developer(name ?name)))
	
(mapclass Operative_system)

(deftemplate Jess_operative_system "Class definition for operative systems"
	(slot name) 
	(slot version))

(deffacts initial-operative-system "Initial operative systems in the system"
	(Jess_operative_system (name "Android") (version 4))
	(Jess_operative_system (name "Android") (version 5))
	(Jess_operative_system (name "Android") (version 6))
	(Jess_operative_system (name "iOS") (version 8))
	(Jess_operative_system (name "iOS") (version 9))
	(Jess_operative_system (name "iOS") (version 10))
	(Jess_operative_system (name "Windows Phone") (version 7))
	(Jess_operative_system (name "Windows Phone") (version 8))
	(Jess_operative_system (name "BlackBerry") (version 5))
	(Jess_operative_system (name "BlackBerry") (version 6))
	(Jess_operative_system (name "BlackBerry") (version 7))
	(Jess_operative_system (name "Symbian") (version 7))
	(Jess_operative_system (name "Symbian") (version 8)))

(defrule load-operative-system "Creates instances from the operative system template Jess in Protégé"
	(Jess_operative_system (name ?name) (version ?version))
	=>
	(make-instance of Operative_system (name ?name) (version ?version)))
	

(mapclass App)

(deftemplate Jess_app "Class definition for apps"
	(slot name) 
	(slot developer) 
	(slot download) 
	(slot operative_system) 
	(slot version) 
	(slot pegi) 
	(slot price) 
	(slot score) 
	(slot type))

(deffacts initial-app "Initial apps in the system"
	(Jess_app (name "Clash Royale") (developer "Supercell") (download 33688) (operative_system "Android") (version 4) (pegi 9) (price 0.0) (score 4.5) (type Action))
	(Jess_app (name "Super Mario Run") (developer "Nintendo") (download 7164) (operative_system "iOS") (version 8) (pegi 10) (price 9.99) (score 2.0) (type Action))
	(Jess_app (name "Fruit Ninja") (developer "Halfbrick Studios") (download 9342) (operative_system "Windows Phone") (version 8) (pegi 4) (price 0.0) (score 4.5) (type Action))
	(Jess_app (name "Plants vs. Zombies 2") (developer "Electronic Arts ") (download 19141) (operative_system "Android") (version 4) (pegi 9) (price 0.0) (score 4.8) (type Adventure))
	(Jess_app (name "Minecraft: Pocket Edition") (developer "Mojang AB") (download 6835 ) (operative_system "BlackBerry") (version 7) (pegi 9) (price 6.99) (score 4.0) (type Adventure))
	(Jess_app (name "Candy Crush Saga") (developer "King") (download 63887 ) (operative_system "Symbian") (version 7) (pegi 4) (price 0.0) (score 4.0) (type Arcade))
	(Jess_app (name "Batman: Arkham Origins") (developer "Warner Bros") (download 593 ) (operative_system "Android") (version 5) (pegi 9) (price 0.0) (score 4.0) (type Arcade))
	(Jess_app (name "Apalabrados") (developer "Etermax") (download 86187 ) (operative_system "Symbian") (version 8) (pegi 4) (price 0.0) (score 4.5) (type TableGame))
	(Jess_app (name "2048") (developer "Ketchapp") (download 4643 ) (operative_system "Android") (version 6) (pegi 4) (price 0.0) (score 4.5) (type TableGame))
	(Jess_app (name "UNO & Friends") (developer "Gameloft") (download 4916 ) (operative_system "iOS") (version 9) (pegi 9) (price 1.0) (score 4.0) (type Cards))
	(Jess_app (name "MORTAL KOMBAT X") (developer "Warner Bros") (download 457897) (operative_system "iOS") (version 10) (pegi 18) (price 15.00) (score 1.5) (type Cards))
	(Jess_app (name "Spotify Music") (developer "Spotify Ltd") (download 12648) (operative_system "Android") (version 5) (pegi 4) (price 0.0) (score 5.0) (type Music))
	(Jess_app (name "iMusic ") (developer "AppDreamTeam") (download 453) (operative_system "BlackBerry") (version 5) (pegi 4) (price 0.0) (score 2.0) (type Music))
	(Jess_app (name "All Stars") (developer "Smash Mouth") (download 496258) (operative_system "Windows Phone") (version 7) (pegi 4) (price 5.20) (score 5.0) (type Rock))
	(Jess_app (name "Gangnam Style") (developer "PSY") (download 169487562) (operative_system "iOS") (version 9) (pegi 9) (price 1.20) (score 3.0) (type Pop))
	(Jess_app (name "Loud") (developer "Rihanna") (download 123654884) (operative_system "Android") (version 4) (pegi 4) (price 1.70) (score 5.0) (type Electronic))
	(Jess_app (name "Facebook") (developer "Facebook") (download 2165451) (operative_system "iOS") (version 10) (pegi 9) (price 0.0) (score 4.8) (type Social_network))
	(Jess_app (name "Twitter") (developer "Twitter") (download 9521784) (operative_system "Android") (version 6) (pegi 9) (price 0.0) (score 4.4) (type Social_network))
	(Jess_app (name "Linkedln") (developer "Linkedln") (download 326594) (operative_system "BlackBerry") (version 5) (pegi 9) (price 0.0) (score 4.3) (type Social_network))
	(Jess_app (name "Google Earth") (developer "Google") (download 65491327) (operative_system "Android") (version 5) (pegi 4) (price 0.0) (score 4.5) (type Travel))
	(Jess_app (name "Iberia") (developer "IBERIA") (download 459865) (operative_system "iOS") (version 8) (pegi 4) (price 0.0) (score 1.5) (type Travel))
	(Jess_app (name "You Tube") (developer "You Tube") (download 789542) (operative_system "iOS") (version 8) (pegi 4) (price 0.0) (score 5.0) (type Video))
	(Jess_app (name "Twitch") (developer "Amazon") (download 3265415) (operative_system "Symbian") (version 8) (pegi 4) (price 0.0) (score 5.0) (type Video))
	(Jess_app (name "Book") (developer "Disney") (download 200) (operative_system "Android") (version 4) (pegi 12) (price 1.20) (score 2.0) (type Book))
	(Jess_app (name "The Face of Britain") (developer "Simon Schama") (download 8654) (operative_system "BlackBerry") (version 7) (pegi 4) (price 4.0) (score 3.0) (type Art))
	(Jess_app (name "So the Echo") (developer "Brandon Boyd") (download 45) (operative_system "Symbian") (version 8) (pegi 4) (price 45.90) (score 4.5) (type Art))
	(Jess_app (name "Steve Jobs") (developer "Zoltán Géczi") (download 465994) (operative_system "iOS") (version 9) (pegi 4) (price 0.0) (score 4.5) (type Biography))
	(Jess_app (name "Benjamin Franklin") (developer "John Stevens Cabot Abbott") (download 4569) (operative_system "Android") (version 4) (pegi 4) (price 0.0) (score 3.0) (type Biography))
	(Jess_app (name "Automator para OS X") (developer "Carlos Burges Ruiz de Gopegui") (download 4253387) (operative_system "iOS") (version 9) (pegi 4) (price 5.0) (score 4.0) (type Informatic))
	(Jess_app (name "iCloud Beta") (developer "Pere Manel Verdugo Zamora") (download 574228) (operative_system "iOS") (version 8) (pegi 4) (price 6.5) (score 4.0) (type Informatic)))

(mapclass :THING)
(defrule check-operative_system "Check if OS exits in the system, if not it creates it"
	(Jess_app  (operative_system ?os_name) (version ?os_version))
	(object (is-a :STANDARD-CLASS) (:NAME "Operative_system") (:DIRECT-INSTANCES $?list))
	(object (is-a Operative_system) (name ?os_name) (version ?os_version) (OBJECT ?OS))
	(test (not (member ?OS ?list)))
	=>
	(make-instance of Operative_system (name ?os_name) (version ?os_version)))

(defrule load-app "Creates instances from the app template Jess in Protégé"
	(Jess_app (name ?name) (download ?download) (pegi ?pegi) (type ?type) (price ?price) (score ?score) (developer ?dev) (operative_system ?os) (version ?version))
	?h1 <- (object (is-a Developer) (name ?dev))
	?h2 <- (object (is-a Operative_system) (name ?os) (version ?version))
	=>
	(make-instance of App (name ?name) (developer ?h1)(download ?download) (operative_system ?h2)(pegi ?pegi) (price ?price) (score ?score) (type ?type)))


(defrule check-develops_list "Check if the app is on developer list"
	(object (is-a App)(developer ?dev)(OBJECT ?app))
	(object (is-a Developer) (name ?dev) (develops $?devs)(OBJECT ?DEV))
	(test (not (member ?app ?devs)))
	=>
	(insert$ ?devs (+ 1 (length$ ?devs)) ?app))
	
(mapclass Game)

(defrule MAIN::set-game-instance "Set app instances as direct instances for class Game"
	(object (is-a App) (OBJECT ?app) (type Game))
	(object (is-a :STANDARD-CLASS) (:NAME "Game") (:DIRECT-INSTANCES $?list))
	=>
	(slot-set "Game" :DIRECT-INSTANCES
	(insert$ ?list (+ 1 (length$ ?list)) ?app)))

 
(mapclass Action)

(defrule MAIN::set-game-action-instance "Set app instances as direct instances for classes Game and Action"
	(object (is-a App) (OBJECT ?app) (type Action))
	(object (is-a :STANDARD-CLASS) (:NAME "Action") (:DIRECT-INSTANCES $?list1))
	(object (is-a :STANDARD-CLASS) (:NAME "Game") (:DIRECT-INSTANCES $?list2))
	=>
	(slot-set "Action" :DIRECT-INSTANCES
	(insert$ ?list1 (+ 1 (length$ ?list1)) ?app))
	(slot-set "Game" :DIRECT-INSTANCES
	(insert$ ?list2 (+ 1 (length$ ?list2)) ?app)))
 
 
(mapclass Adventure)

(defrule MAIN::set-game-adventure-instance "Set app instances as direct instances for classes Game and Adventure"
	(object (is-a App) (OBJECT ?app) (type Adventure))
	(object (is-a :STANDARD-CLASS) (:NAME "Adventure") (:DIRECT-INSTANCES $?list1))
	(object (is-a :STANDARD-CLASS) (:NAME "Game") (:DIRECT-INSTANCES $?list2))
	=>
	(slot-set "Adventure" :DIRECT-INSTANCES
	(insert$ ?list1 (+ 1 (length$ ?list1)) ?app))
	(slot-set "Game" :DIRECT-INSTANCES
	(insert$ ?list2 (+ 1 (length$ ?list2)) ?app)))
 
 
(mapclass Arcade)
 
(defrule MAIN::set-game-arcade-instance "Set app instances as direct instances for classes Game and Arcade"
	(object (is-a App) (OBJECT ?app) (type Arcade))
	(object (is-a :STANDARD-CLASS) (:NAME "Arcade") (:DIRECT-INSTANCES $?list1))
	(object (is-a :STANDARD-CLASS) (:NAME "Game") (:DIRECT-INSTANCES $?list2))
	=>
	(slot-set "Arcade" :DIRECT-INSTANCES
	(insert$ ?list1 (+ 1 (length$ ?list1)) ?app))
	(slot-set "Game" :DIRECT-INSTANCES
	(insert$ ?list2 (+ 1 (length$ ?list2)) ?app)))
 
 
(mapclass TableGame) 
(defrule MAIN::set-game-tablegame-instance "Set app instances as direct instances for classes Game and TableGame"
	(object (is-a App) (OBJECT ?app) (type TableGame))
	(object (is-a :STANDARD-CLASS) (:NAME "TableGame") (:DIRECT-INSTANCES $?list1))
	(object (is-a :STANDARD-CLASS) (:NAME "Game") (:DIRECT-INSTANCES $?list2))
	=>
	(slot-set "TableGame" :DIRECT-INSTANCES
	(insert$ ?list1 (+ 1 (length$ ?list1)) ?app))
	(slot-set "Game" :DIRECT-INSTANCES
	(insert$ ?list2 (+ 1 (length$ ?list2)) ?app)))
 
 
(mapclass Cards)
(defrule MAIN::set-game-card-instance "Set app instances as direct instances for classes Game and Cards"
	(object (is-a App) (OBJECT ?app) (type Cards))
	(object (is-a :STANDARD-CLASS) (:NAME "Cards") (:DIRECT-INSTANCES $?list1))
	(object (is-a :STANDARD-CLASS) (:NAME "Game") (:DIRECT-INSTANCES $?list2))
	=>
	(slot-set "Cards" :DIRECT-INSTANCES
	(insert$ ?list1 (+ 1 (length$ ?list1)) ?app))
	(slot-set "Game" :DIRECT-INSTANCES
	(insert$ ?list2 (+ 1 (length$ ?list2)) ?app)))
  
 

(mapclass Music)
(defrule MAIN::set-music-instance "Set app instances as direct instances for class Music"
	(object (is-a App) (OBJECT ?app) (type Music))
	(object (is-a :STANDARD-CLASS) (:NAME "Music") (:DIRECT-INSTANCES $?list))
	=>
	(slot-set "Music" :DIRECT-INSTANCES
	(insert$ ?list (+ 1 (length$ ?list)) ?app)))

 
(mapclass Pop)
(defrule MAIN::set-music-pop-instance "Set app instances as direct instances for classes Music and Pop"
	(object (is-a App) (OBJECT ?app) (type Pop))
	(object (is-a :STANDARD-CLASS) (:NAME "Pop") (:DIRECT-INSTANCES $?list1))
	(object (is-a :STANDARD-CLASS) (:NAME "Music") (:DIRECT-INSTANCES $?list2))
	=>
	(slot-set "Pop" :DIRECT-INSTANCES
	(insert$ ?list1 (+ 1 (length$ ?list1)) ?app))
	(slot-set "Music" :DIRECT-INSTANCES
	(insert$ ?list2 (+ 1 (length$ ?list2)) ?app)))
 

(mapclass Rock)
(defrule MAIN::set-music-rock-instance "Set app instances as direct instances for classes Music and Rock"
	(object (is-a App) (OBJECT ?app) (type Rock))
	(object (is-a :STANDARD-CLASS) (:NAME "Rock") (:DIRECT-INSTANCES $?list1))
	(object (is-a :STANDARD-CLASS) (:NAME "Music") (:DIRECT-INSTANCES $?list2))
	=>
	(slot-set "Rock" :DIRECT-INSTANCES
	(insert$ ?list1 (+ 1 (length$ ?list1)) ?app))
	(slot-set "Music" :DIRECT-INSTANCES
	(insert$ ?list2 (+ 1 (length$ ?list2)) ?app)))
 
 
(mapclass Electronic)
(defrule MAIN::set-music-electronic-instance "Set app instances as direct instances for classes Music and Electronic"
	(object (is-a App) (OBJECT ?app) (type Electronic))
	(object (is-a :STANDARD-CLASS) (:NAME "Electronic") (:DIRECT-INSTANCES $?list1))
	(object (is-a :STANDARD-CLASS) (:NAME "Music") (:DIRECT-INSTANCES $?list2))
	=>
	(slot-set "Electronic" :DIRECT-INSTANCES
	(insert$ ?list1 (+ 1 (length$ ?list1)) ?app))
	(slot-set "Music" :DIRECT-INSTANCES
	(insert$ ?list2 (+ 1 (length$ ?list2)) ?app)))
 

(mapclass Social_network)
(defrule MAIN::set-socialnetwork-instance "Set app instances as direct instances for class Social_network"
	(object (is-a App) (OBJECT ?app) (type Social_network))
	(object (is-a :STANDARD-CLASS) (:NAME "Social_network") (:DIRECT-INSTANCES $?list))
	=>
	(slot-set "Social_network" :DIRECT-INSTANCES
	(insert$ ?list (+ 1 (length$ ?list)) ?app)))

(mapclass Travel)
(defrule MAIN::set-travel-instance "Set app instances as direct instances for class Travel"
	(object (is-a App) (OBJECT ?app) (type Travel))
	(object (is-a :STANDARD-CLASS) (:NAME "Travel") (:DIRECT-INSTANCES $?list))
	=>
	(slot-set "Travel" :DIRECT-INSTANCES
	(insert$ ?list (+ 1 (length$ ?list)) ?app)))


(mapclass Video)
(defrule MAIN::set-video-instance "Set app instances as direct instances for class Video"
	(object (is-a App) (OBJECT ?app) (type Video))
	(object (is-a :STANDARD-CLASS) (:NAME "Video") (:DIRECT-INSTANCES $?list))
	=>
	(slot-set "Video" :DIRECT-INSTANCES
	(insert$ ?list (+ 1 (length$ ?list)) ?app)))
 
 
(mapclass Book)
(defrule MAIN::set-book-instance "Set app instances as direct instances for class Book"
	(object (is-a App) (OBJECT ?app) (type Book))
	(object (is-a :STANDARD-CLASS) (:NAME "Book") (:DIRECT-INSTANCES $?list))
	=>
	(slot-set "Book" :DIRECT-INSTANCES
	(insert$ ?list (+ 1 (length$ ?list)) ?app))) 
 
 
(mapclass Art)
(defrule MAIN::set-book-art-instance "Set app instances as direct instances for classes Book and Art"
	(object (is-a App) (OBJECT ?app) (type Art))
	(object (is-a :STANDARD-CLASS) (:NAME "Art") (:DIRECT-INSTANCES $?list1))
	(object (is-a :STANDARD-CLASS) (:NAME "Book") (:DIRECT-INSTANCES $?list2))
	=>
	(slot-set "Art" :DIRECT-INSTANCES
	(insert$ ?list1 (+ 1 (length$ ?list1)) ?app))
	(slot-set "Book" :DIRECT-INSTANCES
	(insert$ ?list2 (+ 1 (length$ ?list2)) ?app))) 
 
(mapclass Biography)
(defrule MAIN::set-book-biography-instance "Set app instances as direct instances for classes Book and Biography"
	(object (is-a App) (OBJECT ?app) (type Biography))
	(object (is-a :STANDARD-CLASS) (:NAME "Biography") (:DIRECT-INSTANCES $?list1))
	(object (is-a :STANDARD-CLASS) (:NAME "Book") (:DIRECT-INSTANCES $?list2))
	=>
	(slot-set "Biography" :DIRECT-INSTANCES
	(insert$ ?list1 (+ 1 (length$ ?list1)) ?app))
	(slot-set "Book" :DIRECT-INSTANCES
	(insert$ ?list2 (+ 1 (length$ ?list2)) ?app)))

(mapclass Comic)
(defrule MAIN::set-book-comic-instance "Set app instances as direct instances for classes Book and Comic"
	(object (is-a App) (OBJECT ?app) (type Comic))
	(object (is-a :STANDARD-CLASS) (:NAME "Comic") (:DIRECT-INSTANCES $?list1))
	(object (is-a :STANDARD-CLASS) (:NAME "Book") (:DIRECT-INSTANCES $?list2))
	=>
	(slot-set "Comic" :DIRECT-INSTANCES
	(insert$ ?list1 (+ 1 (length$ ?list1)) ?app))
	(slot-set "Book" :DIRECT-INSTANCES
	(insert$ ?list2 (+ 1 (length$ ?list2)) ?app))) 

 
 
(mapclass Informatic)
(defrule MAIN:set-book-informatic-instance "Set app instances as direct instances for classes Book and Informatic"
	(object (is-a App) (OBJECT ?app) (type Informatic))
	(object (is-a :STANDARD-CLASS) (:NAME "Informatic") (:DIRECT-INSTANCES $?list1))
	(object (is-a :STANDARD-CLASS) (:NAME "Book") (:DIRECT-INSTANCES $?list2))
	=>
	(slot-set "Informatic" :DIRECT-INSTANCES
	(insert$ ?list1 (+ 1 (length$ ?list1)) ?app))
	(slot-set "Book" :DIRECT-INSTANCES
	(insert$ ?list2 (+ 1 (length$ ?list2)) ?app)))

(mapclass User)
(defrule recom-book-user "Select book apps to users which likes travel, by pegi and OS version"
	(object (is-a User) (OBJECT ?user) (name ?name) (device ?d) (age ?age) (wallet ?wallet) (device ?OS) (recom $?recom) (pleasure $? Travel $?))
	(object (is-a :STANDARD-CLASS) (:NAME "Book") (:DIRECT-INSTANCES $? ?x $?))
	(object (is-a App) (OBJECT ?x)(name ?appName) (price ?price&:(<= ?price ?wallet)) (pegi ?pegi&:(< ?pegi ?age)) (operative_system ?appOS))
	(test (not (member$ ?x $?recom)))
	(object (is-a Operative_system) (OBJECT ?appOS) (version ?vApp) (name ?nameOs))
	(object (is-a Operative_system) (OBJECT ?OS) (version ?vUser&:(<= ?vApp ?vUser)) (name ?nameOS))
	=>
	(slot-insert$ ?user recom (+ 1 (length$ ?recom)) ?x)
)

(defrule recom-game-user "Select adventure apps to users which likes travel, by pegi and OS version"
	(object (is-a User) (OBJECT ?user) (name ?name) (age ?age) (wallet ?wallet)(device ?OS) (recom $?recom) (pleasure $? Travel $?))
	(object (is-a :STANDARD-CLASS) (:NAME "Adventure") (:DIRECT-INSTANCES $? ?x $?))
	(object (is-a App) (OBJECT ?x)(name ?appName) (price ?price&:(<= ?price ?wallet)) (pegi ?pegi&:(< ?pegi ?age)) (operative_system ?OS))
	(test (not (member$ ?x $?recom)))
	(object (is-a Operative_system) (OBJECT ?appOS) (version ?vApp) (name ?nameOs))
	(object (is-a Operative_system) (OBJECT ?OS) (version ?vUser&:(<= ?vApp ?vUser)) (name ?nameOS))
	=>
	(slot-insert$ ?user recom (+ 1 (length$ ?recom)) ?x)
)

(defrule recom-social_network-user "Select social network apps to users which likes travel"
	(object (is-a User) (OBJECT ?user) (name ?name) (age ?age) (wallet ?wallet)(device ?OS) (recom $?recom) (pleasure $? Travel $?))
	(object (is-a :STANDARD-CLASS) (:NAME "Social_network") (:DIRECT-INSTANCES $? ?x $?))
	(object (is-a App) (OBJECT ?x)(name ?appName) (price ?price&:(<= ?price ?wallet)) (pegi ?pegi&:(< ?pegi ?age)) (operative_system ?OS))
	(test (not (member$ ?x $?recom)))
	(object (is-a Operative_system) (OBJECT ?appOS) (version ?vApp) (name ?nameOs))
	(object (is-a Operative_system) (OBJECT ?OS) (version ?vUser&:(<= ?vApp ?vUser)) (name ?nameOS))
	=>
	(slot-insert$ ?user recom (+ 1 (length$ ?recom)) ?x)
)

(defrule recom-music-user "Recommend music to users which likes music, by pegi and OS version"
	(object (is-a User) (OBJECT ?user) (name ?name) (age ?age) (wallet ?wallet)(device ?OS) (recom $?recom) (pleasure $? Music $?))
	(object (is-a :STANDARD-CLASS) (:NAME "Music") (:DIRECT-INSTANCES $? ?x $?))
	(object (is-a App) (OBJECT ?x)(name ?appName) (price ?price&:(<= ?price ?wallet)) (pegi ?pegi&:(< ?pegi ?age)) (operative_system ?OS))
	(test (not (member$ ?x $?recom)))
	(object (is-a Operative_system) (OBJECT ?appOS) (version ?vApp) (name ?nameOs))
	(object (is-a Operative_system) (OBJECT ?OS) (version ?vUser&:(<= ?vApp ?vUser)) (name ?nameOS))
	=>
	(slot-insert$ ?user recom (+ 1 (length$ ?recom)) ?x)
)

(defrule recom-arcade-user "Recommend arcade games to users which likes music"
	(object (is-a User) (OBJECT ?user) (name ?name) (age ?age) (wallet ?wallet)(device ?OS) (recom $?recom) (pleasure $? Music $?))
	(object (is-a :STANDARD-CLASS) (:NAME "Arcade") (:DIRECT-INSTANCES $? ?x $?))
	(object (is-a App) (OBJECT ?x)(name ?appName) (price ?price&:(<= ?price ?wallet)) (pegi ?pegi&:(< ?pegi ?age)) (operative_system ?OS))
	(test (not (member$ ?x $?recom)))
	(object (is-a Operative_system) (OBJECT ?appOS) (version ?vApp) (name ?nameOs))
	(object (is-a Operative_system) (OBJECT ?OS) (version ?vUser&:(<= ?vApp ?vUser)) (name ?nameOS))
	=>
	(slot-insert$ ?user recom (+ 1 (length$ ?recom)) ?x)
)

(defrule recom-informatic_book-user "Recommend informatic books to users which likes technology"
	(object (is-a User) (OBJECT ?user) (name ?name) (age ?age) (wallet ?wallet)(device ?OS) (recom $?recom) (pleasure $? Tecnology $?))
	(object (is-a :STANDARD-CLASS) (:NAME "Informatic") (:DIRECT-INSTANCES $? ?x $?))
	(object (is-a App) (OBJECT ?x)(name ?appName) (price ?price&:(<= ?price ?wallet)) (pegi ?pegi&:(< ?pegi ?age)) (operative_system ?OS))
	(test (not (member$ ?x $?recom)))
	(object (is-a Operative_system) (OBJECT ?appOS) (version ?vApp) (name ?nameOs))
	(object (is-a Operative_system) (OBJECT ?OS) (version ?vUser&:(<= ?vApp ?vUser)) (name ?nameOS))
	=>
	(slot-insert$ ?user recom (+ 1 (length$ ?recom)) ?x)
)

(defrule recom-games-user-by-pleasure "Recommend games to users which likes technology (search into all game hierarchy)"
	(object (is-a User) (OBJECT ?user) (name ?name) (age ?age) (wallet ?wallet)(device ?OS) (recom $?recom) (pleasure $? Tecnology $?))
	(object (is-a :STANDARD-CLASS) (:NAME "Game") (:DIRECT-INSTANCES $? ?x $?))
	(object (is-a App) (OBJECT ?x)(name ?appName) (price ?price&:(<= ?price ?wallet)) (pegi ?pegi&:(< ?pegi ?age)) (operative_system ?OS))
	(test (not (member$ ?x $?recom)))
	(object (is-a Operative_system) (OBJECT ?appOS) (version ?vApp) (name ?nameOs))
	(object (is-a Operative_system) (OBJECT ?OS) (version ?vUser&:(<= ?vApp ?vUser)) (name ?nameOS))
	=>
	(slot-insert$ ?user recom (+ 1 (length$ ?recom)) ?x)
)

(defrule recom-games-user "Recommend games"
	(object (is-a User) (OBJECT ?user) (name ?name) (age ?age) (wallet ?wallet)(device ?OS) (recom $?recom) (pleasure $? Games $?))
	(object (is-a :STANDARD-CLASS) (:NAME "Game") (:DIRECT-INSTANCES $? ?x $?))
	(object (is-a App) (OBJECT ?x)(name ?appName) (price ?price&:(<= ?price ?wallet)) (pegi ?pegi&:(< ?pegi ?age)) (operative_system ?OS))
	(test (not (member$ ?x $?recom)))
	(object (is-a Operative_system) (OBJECT ?appOS) (version ?vApp) (name ?nameOs))
	(object (is-a Operative_system) (OBJECT ?OS) (version ?vUser&:(<= ?vApp ?vUser)) (name ?nameOS))
	=>
	(slot-insert$ ?user recom (+ 1 (length$ ?recom)) ?x)
)

(defrule recom-video-user "Recommend video apps to users which likes games"
	(object (is-a User) (OBJECT ?user) (name ?name) (age ?age) (wallet ?wallet)(device ?OS) (recom $?recom) (pleasure $? Games $?))
	(object (is-a :STANDARD-CLASS) (:NAME "Video") (:DIRECT-INSTANCES $? ?x $?))
	(object (is-a App) (OBJECT ?x)(name ?appName) (price ?price&:(<= ?price ?wallet)) (pegi ?pegi&:(< ?pegi ?age)) (operative_system ?OS))
	(test (not (member$ ?x $?recom)))
	(object (is-a Operative_system) (OBJECT ?appOS) (version ?vApp) (name ?nameOs))
	(object (is-a Operative_system) (OBJECT ?OS) (version ?vUser&:(<= ?vApp ?vUser)) (name ?nameOS))
	=>
	(slot-insert$ ?user recom (+ 1 (length$ ?recom)) ?x)
)

(defrule recom-social_network-user "Recommend social network to users which likes games"
	(object (is-a User) (OBJECT ?user) (name ?name) (age ?age) (wallet ?wallet)(device ?OS) (recom $?recom) (pleasure $? Games $?))
	(object (is-a :STANDARD-CLASS) (:NAME "Social_network") (:DIRECT-INSTANCES $? ?x $?))
	(object (is-a App) (OBJECT ?x)(name ?appName) (price ?price&:(<= ?price ?wallet)) (pegi ?pegi&:(< ?pegi ?age)) (operative_system ?OS))
	(test (not (member$ ?x $?recom)))
	(object (is-a Operative_system) (OBJECT ?appOS) (version ?vApp) (name ?nameOs))
	(object (is-a Operative_system) (OBJECT ?OS) (version ?vUser&:(<= ?vApp ?vUser)) (name ?nameOS))
	=>
	(slot-insert$ ?user recom (+ 1 (length$ ?recom)) ?x)
)


(defrule recom-comic-user "Recommend comics to user which likes games"
	(object (is-a User) (OBJECT ?user) (name ?name) (age ?age) (wallet ?wallet)(device ?OS) (recom $?recom) (pleasure $? Games $?))
	(object (is-a :STANDARD-CLASS) (:NAME "Comic") (:DIRECT-INSTANCES $? ?x $?))
	(object (is-a App) (OBJECT ?x)(name ?appName) (price ?price&:(<= ?price ?wallet)) (pegi ?pegi&:(< ?pegi ?age)) (operative_system ?OS))
	(test (not (member$ ?x $?recom)))
	(object (is-a Operative_system) (OBJECT ?appOS) (version ?vApp) (name ?nameOs))
	(object (is-a Operative_system) (OBJECT ?OS) (version ?vUser&:(<= ?vApp ?vUser)) (name ?nameOS))
	=>
	(slot-insert$ ?user recom (+ 1 (length$ ?recom)) ?x)
)

(defrule recom-comic-user-by-pleasure "Recommend comic to users which likes films"
	(object (is-a User) (OBJECT ?user) (name ?name) (age ?age) (wallet ?wallet)(device ?OS) (recom $?recom) (pleasure $? Film $?))
	(object (is-a :STANDARD-CLASS) (:NAME "Comic") (:DIRECT-INSTANCES $? ?x $?))
	(object (is-a App) (OBJECT ?x)(name ?appName) (price ?price&:(<= ?price ?wallet)) (pegi ?pegi&:(< ?pegi ?age)) (operative_system ?OS))
	(test (not (member$ ?x $?recom)))
	(object (is-a Operative_system) (OBJECT ?appOS) (version ?vApp) (name ?nameOs))
	(object (is-a Operative_system) (OBJECT ?OS) (version ?vUser&:(<= ?vApp ?vUser)) (name ?nameOS))
	=>
	(slot-insert$ ?user recom (+ 1 (length$ ?recom)) ?x)
)

(defrule recom-video-user-by-pleasure "Recommend video apps to users which likes film"
	(object (is-a User) (OBJECT ?user) (name ?name) (age ?age) (wallet ?wallet)(device ?OS) (recom $?recom) (pleasure $? Film $?))
	(object (is-a :STANDARD-CLASS) (:NAME "Video") (:DIRECT-INSTANCES $? ?x $?))
	(object (is-a App) (OBJECT ?x)(name ?appName) (price ?price&:(<= ?price ?wallet)) (pegi ?pegi&:(< ?pegi ?age)) (operative_system ?OS))
	(test (not (member$ ?x $?recom)))
	(object (is-a Operative_system) (OBJECT ?appOS) (version ?vApp) (name ?nameOs))
	(object (is-a Operative_system) (OBJECT ?OS) (version ?vUser&:(<= ?vApp ?vUser)) (name ?nameOS))
	=>
	(slot-insert$ ?user recom (+ 1 (length$ ?recom)) ?x)
)

(defrule recom-art-user-by-pleasure "Recommend art apps to users which likes film"
	(object (is-a User) (OBJECT ?user) (name ?name) (age ?age) (wallet ?wallet)(device ?OS) (recom $?recom) (pleasure $? Film $?))
	(object (is-a :STANDARD-CLASS) (:NAME "Art") (:DIRECT-INSTANCES $? ?x $?))
	(object (is-a App) (OBJECT ?x)(name ?appName) (price ?price&:(<= ?price ?wallet)) (pegi ?pegi&:(< ?pegi ?age)) (operative_system ?OS))
	(test (not (member$ ?x $?recom)))
	(object (is-a Operative_system) (OBJECT ?appOS) (version ?vApp) (name ?nameOs))
	(object (is-a Operative_system) (OBJECT ?OS) (version ?vUser&:(<= ?vApp ?vUser)) (name ?nameOS))
	=>
	(slot-insert$ ?user recom (+ 1 (length$ ?recom)) ?x)
)
