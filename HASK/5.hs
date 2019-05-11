--ghc 7.10
--5.Замена 2 подряд идущих элементов одним
if2Then1 [] = []
if2Then1 (b:[]) = [b]
if2Then1 (b:btail) = if (b==head btail)
                     then b : if2Then1 (drop 1 btail)
                     else b : (if2Then1  btail)
main = print $ if2Then1 [1,2,2,3,4,4,5,6,7,7]

--[1,2,3,4,5,6,7]

--main = print $ if2Then1 [1,1,2,3,3,3,4,5,5,5,5,6]

--[1,2,3,3,4,5,5,6]
