;1. Определите макрос, который возвращает свой вызов.


(defmacro call (&rest rest)
    
   `'(call  ,rest)   
    
)

(print (call 'a 'b)) 
;(CALL ('A 'B)) 

