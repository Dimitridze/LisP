(defun generator ()
	(let
		((lst 'A))
		(lambda ()  
             (if(atom lst)
                  (setq lst(list lst))
                  (if(equal (car lst) 'A)
                       (setq lst (cons 'B lst))
                       (setq lst (cons 'A lst))
                   )
              )
         )
   )
)

(defun print-pretty (gen &optional(count 1))
	(loop for i from 1 to count do (print (funcall gen)))
)

(setq next-sequence1 (generator))
(setq next-sequence2 (generator))
(setq next-sequence3 (generator))


(format t "~%~%next-sequence1:")
(print-pretty next-sequence1)
(print-pretty next-sequence1) 
(print-pretty next-sequence1)

(format t "~%~%next-sequence1:")
(print-pretty next-sequence2)
(print-pretty next-sequence2) 
(print-pretty next-sequence2)

(format t "~%~%next-sequence2:")
(print-pretty next-sequence3 7)
