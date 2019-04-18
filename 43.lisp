;43.Определите функцию, подсчитывающую количество всех вершин данного дерева заданной высоты

(defun tree-count (tree lvl)
  (cond ((null tree) 0)
        ((= lvl 0) 1)
        (t (+ (tree-count (car tree) (- lvl 1)) 
              (tree-count (caddr tree) (- lvl 1)))
        )
  )
)


;(print (tree-count '(((nil 2 nil) 6 (nil -8 nil)) 7 ((nil 1 nil) 12 nil)) 0))
;1
;(print (tree-count '(((nil 2 nil) 6 (nil -8 nil)) 7 ((nil 1 nil) 12 nil)) 1))
;2
;(print (tree-count '(((nil 2 nil) 6 (nil -8 nil)) 7 ((nil 1 nil) 12 nil)) 2))
;3
;(print (tree-count '(((nil 2 nil) 6 (nil -8 nil)) 7 ((nil 1 nil) 12 nil)) 3))
;0


;      7
;    /   \
;  6       12
; / \     /  
;2   -8  1    

 
