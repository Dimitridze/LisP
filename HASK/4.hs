--4.Разбить список на 2 списка - четные и нечетные элементы
separator [] =([],[])
separator bt = ([x|x<-bt,x<0],[y|y<-bt,y>0])
main = print $ separator [-1, 2, 0, -7, 4, 5,-6,6,8] 
--([-1,-7,-6],[2,4,5,6,8])
