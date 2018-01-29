#lang racket
(define (collatz-list? n); Define our function
  (cons n(cond ((= n 1)); cons n into a list with our cond
        ((even? n) (collatz-list? (/ n 2))); if even divide by 2 and continue
        (else (collatz-list? ( + (* n 3) 1)))))); else multiple by 3, add 1 to result and continue


;Testing functions with values provided in pdf
(display "\nResults for 5: ")
(collatz-list? 5) ; pass 5 to our function and return list