;45. Напишите функцию (РАССТОЯНИЕ c1 c2), вычисляющую расстояние между городами.

(defun Road (c1 &optional(c2 `Bahchisaray)) 
  (sqrt (+ (expt (- (get c1 'x) (get c2 'x)) 2)
           (expt (- (get c1 'y) (get c2 'y)) 2))
  )
)
 
(defun City(N &key x y ) 
    (setf (get N 'x) x)
    (setf (get N 'y) y)
  
)

(City  'New_York :x 1770 :y -445)
(City  'Bahchisaray :x -300 :y 50)


;(print(Road 'New_York 'Bahchisaray))
;2128.362 
;(print(Road 'Bahchisaray ))
;0
;(print(Road 'Bahchisaray 'New_York))
;2128.362 
