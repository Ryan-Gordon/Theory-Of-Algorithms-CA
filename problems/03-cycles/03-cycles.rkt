#lang racket

;first function lcycle

;custom helper append function done recursively using car and cdr only 
(define (custom-append l m)
 (if (null? l) m ;ask the first question
  (cons (car l) (custom-append (cdr l) m)))) 

;helper function used to retreive the last element in a list l source : https://stackoverflow.com/questions/13175152/scheme-getting-last-element-in-list
(define (last_element l)
  (cond
    ((null? (cdr l)) (car l))
    (else
     (last_element (cdr l)))))

;helper function sourced from the little schemer
(define rember
  (lambda (a lat)
    (cond
      ((null? lat)
       (quote ()))
      (else
       (cond
         ((eq? (car lat) a) (cdr lat))
         (else (cons (car lat)
                     (rember a (cdr lat)))))))))

(define (lcycle l)
  (cond
    ((null? l) ;ask the first question
      '() )
    (else
      (custom-append (cdr l) ;use our helper function to append the first element to last
              (cons (car l) '() ;cons a list with the car of l and null list
                    )))))

(define (rcycle l)
  (cond
    ((null? l) ;ask the first question
      '() )
    (else
      (cons (last_element l)
            (rember (last_element(cdr l)) l
                                 )))))


(lcycle (list 1 2 3 4 5))
(rcycle (list 1 2 3 4 5))

