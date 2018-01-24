#lang racket
(define i 2) ; Start point for checking; 1 is not prime so start at 2
(define (decide-prime n)
  ;If the number is divisible by 2 it cant be a prime other than the edge cases
  (if (< n 2)
      #f
  (if (not (recurFunc n i)) #f #t) ))

