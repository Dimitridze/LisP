--ghc 7.10
--8.Увеличть элементы исходного списка на 1
plus1 :: [Int] -> [Int] 
plus1  [] = []
plus1 b = (head b+1):plus1 (drop 1 b)
                    
main = print $ plus1 [1,2,3,4,5,4,3,2,1]

--[2,3,4,5,6,5,4,3,2]
