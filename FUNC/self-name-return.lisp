(defmacro defun-this (fname param-list1 &rest body123)
   `(setf (fdefinition ',fname)
       (lambda ,param-list1
          (funcall (lambda (this-f) ,@body123) ',fname))
    )
    
)
 
(defun-this dvprog ()
         (format t "I am ~a" this-f)
)

 (dvprog)
;I am DVPROG
