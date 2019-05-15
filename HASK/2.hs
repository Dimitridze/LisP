--2. Реализовать на языке Haskell функцию нахождению максимального элемента списка.
--ghc 7.10

mmax []=0
mmax (b:btail)=max b (mmax btail)

main = print $ mmax [1, 3, 7, 4, 5] 
--7
