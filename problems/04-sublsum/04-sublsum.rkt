#lang racket

(define mylist1 (list 1 2 3 4 -5)) ;set up list where a sublsum exist
(define mylist2 (list 1 2 3 4 5)) ;set up list where there is no sublsum
(define (sublsum? lst);define our function
  (null? lst) ; first ask if the list is empty
  (zero? (apply + lst))); apply to do a procedure and check result is zero

(display (combinations mylist1)); show all combinations so we see what sublsum removes


(filter sublsum? (cdr (combinations mylist1)))
(filter sublsum? (cdr (combinations mylist2))) ;test that second list gives no sublsum

(filter sublsum? (cdr (combinations '()))) ;test that null list returns null