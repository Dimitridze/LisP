;Задача 17

;Создайте предикат, порождающий всевозможные перестановки исходного множества

(defun transposition (w) 
  (cond ((null w) nil) 
     ((null (cdr w)) (list w)) 
     
         ((loop for a in w 

          nconc (mapcar #'(lambda (e) (cons a e)) (transposition (remove a w))))) 
  ) 
) 

;(print (transposition '(1 2 3)))
;((1 2 3) (1 3 2) (2 1 3) (2 3 1) (3 1 2) (3 2 1)) 

