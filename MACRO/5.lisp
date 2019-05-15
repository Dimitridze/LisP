; 5. Определите в виде макроса форму (REPEAT e UNTIL p) паскалевского типа.
(defmacro repeat (e p)
`(if ,p nil
  (and(print ,e) (repeat ,e  ,p))
 )
 )
 
(let ((i 0))
       (repeat    (incf i)   (>= i 5)))
;0 
;1 
;2 
;3 
;4 
;5


(let ((i 100))
       (repeat    (incf i)   (>= i 111)))
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
