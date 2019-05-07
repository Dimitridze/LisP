(defmacro call (&rest rest)
    
   `'(call  ,rest)   
    
)

(print (call '1 '2)) 
