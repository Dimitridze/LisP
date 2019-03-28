;Задача 3

;Определите функцию, заменяющую в исходном списке все вхождения заданного значения другими

 (defun changing(lst need-change turn-on)
    ((lambda (first rekurs)
        (cond ((null lst) nil)
        (( eq first need-change) (cons turn-on rekurs))
       ((listp first) (cons (changing  need-change turn-on) rekurs))
        (t (cons first rekurs)))
     )
     
     (car lst)(changing cdr lst w r)
   )
)
        
;(print (rep '(1 2 3 1 1) 1 'a))
;(A 2 3 A A) 
;(print (rep '((1 2 3) 4 5 6 1) 1 44))
;((44 2 3) 4 5 6 44)
