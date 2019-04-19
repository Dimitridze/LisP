;Задача 28

;Определите функцию, вычисляющую, сколько всего атомов в списке.

(defun atom-count(lst)
	((lambda (first rest) 
		(cond
			((null lst) 0)
			((atom first) (+ 1 (atom-count rest)))
			(t (atom-count rest))
		)
	)(car lst) (cdr lst))
	
)

;(print(atom-count `(1 a 3 `(e2 e4)) 0)) 
;3

;(print(atom-count () 0)) 
;0

