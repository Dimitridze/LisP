--ghc 7.10
1. Функция замены в списке одного элемента другим.
each2Del :: (Int) -> (Int) -> [Int] -> [Int] 
each2Del a1 a2 [] = []
each2Del a1 a2 b   = if (head b==a1)
                     then a2 : each2Del a1 a2 (drop 1 b)
                     else head b : each2Del a1 a2 (drop 1 b)
main = print $ each2Del 4 9 [4,2,4,3,4,4,5,6,4,4]

--[9,2,9,3,9,9,5,6,9,9]
