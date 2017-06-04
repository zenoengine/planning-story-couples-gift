(define (domain couples-gift)
  (:requirements :strips)


  (:predicates (at ?sb ?loc)    ; sb is at loc
               (having ?sb ?sth) ; sb is having sth
               (hungry ?sb) ; sb is hungry
               (person ?sb)  ; sb is person
               (wealthy ?sb)
               (main-actor ?sb)
               (merchant ?sb)
               (gave-other ?sb)
               (same ?sb1 ?sb2)
               (product ?sth)
               (having-dinner ?sb)
               (hugging ?sb1)
               (can-move ?sb1)
               (date ?date ?name)
               (precious ?sb ?sth)
               (realized ?sb)
               (selfish-product ?sb ?sth)
               )
               

    ; sb1 gives sth to sb2 at loc
    (:action give
            :parameters (?sb1 ?sb2 ?sth ?loc)
            :precondition (and (having ?sb1 ?sth) (not (precious ?sb1 ?sth)) (product ?sth) (not (merchant ?sb1)) (not (same ?sb1 ?sb2)) (at ?sb1 ?loc) (at ?sb2 ?loc))
            :effect (and (not (having ?sb1 ?sth)) (having ?sb2 ?sth) (gave-other ?sb1)))
            
    ; sb moves from loc1 to loc2
    (:action moveto 
     :parameters (?sb ?loc1 ?loc2)
     :precondition (and (at ?sb ?loc1) (can-move ?sb) (not (merchant ?sb)))
     :effect (and (not (at ?sb ?loc1)) (at ?sb ?loc2))
    )

    ; sb1 cut sb1's hair
    (:action cut-hair
     :parameters (?sb1) 
     :precondition (and (having ?sb1 hair) (at ?sb1 store) (realized ?sb1))
     :effect (and (not (having ?sb1 hair)) (having ?sb1 cut-hair) (precious ?sb1 cut-hair) (product cut-hair)) 
    )

    ; sb1 put off watch
    (:action put-off-watch
    :parameters (?sb1) 
    :precondition (and (having ?sb1 watch) (realized ?sb1))
    :effect (product watch)  
    )

    ; sb1 eat dinner sb1's hair
    (:action eat-together
    :parameters (?sb1 ?sb2 ?loc) 
    :precondition (and (at ?sb1 ?loc) (at ?sb2 ?loc) (main-actor ?sb1) (main-actor ?sb2) (not (same ?sb1 ?sb2)))
    :effect (and (not (hungry ?sb1)) (not (hungry ?sb2)) (having-dinner ?sb1) (having-dinner ?sb2)) 
    )

    ; sb1 hug with sb2 at loc
    (:action hug
     :parameters (?sb1 ?sb2 ?loc) 
     :precondition (and (at ?sb1 ?loc) (at ?sb2 ?loc) (not (same ?sb1 ?sb2)) )
     :effect (and (hugging ?sb1) (hugging ?sb2) (not (can-move ?sb1)) (not (can-move ?sb2)) ) 
    )

    ; sb1 buy sth from sb2 at loc
    (:action buy
     :parameters (?sb1 ?sb2 ?sth ?loc)
     :precondition (and (having ?sb2 ?sth) (at ?sb2 ?loc) (at ?sb1 ?loc) (wealthy ?sb1) (not (selfish-product ?sb1 ?sth)))
     :effect (and (not (having ?sb2 ?sth)) (having ?sb1 ?sth) (not (wealthy ?sb1)) )
    )

    ; sb1 sell sth to sb2 at loc
    (:action sell
     :parameters (?sb1 ?sb2 ?sth ?loc) 
     :precondition (and (having ?sb1 ?sth) (merchant ?sb2) (at ?sb1 ?loc) (product ?sth) (at ?sb2 ?loc))
     :effect (and (not (having ?sb1 ?sth)) (having ?sb2 ?sth) (wealthy ?sb1) )
    )

    ; sb1 sleep sb2 at loc 
    (:action sleep
     :parameters (?sb1 ?sb2 ?loc)
     :precondition (and (at ?sb1 ?loc) (main-actor ?sb1) (main-actor ?sb2)  (at ?sb2 ?loc) (not (same ?sb1 ?sb2)) )
     :effect (date today christmas)
    )

    ; sb1 realize to no money
    (:action realize-to-no-money
     :parameters (?sb1)
     :precondition  (main-actor ?sb1) 
     :effect (realized ?sb1)
    )

)