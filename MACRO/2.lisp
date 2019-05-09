;2.Определите макрос (POP стек), который читает из стека верхний элемент и
;меняет значение переменной стека.

(defmacro pop1 (stack)
    `(prog1
       (setf first (car ,stack))
        (setf var (cdr ,stack))
        (format t "~%The new value of stack is: ~a" stack) 
    )
    
     
)

(print(pop1 '(a b c)))
;The new value of stack is: (B C)
;A 
(print(pop1 '(b c)))
;The new value of stack is: (C)
;B 
(print(pop1 '(c)))
;The new value of stack is: NIL
;C 
