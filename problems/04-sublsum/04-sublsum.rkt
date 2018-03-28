#lang racket

(define mylist1 (list 1 2 3 4 -5)) ;set up list where a sublsum exist
(define mylist2 (list 1 2 3 4 5)) ;set up list where there is no sublsum

; helper function sum
(define (sum l)
  (cond
    ((null? l);Ask the first question, is the lists empty
     0 ) ;if yes then the sum is 0
  (else ;else 
      (+ (car l) ;add the first element of l
         (sum (cdr l)))))) ;recursively call again with rest of list


(define (sublsum? lst);define our function
  (cond
    ((null? lst);Ask the first question, is the lists empty
     '() ) ;if yes then the sum is 0
  (else ;else 
   (= (sum lst)0)))); apply to do a procedure and check result is zero

;(display (combinations mylist1)); show all combinations so we see what sublsum removes

(filter sublsum? (cdr (combinations mylist1)))
(filter sublsum? (cdr (combinations mylist2))) ;test that second list gives no sublsum

(filter sublsum? (cdr (combinations '()))) ;test that null list returns null