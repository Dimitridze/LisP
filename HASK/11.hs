--ghc 7.10
--11. Чередуя элементы списков [a, b, ...] и [1, 2, ...], образуйте новый список [a, 1, b, 2, ...]
separator :: [String]->[String]->[String]
separator [][] = []
separator (a:at) (b:bt)  = [a] ++ [b] ++  separator at bt
main = print $ separator  ["a","b"]  ["1","2"]
--["a","1","b","2"]
