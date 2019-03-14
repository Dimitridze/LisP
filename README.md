# LISP

Лисп (LISP, от англ. LISt Processing — «обработка списков») — семейство языков программирования, основанных на представлении программы системой линейных списков символов, которые притом являются основной структурой данных языка. Лисп считается вторым после Fortran старейшим высокоуровневым языком программирования.


- [Задача 3](#Задача-3)
- [Задача 9](#Задача-9)
- [Задача 20](#Задача-20)
- [Задача 28](#Задача-28)

# Задача 3

Определите функцию, заменяющую в исходном списке все вхождения заданного значения другими
``` LISP
 (defun zam (lst w r)
  (cond ((null lst) nil)
        (( eq (car lst) w) (cons r (zam (cdr lst) w r)))
        ((listp (car lst)) (cons (zam (car lst) w r) (zam (cdr lst) w r)))
(t (cons (car lst) (zam (cdr lst) w r))))) 
```

1)        ( print (zam '(1 2 3 1 1) 1 'a) )

          (A 2 3 A A) 
2)        ( print (zam  '((1 2 3) 4 5 6 1) 1 44) )

          ((44 2 3) 4 5 6 44)

    
# Задача 9

Определите функцию, раздляющую список на 2 списка.
С четными номерами и нечетными.

``` LISP
(defun srt (lst) 
       (cond 
              ((null (car lst)) lst) 
                      (t (print(setq nlst (srt (cddr lst)))) 
                      (list 
                     (print(cons (car lst) (car nlst))) 
                     (print(cons (cadr lst) (cadr nlst))) 

                     ) 
              ) 
      ) 
) 
```

1)       (print (srt `(a b c d e f g))) 

         ((A C E G)(B D F NIL))

2)       (print (srt `(nil))) 

         (NIL)

    
# Задача 20

Определите функцию, Первый-Атом, результатом которой будет первый атом списка.
``` LISP
( defun fatom (arr)
    (cond
        ((not (listp arr)) arr)
        ((null arr) NIL)
        (t (fatom (car arr)))
    )
)
```
1)      (print (fatom '())) 

        NIL
2)      (print (fatom '(a1 b2 e3))) 

        a1
3)      (print (fatom '(((123 456)) c d))) 

        123

    
# Задача 28

Определите функцию, вычисляющую, сколько всего атомов в списке.

``` LISP
(defun hm(lst kolv) 
        (cond 
        ((null lst) kolv) 

        ((atom (car lst)) (hm (cdr lst) (+ kolv 1))) 

        (t (hm (cdr lst) kolv)) 

        ) 
) 
```
1)     (print(hm `(1 a 3 `(e2 e4)) 0)) 

       3
2)     (print(hm () 0)) 

       0
