;; problem file: red-prob1.pddl

(define (problem couples-gift-problem)
    (:domain couples-gift)
    (:objects jim della watch hair cut-hair brush watch-chain house working-place npc-merchant watch-merchant store today christmas-eve christmas)
    (:init (at jim working-place)
         (at della house) 
         (at npc-merchant store)

         (merchant npc-merchant) 
         (main-actor della) 
         (main-actor jim) 
         
         (having npc-merchant brush) (having npc-merchant watch-chain)
         (having della hair)
         (having jim watch)
         
         (same jim jim)
         (same della della)
         
         (can-move jim)
         (can-move della)
         
         (hungry jim)
         (hungry della)
         
         (date today christmas-eve)
         
         (precious jim watch)
         (precious della brush)
         
         (selfish-product jim watch-chain)
         (selfish-product della brush)
         
         (product watch-chain)
         (product brush)
    )
    (:goal (and (having jim watch-chain) 
              (having della brush)
              
              (gave-other della)
              (gave-other jim)
              
              (hugging jim)
              (hugging della)
              
              (at della house)
              (at jim house)
              
              (date today christmas) 

         (not (hungry della))
         (not (hungry jim)) 
         ) 
    )
 )