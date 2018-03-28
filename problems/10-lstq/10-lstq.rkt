#lang racket

;helper function sqrrsdl - Square Residual
(define (sqrrsdl l m)
  (cond
    ((null? l) (null? m) ;Ask the first question, are the lists empty
               '() ) ;return the null list or any previous values
    (else ; ask more questions or do something
     (cons 
      (* (-(car l) (car m)) (- (car l)(car m))) ; take the ith element of l from the ith element of m and square
      (sqrrsdl (cdr l ) (cdr m) )) 
     ))) ;call function again with rest of list

; helper function sum
(define (sum l)
  (cond
    ((null? l);Ask the first question, is the lists empty
     0 ) ;if yes then the sum is 0
  (else ;else 
      (+ (car l) ;add the first element of l
         (sum (cdr l)))))) ;recursively call again with rest of list

;lstq gets the sum of the list returned by sqrrsdl 
(define (lstq l m)
  (sum (sqrrsdl l m)))

(lstq (list 4.5 5.1 6.2 7.8) (list 1.1 -0.1 6.1 3.8))