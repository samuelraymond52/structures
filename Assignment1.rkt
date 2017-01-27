
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
        (cond ((null? L) '0) ;If the list is empty return a "0"
              ((list? L)
               

         ) 
)
        )

(DEFINE (adder L)
        ( if L
        (+ (car L)(adder (cdr L)))
        
        0))