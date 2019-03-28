;Задача 3

;Определите функцию, заменяющую в исходном списке все вхождения заданного значения другими

 (defun rep (lst  need-change  (turn-on 0))
    ((lambda (first rest)
        (cond ((null lst) nil)
           (( eq first need-change) (cons r (rep rest need-change turn-on))
                     (t (cons first (rep rest need-change turn-on))))
     )
     (car lst)(cdr lst)
   )
)
        
;(print (rep '(1 2 3 1 1) 1 'a))
;(A 2 3 A A) 
;(print (rep '((1 2 3) 4 5 6 1) 1 44))
;((44 2 3) 4 5 6 44)
  
