#lang racket

; Re-write the following expressions in Racket and evaluate them using a
; Racket in- terpreter/compiler.
; (a) (3×(5+(10÷5)))
; (b) (2+3+4+5)
; (c) (1+(5+(2+(10÷3))))
; (d) (1+(5+(2+(10÷3.0))))
; (e) (3+5)×(10÷2)
; (f) (3+5)×(10÷2)+(1+(5+(2+(10÷3))))

; Some extra expressions ;)
; (2+2)
; (4-1)
; Quick Maths!
; (a)
(* 3 (+ 5 (/ 10 5)))

; (b)
(+ 5 4 3 2)

; (c)
(+ 1 (+ 5 (+ 2 (/ 10 3))))

; (d)
(+ 1 (+ 5 (+ 2 (/ 10 3.0))))

; (e)
(* (+ 5 3) (/ 10 2))

; (f)
(+ 1 (+ 5 (+ 2 (/ 10 3))) (* (+ 5 3) (/ 10 2)))