Задача 40

Определите функцию РАЗНОСТЬ, формирующую разность двух множеств, т.е. удаляющую из первого множества все общие со вторым множеством элементы

 (defun del (1st 2nd)
    (
        (lambda (first rest)
            (cond
                ((null 1st) NIL)
                ((equalp first 2nd) rest)
                (t (cons first (del rest 2nd)))
            )   
        )
        (car 1st) (cdr 1st)
    )
)
 
(defun dif (source e)
    (
        (lambda (first_e rest_e)
            (cond
                ((null e) source)
                (t (dif (del source first_e) rest_e))
            )
        )
        (car e) (cdr e)
    )
)

     


;(print (dif `(1 2 3 4) `(2 3 4 5)))
;(1)

;(print (dif `(Hello My World) `(My)))
;(HELLO WORLD)
