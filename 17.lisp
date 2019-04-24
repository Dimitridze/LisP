;Задача 17

;Создайте предикат, порождающий всевозможные перестановки исходного множества

(defun permutation (lst)
        (cond
        ( (null lst) nil)
        ( (null (cdr lst) ) (list lst))
        ( t (add-elem-to-each-permutation (car lst) (permutation (cdr lst) ) ) )
    )
)

(defun add-elem-to-each-permutation (elem perm-lst)
        (cond
        ( (null perm-lst) nil)
        (t (append
                (insert-elem-to-each-pos elem nil (car perm-lst) )
                (add-elem-to-each-permutation elem (cdr perm-lst) ) 
) 
        )
     )
)   

(defun insert-elem-to-each-pos (elem lst1 lst)
   (cond
        ( (null lst) nil )
        ( t 
          ((lambda (P1 P2) 
             (if (null lst1) (cons P1 P2) (append P1 P2))
        );1 аргумент лямбды
         (if  (null lst1) (cons elem lst) NIL) 
         ;2 аргумент 
         (cond
        ( t ( (lambda (a)
                        (cons (append  (car a)  (list elem) (cadr a))
                      ( (lambda (x)
                       (insert-elem-to-each-pos  elem (car x) (cadr x))
                                )
                            a))
            )
              ( (lambda (lst1 lst)
                (list (append lst1 (list (car lst))) (cdr lst))
              ) lst1 lst))
        )
            ))) 
    )
)
;(trace insert-elem-to-each-pos)
(print (permutation '(1 2 3)))
;(defun insert-elem-to-each-pos-aux (elem lst1 lst2)
;   
;    (cond
;        ( ( null lst2) nil)
;        ( t ( (lambda (a)
;                (cons (append (car a) (list elem) (cadr a))
;                    
;                      ( (lambda (x)
;                        (insert-elem-to-each-pos-aux elem (car x) (cadr x)))
                    
;                       a))
 ;           )
  ;                    
   ;          ( (lambda (lst1 lst2)
    ;            (list (append lst1 (list (car lst2))) (cdr lst2))
   ;           
  ;            ) lst1 lst2)))
 ;   )
;)
