;Задача 17

;Создайте предикат, порождающий всевозможные перестановки исходного множества

;На вход
;  (PERMUTATION '(1 2 3))
;  (PERMUTATION '(2 3))
;  (PERMUTATION '(3))

;На выход
; PERMUTATION ==> ((3))
; PERMUTATION ==> ((2 3) (3 2))
; PERMUTATION ==> ((1 2 3) (2 1 3) (2 3 1) (1 3 2) (3 1 2) (3 2 1))
(defun permutation (lst)
    
    (cond
        ( (null lst) nil)
        ( (null (cdr lst) ) (list lst))
        ( t (add-elem-to-each-permutation (car lst) (permutation (cdr lst) ) ) )
    )
)

;соединение перестановок в список 

;На вход 
;(ADD-ELEM-TO-EACH-PERMUTATION '2 '((3)))
;(ADD-ELEM-TO-EACH-PERMUTATION '2 'NIL)

;На выход
;ADD-ELEM-TO-EACH-PERMUTATION ==> ((2 3) (3 2))
;ADD-ELEM-TO-EACH-PERMUTATION ==> NIL

;На вход
;(ADD-ELEM-TO-EACH-PERMUTATION '1 'NIL)
;(ADD-ELEM-TO-EACH-PERMUTATION '1 '((3 2)))
;(ADD-ELEM-TO-EACH-PERMUTATION '1 '((2 3) (3 2)))

;На Выход
;ADD-ELEM-TO-EACH-PERMUTATION ==> NIL
;ADD-ELEM-TO-EACH-PERMUTATION ==> ((1 3 2) (3 1 2) (3 2 1))
;ADD-ELEM-TO-EACH-PERMUTATION ==> ((1 2 3) (2 1 3) (2 3 1) (1 3 2) (3 1 2) (3 2 1))
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
;Вход       
;(INSERT-ELEM-TO-EACH-POS '2 '(3))

;Выход
;INSERT-ELEM-TO-EACH-POS ==> ((2 3) (3 2))

;Вход
;(INSERT-ELEM-TO-EACH-POS '1 '(2 3))

;Выход
;INSERT-ELEM-TO-EACH-POS ==> ((1 2 3) (2 1 3) (2 3 1))

;Вход
;(INSERT-ELEM-TO-EACH-POS '1 '(3 2))

;Выход
;INSERT-ELEM-TO-EACH-POS ==> ((1 3 2) (3 1 2) (3 2 1))
(defun insert-elem-to-each-pos (elem lst)
    
    (cond
        ( (null lst) (list elem) )
        ( (atom lst) (insert-elem-to-each-pos elem (list lst) ) )
        ( t (cons 
             (cons elem lst) (insert-elem-to-each-pos-aux elem nil lst) ) ) 
    )
)
; вставка элемента в разобранную перестановку
;Вспомогательная функция вставки элементов в каждую позицию
;Вход
;(INSERT-ELEM-TO-EACH-POS-AUX '2 'NIL '(3))
; (INSERT-ELEM-TO-EACH-POS-AUX '2 '(3) 'NIL)

;Выход
; INSERT-ELEM-TO-EACH-POS-AUX ==> NIL
; INSERT-ELEM-TO-EACH-POS-AUX ==> ((3 2))

;Вход
; (INSERT-ELEM-TO-EACH-POS-AUX '1 'NIL '(2 3))
 ;(INSERT-ELEM-TO-EACH-POS-AUX '1 '(2) '(3))
; (INSERT-ELEM-TO-EACH-POS-AUX '1 '(2 3) 'NIL)

;Выход
 ;INSERT-ELEM-TO-EACH-POS-AUX ==> NIL
 ;INSERT-ELEM-TO-EACH-POS-AUX ==> ((2 3 1))
; INSERT-ELEM-TO-EACH-POS-AUX ==> ((2 1 3) (2 3 1))

;Вход
 ;(INSERT-ELEM-TO-EACH-POS-AUX '1 'NIL '(3 2))
; (INSERT-ELEM-TO-EACH-POS-AUX '1 '(3) '(2))
; (INSERT-ELEM-TO-EACH-POS-AUX '1 '(3 2) 'NIL)

;Выход

; INSERT-ELEM-TO-EACH-POS-AUX ==> NIL
; INSERT-ELEM-TO-EACH-POS-AUX ==> ((3 2 1))
; INSERT-ELEM-TO-EACH-POS-AUX ==> ((3 1 2) (3 2 1))
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
