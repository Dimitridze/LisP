;3.Определите функционал (APL-APPLY f x), который применяет каждую функцию fi списка
;(f1 f2 ... fn)
;к соответствующему элементу списка
;x = (x1 x2 ... xn)
;и возвращает список, сформированный из результатов.

(defun apl-apply (f x)
    (cond 
        ((null f) nil)
        ((null x) nil)
        (t (cons (funcall (car f) (car x)) 
                 (apl-apply (cdr f) (cdr x))
           )
        )
    )
)


(defun Sum (x) (+ x x))

(defun Mul (x) (* x x))

 
(print (apl-apply '(Sum Sum Sum Mul Mul Mul) '(1 2 3 4 5 6)))
;(2 4 6 16 25 36) 
