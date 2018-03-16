#lang racket

(define (maj x y z)
  (cond
    ((null? x) (null? y) (null? z) ;ask if lists are null 
     '() ) ;if so return the null list
    
(maj (list 0 0 0 0 1 1 1 1) (list 0 0 1 1 0 0 1 1) (list 0 1 0 1 0 1 0 1))