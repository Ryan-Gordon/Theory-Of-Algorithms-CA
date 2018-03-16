#lang racket

(define (maj x y z)
  (cond
    ((null? x) (null? y) (null? z) ;ask if lists are null 
     '() ) ;if so return the null list
    (else (map ;else start a map
           (lambda (a b c) ; lambda taking 3 args, each an instance of x,y,z
             (cond ; ask 2 questions, cond and else
               ((>= (+ a b c) 2) 1) ;if sum of an instance of a,b,c is >=2 return 1
               (else 0))) ; else return 0 meaning 1 or less is of the sum
           x y z)))) ; map x -> a, y -> b, and z -> c


(maj (list 0 0 0 0 1 1 1 1) (list 0 0 1 1 0 0 1 1) (list 0 1 0 1 0 1 0 1))