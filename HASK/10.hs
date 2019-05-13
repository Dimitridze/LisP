--ghc 7.10
--10. Функция скалярного произведения
scalar :: [Int] -> [Int] -> Int
scalar  [][] = 0
scalar (a:as) (b:bs) = (a * b) + scalar as bs
                    
main = print $ scalar [1,2,3] [10,20,30]

--140


