;Задача 9

;Определите функцию, раздляющую список на 2 списка. С четными номерами и нечетными.

(defun separate (arr)
    ( 
         (lambda (first second rest) 
             (
                 cond
                    ( (null arr) (list NIL NIL))
                    ((null second) (list (list first) NIL))
                    (T (list 
                            (cons first (car (separate rest))) 
                            (cons second (cadr (separate rest))) 
                       )
                    )
             )
        ) (car arr) (cadr arr) (cddr arr)
    )
)



;(print (separate `(a b c d e f g)))
;((A C E G) (B D F)) 

