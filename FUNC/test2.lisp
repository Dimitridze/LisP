( defun del-if(pred lst)
    (mapcan #'(lambda(x)
                   (if (funcall pred x) (list x) nil)) lst)
)

(print(del-if 'evenp '( 1 3 4 5 )))
