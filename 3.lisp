Задача 3

Определите функцию, заменяющую в исходном списке все вхождения заданного значения другими

 (defun rep (lst w r)
    ((lambda (first rest)
        (cond ((null lst) nil)
        (( eq first w) (cons r (rep rest w r)))
        ((listp first) (cons (rep first w r) (rep rest w r)))
        (t (cons first (rep rest w r))))
     )
     
     (car lst)(cdr lst)
   )
)
        
 ; ( print (rep '(1 2 3 1 1) 1 'a) )
  ;  (A 2 3 A A) 
;  ( print (rep '((1 2 3) 4 5 6 1) 1 44) )
;    ((44 2 3) 4 5 6 44)
