
(DEFINE (reverse-general exe) ;initializing the initial function
        (cond ( (null? exe) '()) ;Conditional function that returns an empty list if list is empty
              ((list? exe) ; second condition if the example is a lift do the conditions below  
               (append (reverse-general (cdr exe)) ; appends the first elment in the list by recursively calling the function to check if the first element is blank or if its another list and if it is it calls the function again
                       (list (reverse-general(car exe))) ;adds all the atoms starting from the back of the list exe to the new list 
                ) 
               )
              (else exe) ; Returns the list 
         )
)
