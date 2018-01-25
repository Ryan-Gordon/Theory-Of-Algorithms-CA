#lang racket
(define i 2) ; Start point for checking; 1 is not prime to start at 2
(define (recurFunc i n)
  ;If in Racket is 'one-armed' meaning all ifs must have an else
  ;An alternative is when which acts like an if without an else clause
  ;1,2,3 are edge cases for primes so I handle them manually
  (when (= 2 n)
    #t)
  (when (= 3 n)
      #t)

(define (decide-prime n)
  ;If the number is divisible by 2 it cant be a prime other than the edge cases
  (if (< n 2)
      #f
  (if (not (recurFunc n i)) #f #t) ))

