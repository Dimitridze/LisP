--ghc 7.10
each2Del [] = []
each2Del (b:btail) =  each2Del btail ++ [b]  
                    
main = print $ each2Del [1,2,3,4,5,6,7]

--[7,6,5,4,3,2,1]
