#lang racket

(define weight 0)
(define (hamming-weight l)
  (lambda (l)
    (cond ;ask two questions
      ((null? l) '()) ;null and else
      (else (cond
              (if(positive? (car l) )
               (+ weight 1) (hamming-weight (cdr l)))
              (hamming-weight (cdr l))
               )))))


(hamming-weight (list 1 0 1 0 1 1 1 0)) ; pass list to hamming weight function
