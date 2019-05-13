
(defun maxmin (lst)
  
             (eval(append '(max)  (mapcar (lambda(x) (eval x)  ) 
                                          (mapcar #'(lambda (el2) (append '(min)  el2)) lst))
                  )             
              )
 )


(defun minmax (list)
  ((lambda (lst)(minim lst))(mapcar #'maxim list))
)

(defun maxim (list)
   (cond    ((null (cdr list)) (car list))
                 ((> (car list) (maxim (cdr list))) (car list))
                (t (maxim (cdr list)))
   )
)


(defun minim (list)
   (cond    ((null (cdr list)) (car list))
                 ((< (car list) (minim (cdr list))) (car list))
                 (t (minim (cdr list)))
   )
)

;вспомогательная функция удалить элемент списка
(defun del-el (k lst)
  (cond ((zerop k) (cdr lst))
        ((= k (- (length lst) 1)) (butlast lst))
        (t (append (subseq lst 0 k) (subseq lst (+ k 1))))))
 ;расчет минора матрицы в позиции (1,k)
 
(defun minor (matr k)
 (let ((m (- k 1)))
  (* (nth m (car matr)) (^ -1 m)
     (det (mapcar #'(lambda (x) (del-el m x)) (cdr matr))))))
 
;расчет определителя квадратной матрицы любого порядка
 
(defun determ (matr)
  (let ((n (length matr)) (s nil))
    (cond ((= n 2) (- (* (caar matr) (cadadr matr)) (* (cadar matr) (caadr matr))))
          (t (dotimes (i n (apply '+ s))
                (push (minor matr (+ i 1)) s))))))
;транспонирование
(defun transp (matr)
  (apply 'mapcar (cons 'list matr))
)
 

 


(defmacro <> (&rest tokens)
	`(let
		(
         ;(whole ',tokens)
         
			(token-1 (car ',tokens))
			(operation (cadr ',tokens))
			(val Nil)
		)
		
		;(print whole)
		;(print token-1)
        ; (print operation)
		(cond
			((eq operation '+-) (setq val (maxmin token-1)))
			((eq operation '-+) (setq val (minmax token-1)))
                        ((eq operation '@) (setq val (determ token-1)))
			((eq operation '{})(setq val (transp token-1)))
			
		)
			 (print val)
		
	)
    
)
