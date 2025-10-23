#lang racket

(define (sum term a next b)
 (define (iter a result)
   (if (> a b)
       result
       (iter (next a) (+ result (term a)))))
 (iter a 0))

; Pasos simplificados para esta llamada:
(sum (lambda (x) x) 1 add1 5)
; (iter 1 0)
; if (> 1 5) -> #f
; (iter 2 1)
; if (> 2 5) -> #f
; (iter 3 3)
; if (> 3 5) -> #f
; (iter 4 6)
; if (> 4 5) -> #f
; (iter 5 10)
; if (> 5 5) -> #f
; (iter 6 15)
; if (> 6 5) -> #t
; 15

; Como en este caso term mantiene la a con su mismo valor
; y next es add1, la función suma todos los números desde
; a hasta b. En el ejemplo: 1+2+3+4+5=15. Por tanto, el
; resultado es correcto.

; Es una función iterativa porque cada llamada solo actualiza
; a y result y no necesita recordar pasos anteriores, por lo
; que se puede reutilizar el mismo espacio de memoria.
