;2.Определите функицонал (MAPLIST fn список) для одного списочного аргумента

(defun maplist1 (fn lst)

          (cond 
             ((null fn) nil)
             ((null lst) nil)
            
             (t(cons (funcall fn lst)   (maplist1 fn (cdr lst))))    ;->((3 2 1) (3 2) (3)) 
            ;(t(append (funcall fn lst) (maplist fn (cdr lst))))    ;->(3 2 1 3 2 3)
          )
)


(print (maplist1 'REVERSE '(1 2 3)))
;((3 2 1) (3 2) (3))  
