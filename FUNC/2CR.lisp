(defun all-els-to-n (n)
    (cond
      ((eq n 0) NIL)
      (t (append (all-els-to-n (1- n)) (list n))) 
    )
)


(defun sum-del (el arr)
  (setq sum 0)
      (if (mapcan(lambda(x)
                     (cond 
                        ((null arr) 0)
                        (( = 0 (mod el x))   (setq sum (+ sum x)))
                        ((= sum el) T)
                     )
                  ) arr
           )   (+ 1 el) (append(sum-del (+ 1 el) (all-els-to-n (1- (+ 1 el))))
                        )
       ) 
)


(defun generator ()
    (let
     		((x 3))
     
            (lambda () (setq x (sum-del x (all-els-to-n (1- x))))     
            )
      )
)
;(trace sum-del)
;(trace all-els-to-n)
(defun print-pretty (gen)
	 (print(- (funcall gen) 1))
)

(setq next-number1 (generator))
(setq next-number2 (generator))

(format t "~%Generator1:")
(print-pretty next-number1)
(format t "~%~%Generator1:")
(print-pretty next-number1)
(format t "~%~%Generator2:")
(print-pretty next-number2)
(format t "~%~%Generator1:")
(print-pretty next-number1)
(format t "~%~%Generator2:")
(print-pretty next-number2)
(format t "~%~%Generator2:")
(print-pretty next-number2)


;Generator1:
;6 

;Generator1:
;28 

;Generator2:
;6 

;Generator1:
;496 

;Generator2:
;28 

;Generator2:
;496 
