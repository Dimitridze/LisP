;Напишите генератор натуральных чисел: 0, 1, 2, 3, 4, 5, ...
(defun generator ()
	(let
		((numb 0))
		(lambda () (setq numb (+ numb 1)))
	)
)

(defun random-print()
    (cond 
        ( (< (print(funcall next-number2)) 10) 
	  (and(if (> (random 100) 20) (print (list(funcall next-number1)))  (print (funcall next-number2))   )(random-print))
        )
        (t  (format t "~%THE END~%")))
)
(setq next-number1 (generator)) 
(setq next-number2 (generator))
(random-print)

;1 
;(1) 
;2 
;(2) 
;3 
;(3) 
;4 
;(4) 
;5 
;6 
;7 
;(5) 
;8 
;(6) 
;9 
;(7) 
;10 
;THE END
