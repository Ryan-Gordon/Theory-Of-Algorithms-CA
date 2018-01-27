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
  (not ; A number is prime if it fails to be divided evenly
    (for/or [(d (in-range i n))]; Any value that returns true, is not prime
      (= 0 (remainder n d))))) ; check if n / d is fully dividable

(define (decide-prime n)
  ;If the number is divisible by 2 it cant be a prime other than the edge cases
  (if (< n 2)
      #f
  (if (not (recurFunc n i)) #f #t) ))

; Testcases for the function
"Testcase 2 - is 2 a prime number?"
(decide-prime 2)
"Testcase 3 - is 1 a prime number?"
(decide-prime 1)
"Testcase 4 - is 3 a prime number?"
(decide-prime 3)
"Testcase 5 - is 7 a prime number?"
(decide-prime 7)