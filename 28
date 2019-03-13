
(defun hm(lst kolv) 
(cond 
((null lst) kolv) 

((atom (car lst)) (hm (cdr lst) (+ kolv 1))) 

(t (hm (cdr lst) kolv)) 

) 
) 


(print(hm `(1 a 3 `(e2 e4)) 0)) 
(print(hm () 0)) 
;28
