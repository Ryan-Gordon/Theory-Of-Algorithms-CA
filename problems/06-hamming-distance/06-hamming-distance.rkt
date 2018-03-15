#lang racket

(define hamming-distance
  (lambda (l m)
  ;edge case : if either of the lists are null then the hamming-distance is 0
    (cond
      ((null? l) (null? m); Ask the first question of a lists  
                 0 ) ; return 0 if they are null
      (else ; if the lists arent null
       (cond ;ask more questions
         ((= (car l) (car m));if the atom car l is equal to the atom car m:
          (hamming-distance (cdr l) (cdr m))); dont increment, continue recursion
         (else ;if the (car l) (car m) IS equal
          (+ 1 (hamming-distance (cdr l) (cdr m)))))
       )))); increment distance and continue recursion
        

(hamming-distance (list 1 1 1 1 0 0 0 0) (list  1 0 1 0 1 1 1 0))
(hamming-distance (list 1 1 1 1 0 0 0 0) (list  1 1 1 1 0 0 0 0))
(hamming-distance (list 1 1 1 1 0 0 0 0) (list  0 0 0 0 1 1 1 1))