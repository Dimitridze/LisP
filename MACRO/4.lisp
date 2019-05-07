;4. Определите в виде макроса форму (FIF тест отр нуль полож).

(defmacro fif(test n z p)
    
     `(cond ( (plusp ,test ) ,p)
            ( (zerop ,test ) ,z)
            ( (minusp ,test) ,n)
           
      )
     
)

 
(print(fif (- 4 5) 'меньше 'равно 'больше))
 ;МЕНЬШЕ
 
(print(fif (- 5 4) 'меньше 'равно 'больше)) 
 ;БОЛЬШЕ 
 
(print(fif (- 5 5) 'меньше 'равно 'больше) )
 ;РАВНО 
