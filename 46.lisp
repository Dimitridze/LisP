;Задача 46

;Предположим, что отец и мать некоторого лица, хранятся как значения соответствующих свойств у символа, обозначающего это лицо. Напишите функцию (родители x), которая возвращает в качестве значения родителей, и предикат (сестры-братья x1 x2), который истинен в случае, если x1 и x2 — сестры или братья, родные или с одним общим родителем.

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
