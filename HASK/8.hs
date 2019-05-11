--ghc 7.10
8.Увеличть элементы исходного списка на 1
each2Del :: [Int] -> [Int] 
each2Del [] = []
each2Del b = (head b+1):each2Del (drop 1 b)
                    
main = print $ each2Del [1,2,3,4,5,4,3,2,1]

--[2,3,4,5,6,5,4,3,2]
