#lang racket

(define (chse x y z)
  (cond
    ((null? x) (null? y) (null? z) ;ask if lists are null 
     '() ) ;if so return the null list
    (else (map ;else start a map
           (lambda (a b c) ; lambda taking 3 args, each an instance of x,y,z
             (cond ; ask 2 questions, cond and else
               ((= (+ a) 1) b) ;if a is 1 then return b 
               (else c))) ; else return c 
           x y z)))) ; map x -> a, y -> b, and z -> c


(chse (list 0 0 0 0 1 1 1 1) (list 0 0 1 1 0 0 1 1) (list 0 1 0 1 0 1 0 1))
