--12.Пересечение двух множеств

inter at bt  = ([x|x<-at,y<-bt,y==x])

main = print $ inter [3,7,6,0,9] [1,3,5,6,9]  

--[3,6,9]
