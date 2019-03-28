;Задача 46

;Предположим, что отец и мать некоторого лица, хранятся как значения соответствующих свойств у символа, обозначающего это лицо.
;Напишите функцию (родители x), которая возвращает в качестве значения родителей, и предикат (сестры-братья x1 x2), 
;который истинен в случае, если x1 и x2 — сестры или братья, родные или с одним общим родителем.

 (defun setParents(human mom dad)
	  (setf (get human `mom) mom)
	  (setf (get human `dad) dad)
 )


(defun mother(human)
	(get human `mom)
  )
(defun father(human)
	(get human `dad)
  )

(defun fam(1sthuman 2ndhuman)
	(cond
		((eq (mother 1sthuman) (mother 2ndhuman) t)
		((eq (father 1sthuman) (father 2ndhuman) t)
		(t nil)
)
  
)

  
 (defun prog(1sthuman 2ndhuman firstP secondP)
	 (setParents 1sthuman (car firstP) (cadr firstP))
	 (setParents 2ndhuman (car secondP) (cadr secondP))
	 (print(par 1sthuman))
	 (print(par 2ndhuman))
	 (print(fam 1sthuman 2ndhuman))
 )

 

;(prog `a `b `(c d) `(e g))
;(C D) 
;(E G) 
;NIL

;(prog `a `b `(c d) `(d c))
;(C D) 
;(D C) 
;T

;(prog `a `b `(c d) `(c v))
;(C D) 
;(C V) 
;T

