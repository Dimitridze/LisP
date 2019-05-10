--3. Реализовать на языке Haskell функцию, удаляющую из исходного списка элементы с четными номерами

each2Del [] = []
each2Del (b:btail) =  b : each2Del (drop 1 btail)
main = print $ each2Del [1..10]
--[1,3,5,7,9]
