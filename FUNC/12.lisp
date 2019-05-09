;12.Определите функцию, которая возвращает в качестве значения свой вызов.

(defun self (&rest rest)
	(append '(self) rest)
)

(print (self 1 2)) 
; (SELF 1 2) 
