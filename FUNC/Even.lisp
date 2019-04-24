(defun even (lst &optional(count 1))
    ((lambda (first rest)
        (cond ((null lst) nil)
            ((null rest) lst)
           ((evenp count) (cons count (cons first (maxmin rest (+ 1 count)))))
                     (t (cons first (maxmin rest (+ 1 count)))
                      )
                          
     )
     
   )(car lst)(cdr lst)
)
    )


;(defun even (lst &optional(count 1))
 ;   (mapcar(lambda (c)
 ;       (cond ((null lst) nil)
 ;           ((null (cdr lst)) lst)
 ;          ((evenp count) (cons count (car lst)  (setq c (+ 1 c))))
 ;                    (t (cons first (setq v(+ 1 c)))
 ;                     )
 ;                         
 ;    )
 ;    
 ;  )count
;)lst
    )
    
;(trace maxmin)
(print (even  '(a b c d e)
       )
)
;(A 2 B C 4 D E)
