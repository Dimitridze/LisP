--ghc 7.10

each2Del [] = []
each2Del (b:[]) = [b]
each2Del (b:btail) = if (b==head btail)
                     then b : each2Del (drop 1 btail)
                     else b : (each2Del  btail)
main = print $ each2Del [1,1,2,3,3,4,5,6,7,7,8,9,10]

--[1,2,3,4,5,6,7,8,9,10]
