#lang racket

(define hamming-weight 
  (lambda (l)
    (cond ;ask two questions
      ((null? l) ;The first question
       0) ;return 0  
      (else ; else
       (cond ;ask a question
         ((= 1 (car l)) ;check if first element is 1
           (+ 1 (hamming-weight (cdr l)))) ;increment and check again with cdr l
           (else ; (car l) is not 1
            (hamming-weight (cdr l))) ; check again with cdr l
           )))))


(hamming-weight (list 1 0 1 0 1 1 1 0)) ; pass list to hamming weight function
(hamming-weight (list 1 1 1 1 1 1 1 1))