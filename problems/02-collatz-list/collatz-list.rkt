#lang racket
(define (collatz-list? n); Define our function
  (cons n(cond ((= n 1)); cons n into a list with our cond
        ((even? n) (collatz-list? (/ n 2))); if even divide by 2 and continue
        

