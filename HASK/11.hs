--ghc 7.10
--11. Чередуя элементы списков [a, b, ...] и [1, 2, ...], образуйте новый список [a, 1, b, 2, ...]
alternate [][] = []
alternate (a:at) (b:bt)  = [a] ++ [b] ++  alternate at bt

main = print $ alternate  ["a","b"]  ["1","2"]

--["a","1","b","2"]

--main = print $ alternate  [1,3] [2,4]  

--[1,2,3,4]

