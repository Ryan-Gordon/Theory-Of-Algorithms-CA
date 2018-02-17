#lang racket

;first function lcycle

;custom helper append function done recursively using car and cdr only 
(define (custom-append l m)
 (if (null? l) m ;ask the first question
  (cons (car l) (custom-append (cdr l) m)))) 


(define (lcycle l)
  (if (null? l) ;ask the first question
      '()
      (custom-append (cdr l) ;use our helper function to append the first element to last
              (cons (car l) '() ;cons a list with the car of l and null list
                    ))))

(lcycle (list 1 2 3 4 5))