(defun thisprog (&rest rest)
          `(defun  thisprog   (&rest rest))
)

(print(thisprog 'a 'b))
