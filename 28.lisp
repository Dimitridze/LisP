
(defun hm(lst kolv) 
   ((lambda(tail) 
     (cond 
       ((null lst) kolv) 

       ((atom (car lst)) (hm tail (+ kolv 1))) 

       (t (hm tail kolv)) 

     )
    )
         (cdr lst)
   )   
) 


(print(hm `(1 a 3 `(e2 e4)) 0)) 
(print(hm () 0)) 
;28
