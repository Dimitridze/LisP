( defun fatom (arr)
    (cond
        ((not (listp arr)) arr)
        ((null arr) NIL)
        (t (fatom (car arr)))
    )
)

(print (fatom '())) ;NIL
(print (fatom '(a1 b2 e3))) ;a1
(print (fatom '(((123 456)) c d))) ;123

