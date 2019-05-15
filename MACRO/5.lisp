; 5. Определите в виде макроса форму (REPEAT e UNTIL p) паскалевского типа.

(defmacro repeat (e until p)
`(if ,p nil
  (progn ,e (repeat ,e until ,p))))
 
(let ((i 0))
       (repeat ((print i) 
                (incf i))
         (> i 5)))
;0 
;1 
;2 
;3 
;4 
;5 

(format t "~%")
(let ((i 100))
       (repeat ((incf i)
                (print  i))
         (> i 110)))
;101 
;102 
;103 
;104 
;105 
;106 
;107 
;108 
;109 
;110 
;111 
