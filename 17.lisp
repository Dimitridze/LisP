;Задача 17

;Создайте предикат, порождающий всевозможные перестановки исходного множества

(defun permutation (lst)
    
    (cond
        ( (null lst) nil)
        ( (null (cdr lst) ) (list lst))
        ( t (add-elem-to-each-permutation (car lst) (permutation (cdr lst) ) ) )
    )
)
;соединение перестановок в список их в список
(defun add-elem-to-each-permutation (elem perm-lst)
    
    (cond
        ( (null perm-lst) nil)
        (t (append
                (insert-elem-to-each-pos elem (car perm-lst))
                (add-elem-to-each-permutation elem (cdr perm-lst) ) ;соединяем все перестановки в список
) 
        )
     )
)   
        ;вставка элемента и сборка перестановки
(defun insert-elem-to-each-pos (elem lst)
    
    (cond
        ( (null lst) (list elem) )
        ( (atom lst) (insert-elem-to-each-pos elem (list lst) ) )
        ( t (cons 
             (cons elem lst) (insert-elem-to-each-pos-aux elem nil lst) ) ) 
    )
)
;"вспомогательная" вставка элемента в разобранную перестановку
(defun insert-elem-to-each-pos-aux (elem lst1 lst2)
    
    (cond
        ( ( null lst2) nil)
        ( t ( (lambda (a)
                (cons (append (car a) (list elem) (cadr a))
                    
                      ( (lambda (x)
                        (insert-elem-to-each-pos-aux elem (car x) (cadr x)))
                    
                       a))
            )
                      
             ( (lambda (lst1 lst2)
                (list (append lst1 (list (car lst2))) (cdr lst2))
              
              ) lst1 lst2)))
    )
)


(print (permutation '(1 2 3)))
;(print (transposition '(1 2 3)))
;((1 2 3) (1 3 2) (2 1 3) (2 3 1) (3 1 2) (3 2 1)) 

