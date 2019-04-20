(defun all-els-to-n (n)
    (cond
      ((eq n 0) NIL)
      (t (append (all-els-to-n (1- n)) (list n))) ;возвращает список чисел от 1 до n
    )
)


;складываем все делители
(defun sum-del (el arr)
  (cond 
    ((null arr) 0)
    (( = 0 (mod el (car arr))) (+ (car arr) (sum-del el (cdr arr))))
    (t (sum-del el (cdr arr)))
  )
)

(defun sum-del-aux (el)
    (sum-del el (all-els-to-n (1- (+ (/ el 2) 1))))
)

;сравниваем  сумму делителей и  само число
(defun if-perf (el)
   (cond 
      ((= (sum-del-aux el) el) T)
      (t NIL)
   )
)


(print (if-perf 6))
;NIL
(print (if-perf 28))
;T
