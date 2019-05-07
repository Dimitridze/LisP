;1. Определите макрос, который возвращает свой вызов.

(defmacro call (&rest rest)
    
   `'(call  ,rest)   
    
)

(print (call '1 '2)) 
;(CALL ('1 '2)) 
