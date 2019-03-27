;43.Определите функцию, подсчитывающую количество всех вершин данного дерева заданной высоты

(defun tree-count (tree lv)
  (cond ((null tree) 0)
        ((zerop lv) 1)
        (t (+ (tree-count (car tree) (- lv 1))
              (tree-count (caddr tree) (- lv 1))))))
 

 
;(print (tree-count '(((nil 2 nil) 6 (nil -8 nil)) 7 (nil 12 nil)) 1))
 
;2
 
;(tree-count '(((nil 2 nil) 6 (nil -8 nil)) 7 (nil 12 nil)) 3)
 
;0
