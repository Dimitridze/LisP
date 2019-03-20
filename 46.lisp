 (defun setprop(human mom dad)
	  (setf (get human `mom) mom)
	  (setf (get human `dad) dad)
 )

(defun par(human)
	(list (get human `mom) (get human `dad))
  )

(defun fam(1stuman 2ndhuman)
	(cond
		((eq (get 1sthuman `mom) (get 2ndhuman `mom)) t)
		((eq (get 1sthuman `dad) (get 2ndhuman `dad)) t)
		(t nil)
)
  
)

  
 (defun prog(1sthuman 2ndhuman firstP secondP)
	 (setprop 1sthuman (car firstP) (cadr firstP))
	 (setprop 2ndhuman (car secondP) (cadr secondP))
	 (print(par 1sthuman))
	 (print(par 2ndhuman))
	 (fam 1sthuman 2ndhuman)
 )




;(prog `a `b `(c d) `(e g))
;(C D) 
;(E G) 

;(prog `a `b `(c d) `(d c))
;(C D) 
;(D C) 