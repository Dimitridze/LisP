(defun maxmin (lst)
  
             (eval(append '(max)  (mapcar (lambda(x) (eval x)  ) 
                                          (mapcar #'(lambda (el2) (append '(min)  el2)) lst)
                                  )
                  )
             )

)

(print (maxmin   '((2 4 3) (1 5 7) (8 9 7))
       )
)

;7




;(defun maxmin (list)
;  ((lambda (lst)(maxim lst))(mapcar #'minim list))
;)
;
;(defun maxim (list)
;   (cond    ((null (cdr list)) (car list))
;                 ((> (car list) (maxim (cdr list))) (car list))
;                 (t (maxim (cdr list)))
;   )
;)


;(defun minim (list)
 ;  (cond    ((null (cdr list)) (car list))
  ;               ((< (car list) (minim (cdr list))) (car list))
  ;               (t (minim (cdr list)))
  ; )
;)



;(print (maxmin '((1 2 3) (3 4 1) (5))))

;5
