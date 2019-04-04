(defun sub_s(n1 n2)
    (-(* n2 n2) (* n1 n1))   ; разность квадратов
    )

(defun if_not_odd(lst)
    ((lambda (first rest)
             (cond
                     ((null lst) t)
                 ((= (rem first 2)0) nil) ;проверка на нечетность
                 (t (if_not_odd rest))
                 )
             ) (car lst) (cdr lst))
    )

(defun get_sub_s(lst)
    ((lambda(first second rest)
            (cond
                ((null rest) nil)
                (t( cons(sub_s first second) (get_sub_s rest))) ;формируем последовательность разностей
                )
            )(car lst) (car(cdr lst)) (cdr lst))
    )

(defun main(lst)
    (print (get_sub_s lst))
    (cond
        ((null (if_not_odd(get_sub_s lst))) (print "False"))
        (t(print "True"))
        )
    )
;(main '(1 2 3 4)) 
;(3 5 7) 
;"True"

;(main '(1 2 3 41))
;(3 5 1672) 
;"False"
