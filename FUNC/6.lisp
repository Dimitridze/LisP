;6.Определите фильтр (удал пред список), 
;удаляющий из списка все элементы, которые обладают свойством наличие которого определяет предикат пред
(defun del-if (pred lst)
    (mapcan (lambda(x)
                   (if (funcall pred x) nil (list x))) lst)
)

(print(del-if 'evenp '( 1 3 4 5 )))
;(1 3 5)
(print(del-if 'numberp '( a 1 b 2 c 3)))
;(A B C)


(defun pl ( lst)
    (mapcan (lambda(x)
                   (list(+ x 1)) )lst
    )
)

(print(pl  '( 1 2 3 4  )))
