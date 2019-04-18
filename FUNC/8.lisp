;Напишите генератор натуральных чисел: 0, 1, 2, 3, 4, 5, ...
(defun generator (&optional(a 0))
	(let
		((numb a))
		(lambda () (setq numb (+ numb 1)))
	)
)

(defun random-print()
(if (> (random 10) 5) (print (list(funcall next-number1)))  (print (funcall next-number2))   )
)
(setq next-number1 (generator)) 
(setq next-number2 (generator))
(random-print)
(random-print)
(random-print)
(random-print)
(random-print)
(random-print)
(random-print)
(random-print)
(random-print)
(random-print)
(random-print)
(random-print)
(random-print)
(random-print)
(random-print)

;1 
;2 
;3 
;(1) 
;4 
;5 
;6 
;7 
;8 
;(2) 
;(3) 
;(4) 
;9 
;10 
;(5) 
;(6) 
