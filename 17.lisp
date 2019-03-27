;Задача 17

;Создайте предикат, порождающий всевозможные перестановки исходного множества

(defun ins-in-all-pos (a lst r)
  (cond ((null r) (list (append lst (list a))
                  )
        )
              (t (cons (append lst (list a) r) (ins-in-all-pos a (append lst (list (car r))) (cdr r))
                       
        )
     )
  )
)
 
 
(defun all-perms (lst)
  (cond ((null (cdr lst)) (list lst))
     (t (apply 'append (mapcar (lambda (x) (ins-in-all-pos (car lst) nil x)) (all-perms (cdr lst)))
        )
     )
  )
)

;(print (transposition '(1 2 3)))
;((1 2 3) (1 3 2) (2 1 3) (2 3 1) (3 1 2) (3 2 1)) 

