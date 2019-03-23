;Задача 20

;Определите функцию, Первый-Атом, результатом которой будет первый атом списка.

(defun fatom (arr)
    (cond
        ((atom arr) arr)
        ((null arr) NIL)
        (t (fatom (car arr)))
    )
)



;(print (fatom '())) 
;NIL

 ;(print (fatom '(a1 b2 e3))) 
 ;a1

