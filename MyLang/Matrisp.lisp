
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


;возвращает список чисел от 1 до n
(defun all-els-to-n (n)
    (cond
      ((eq n 0) NIL)
      (t (append (all-els-to-n (1- n)) (list n))) 
	    
    )
)
;вспомогательная функция удалить элемент списка
(defun del-el (lst n)
  (cond ((= n 1) (cdr lst))
        (t (cons (car lst) (del-el (cdr lst) (- n 1)))))) 
 ;расчет минора матрицы в позиции (1,n)
(defun minor (matr n m)
  (let ((tmp (del-el matr n)))
       (mapcar #'(lambda (x) (del-el x m)) tmp)))
 
(defun mksig (n &optional (res '(1)))
  (cond ((= n 1) res)
        (t (mksig (- n 1) (append res (list (- (car (last res)))))))))
;расчет определителя квадратной матрицы любого порядка
 
(defun determ (matr)
 (let ((n (length matr)))
  (cond ((= 2 n) (- (* (caar matr) (cadr (cadr matr))) (* (cadar matr) (caadr matr))))
        (t (let ((s (car matr)) (z (mksig n)) (w (all-els-to-n n)))
            (apply '+ (mapcar #'(lambda (x y p) (* x y (det (minor matr 1 p)))) s z w)))
        )
  )
 )
)
 

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
