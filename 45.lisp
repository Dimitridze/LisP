;45. Напишите функцию (РАССТОЯНИЕ c1 c2), вычисляющую расстояние между городами.

(defun Road (city1 &optional(city2 `Bahchisaray)) 
  (sqrt (+ (expt (- (get city1 'x) (get city2 'x)) 2)
           (expt (- (get city1 'y) (get city2 'y)) 2))
  )
)
 
(defun City(Name-of-the-city &key x y ) 
    (setf (get Name-of-the-city 'x) x)
    (setf (get Name-of-the-city 'y) y)
  
)

(City  'New_York :x 1770 :y -445)
(City  'Bahchisaray :x -300 :y 50)


;(print(Road 'New_York 'Bahchisaray))
;2128.362 
;(print(Road 'Bahchisaray ))
;0
;(print(Road 'Bahchisaray 'New_York))
;2128.362 
