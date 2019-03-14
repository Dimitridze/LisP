
                        (defun zam (lst w r)
  (cond ((null lst) nil)
        (( eq (car lst) w) (cons r (zam (cdr lst) w r)))
        ((listp (car lst)) (cons (zam (car lst) w r) (zam (cdr lst) w r)))
        (t (cons (car lst) (zam (cdr lst) w r))))) 
        
 1) ( print (rep '(1 2 3 1 1) 1 'a) )
    (A 2 3 A A) 
2)  ( print (rep '((1 2 3) 4 5 6 1) 1 44) )
    ((44 2 3) 4 5 6 44)
