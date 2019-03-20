45. Напишите функцию (РАССТОЯНИЕ c1 c2), вычисляющую расстояние между городами.

(defun Road (c1 c2) 
  (sqrt (+ (expt (- (get c1 'x) (get c2 'x)) 2)
           (expt (- (get c1 'y) (get c2 'y)) 2))
  )
)
 
(setf (get 'New_York 'x) 1770)
(setf (get 'New_York 'y) -445)
 
(setf (get 'Dzhankoi 'x) -300)
(setf (get 'Dzhankoi 'y) 50)

(print(Road 'New_York 'Dzhankoi))
2128.362 
(print(Road 'Dzhankoi 'New_York))
2128.362 
