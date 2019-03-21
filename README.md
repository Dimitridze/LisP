# LISP

Лисп (LISP, от англ. LISt Processing — «обработка списков») — семейство языков программирования, основанных на представлении программы системой линейных списков символов, которые притом являются основной структурой данных языка. Лисп считается вторым после Fortran старейшим высокоуровневым языком программирования.

- [Задача 1](#Задача-1)
- [Задача 3](#Задача-3)
- [Задача 9](#Задача-9)
- [Задача 20](#Задача-20)
- [Задача 28](#Задача-28)
- [Задача 46](#Задача-46)

# Задача 1 

Запишите последовательности вызовов CAR и CDR, выделяющие из приведенных ниже списков символ цель. 
Упростите эти вызовы с помощью комбинации селекторов:

• (1 2 цель 3 4)


• ((1) (2 цель) (3 (4)))


• ((1 (2 (3 4 цель))))

1)      (print (caddr '(1 2 цель 4 5)))
2)      (print (cadadr '((1) (2 цель) (3 (4)))))
3)      (print (caddr (cadadr '(1 (2 (3 4 цель))))))

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
    ((lambda (head) 
       (cond ((null head) lst) 
                      (t (print(setq nlst (srt (cddr lst)))) 
                        (list 
                         (print(cons head (car nlst))) 
                         (print(cons (cadr lst) (cadr nlst))) 
                         )
                      ) 
       ) 
     )            
      (car lst)
 
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
       
 # Задача 40
 Определите функцию РАЗНОСТЬ, формирующую разность двух множеств, т.е.
удаляющую из первого множества все общие со вторым множеством элементы


 (defun del (1st 2nd)
    (
        (lambda (first rest)
            (cond
                ((null 1st) NIL)
                ((equalp first 2nd) rest)
                (t (cons first (del rest 2nd)))
            )   
        )
        (car 1st) (cdr 1st)
    )
)
 
(defun dif (source e)
    (
        (lambda (first_e rest_e)
            (cond
                ((null e) source)
                (t (dif (del source first_e) rest_e))
            )
        )
        (car e) (cdr e)
    )
)

1)      (print (dif `(1 2 3 4) `(2 3 4 5)))
        (1)

        (print (dif `(Hello My World) `(My)))
        (HELLO WORLD)
   
  # Задача 46
Предположим, что отец и мать некоторого лица, хранятся как значения соответствующих свойств у символа, 
обозначающего это лицо. Напишите функцию (родители x), которая возвращает в качестве значения родителей, и предикат (сестры-братья x1 x2), который истинен в случае, если x1 и x2 — сестры или братья, родные или с одним общим родителем.  

``` LISP
        (defun setprop(human mom dad)
	  (setf (get human `mom) mom)
	  (setf (get human `dad) dad)
 )

(defun par(human)
	(list (get human `mom) (get human `dad))
  )

(defun fam(1stuman 2ndhuman)
	(cond
		((eq (get 1sthuman `mom) (get 2ndhuman `mom)) t)
		((eq (get 1sthuman `dad) (get 2ndhuman `dad)) t)
		(t nil)
)
  
)

  
 (defun prog(1sthuman 2ndhuman firstP secondP)
	 (setprop 1sthuman (car firstP) (cadr firstP))
	 (setprop 2ndhuman (car secondP) (cadr secondP))
	 (print(par 1sthuman))
	 (print(par 2ndhuman))
	 (fam 1sthuman 2ndhuman)
 )
```

1)       (prog `a `b `(c d) `(e g))
          (C D) 
            (E G) 

2)       (prog `a `b `(c d) `(d c))
          (C D) 
          (D C) 
