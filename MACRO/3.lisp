;3. Определите лисповскую форму (IF условие p q) в виде макроса

(defmacro MYIF (cond р q)
    `(if ,cond ,р ,q)
)
    
    
    
(setq x '(a b c))
(print (MYIF (atom x) 'TRUE '(NE TRUE))) ;NE TRUE
(print (MYIF (listp x) 'Y 'N)) ;YES


