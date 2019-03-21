Задача 9

Определите функцию, раздляющую список на 2 списка. С четными номерами и нечетными.

(defun srt (lst) 
    ((lambda (head) 
       (cond ((null head) lst) 
                      (t (print(setq nlst (srt (cddr lst)))) 
                        (list 
                         (print(cons head (car nlst))) 
                         (print(cons (cadr lst) (cadr nlst))) 
                         )
                      ) 
       ) 
     )            
      (car lst)
 
    )
)



;(print (srt `(a b c d e f g)))
;((A C E G) (B D F NIL)) 

;(print (srt `(nil))) 
  ;(NIL)
