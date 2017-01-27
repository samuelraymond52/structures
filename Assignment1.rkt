
(DEFINE (reverse-general L) ;initializing the initial function
        (cond ( (null? L) '()) ;Conditional function that returns an empty list if list is empty
              ((list? L) ; second condition if the example is a lift do the conditions below  
               (append (reverse-general (cdr L)) ; appends the first elment in the list by recursively calling the function to check if the first element is blank or if its another list and if it is it calls the function again
                       (list (reverse-general(car L))) ;adds all the atoms starting from the back of the list exe to the new list 
                ) 
               )
              (else L) ; Returns the list 
         )
)

(DEFINE (sum-up-numbers-simple L)
        (cond ((null? L) 0) ;If the list is empty return a "0"
              ((list? (car L)) (sum-up-numbers-simple(cdr L))) ;If the next atom is a list remove it and call the function again
              ((number? (car L))(+ (car L)(sum-up-numbers-simple(cdr L))));If the atom is a number then take that value and add it to the scope of the addition function then CDR and find more numbers to add.  
              (else (sum-up-numbers-simple(cdr L))) ;if None of the conditions above are met pop off the current atom

              ;(+ append( sum-up-numbers-simple (CAR L))(List(sum-up-numbers-simple(CDR L))))

                ;(+(sum-up-numbers-simple(CAR L)) (sum-up-numbers-simple (CDR L)))
                ;(+ (CAR L) (sum-up-numbers-simple (CDR L)))
              
         )
 )

(DEFINE (sum-up-numbers-general L)
        (cond ((null? L) 0) ;If the list is empty return a "0"
              ((list? (car L)) (+ (sum-up-numbers-general(car L)) (sum-up-numbers-general(cdr L)))) ; if the current atom is a list add it to the sum of the end number 
              ((number? (car L))(+ (car L)(sum-up-numbers-general(cdr L))));If the atom is a number then take that value and add it to the scope of the addition function then CDR and find more numbers to add.  
              (else (sum-up-numbers-general(cdr L))) ;if None of the conditions above are met pop off the current atom
              
         )
 )


(DEFINE (min-above-min L1 L2)
        (>(cond((null? L2) #f) ;if the second list L2 is empty return false
               ((<(car L2)(car(cdr L2))(min-above-min(cons(car L2(cdr(cdr L2)))))))               
               (else (fun
               ))


)
          ))

(DEFINE (Test L2)
        (cond((null? L2) #f) ;if the second list L2 is empty return false
               ((<(car L2)(car(cdr L2))))(Test(cons(car L2(cdr(cdr L2))))) 
               (else (Test (cdr L2)))

         )
        
)
         

