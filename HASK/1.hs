--ghc 7.10

lstSum [] = 0
lstSum (b:bTail) = b + lstSum bTail

main = print $ lstSum [0, 3, 5]
--8
--main = print $ lstSum [1..4]
--10

