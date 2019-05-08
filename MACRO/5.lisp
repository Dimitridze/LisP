; 5. Определите в виде макроса форму (REPEAT e UNTIL p) паскалевского типа.

(defmacro repeat ((&body body) condition)
  (let ((n (gensym)) (name (gensym)))
    `(labels ((,name (,n)
                (if ,condition
                    ,n
                    (,name (progn ,@body)))))
       (,name ()))))
 
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
