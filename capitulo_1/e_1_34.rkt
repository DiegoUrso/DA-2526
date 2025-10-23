#lang racket

(define (f g) (g 2))


; Ejemplos que funcionan
(f sqr) ; 4
(f (lambda (z) (* z (+ z 1)))) ; 6


; (f f) no funciona. Produce el error:
; application: not a procedure
; expected a procedure that can be applied to arguments
;  given: 2

; Este error se da porque (f f) hace (f 2), pero (f 2)
; no es posible porque la función f espera que g sea
; un procedimiento y en este caso es un número.

(f f)