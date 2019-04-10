;2.Определите функицонал (MAPLIST fn список) для одного списочного аргумента

(defun maplist (fn lst)

          (cond 
             ((null lst) nil)
             ((null fn) nil)
             (t(list (funcall fn lst) (maplist fn (cdr lst))))
          )
)


(print (maplist 'REVERSE '(1 2 3)))
;((3 2 1) ((3 2) ((3) NIL))) 
