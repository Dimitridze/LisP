;Задача 46

;Предположим, что отец и мать некоторого лица, хранятся как значения соответствующих свойств у символа, обозначающего это лицо.
;Напишите функцию (родители x), которая возвращает в качестве значения родителей, и предикат (сестры-братья x1 x2), 
;который истинен в случае, если x1 и x2 — сестры или братья, родные или с одним общим родителем.

(defun mother(person)
	(get person `mother)
)

(defun father(person)
	(get person `father)
)

(defun set-parents(person mother father)
	(setf (get person `mother) mother)
	(setf (get person `father) father)
)

(defun get-parents(person)
	(list (mother person) (father person))
)

(defun is-family(person1 person2)
	(cond
		((eq (mother person1) (mother person2)) t)
		((eq (father person1) (father person2)) t)
		(t nil)
	)
)

(defun prog(person1 person2 parents1 parents2)
	(set-parents person1 (car parents1) (cadr parents1))
	(set-parents person2 (car parents2) (cadr parents2))
	(print(get-parents person1))
	(print(get-parents person2))
	(print(is-family person1 person2))
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

