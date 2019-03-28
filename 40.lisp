;Задача 40

;Определите функцию РАЗНОСТЬ, формирующую разность двух множеств, т.е. удаляющую из первого множества все общие со вторым
;множеством элементы
;удаление из 1 множества 1 элемента
 (defun del (set el)
    (
        (lambda (first rest)
            (cond
                ((null set) NIL)
                ((equalp first el) rest)
                (t (cons first (del rest el)))
            )   
        )
        (car set) (cdr set)
    )
)
 
;собственно разность множеств
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
