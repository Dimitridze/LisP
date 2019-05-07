;3. Определите лисповскую форму (IF условие p q) в виде макроса

(defmacro iff (cond1  &rest p)
    
     `,(cons cond1 p)
     
)

(print(iff > 5  4))
;T
(print(iff < 5  4))
;Nil
(print(iff evenp 6))
;T
(print(iff atom '(6 7 8)))
;Nil
