--ghc 7.10
--7.Записать исходный список в обратном порядке
backWards [] = []
backWards (b:btail) = backWards btail ++ [b]  
                    
main = print $ backWards [1,2,3,4,5,6,7]

--[7,6,5,4,3,2,1]
