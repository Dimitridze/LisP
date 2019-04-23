; Определите функцию, которая возвращает в качестве значения
; форму своего определения (DEFUN).
(defun thisprog (&rest rest)
          `(defun  thisprog   (&rest rest))
)

(print(thisprog 'a 'b))
;DEFUN THISPROG (&REST REST)
