(defun generator (&optional(a 0))
	(let
		((numb a))
		(lambda () (setq numb (+ numb 1)))
	)
)

(defun print-pretty (gen &optional(count 1))
	(loop for i from 1 to count do (print (funcall gen)))
)

(setq next-number1 (generator))
(setq next-number2 (generator))
(setq next-number3 (generator 10))


(format t "next-number1:")
(print-pretty next-number1)
(print-pretty next-number1) 
(print-pretty next-number1)

(format t "~%~%next-number2:")
(print-pretty next-number2)
(print-pretty next-number2) 
(print-pretty next-number2)

(format t "~%~%next-number3:")
(print-pretty next-number3 7)
