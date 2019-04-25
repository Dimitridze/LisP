;Определить функционал, который перед каждым четным элементом списка вставляет его порядковый номер. 
;Пример: (abcd ...) ==> (a 2 bc 4 d ...).
;Длина списка не определена.

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



    
;(trace maxmin)
(print (even  '(a b c d e)
       )
)
;(A 2 B C 4 D E)
