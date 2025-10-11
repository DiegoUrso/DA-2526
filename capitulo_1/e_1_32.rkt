#lang racket

; Juntamos las funciones de los anteriores ejercicios en una sola,
; permitiendo escoger la operación que se quiere hacer al llamarla.
; De nuevo, si se hace la multiplicación con un rango [1-b], se
; corresponde con el factorial de b.

(define (accumulate combiner null-value term a next b)
  (if (> a b)
      null-value
      (combiner (term a)
         (accumulate combiner null-value term (next a) next b))))

(accumulate + 0 (lambda (x) x) 1 add1 5) ; suma
(accumulate * 1 (lambda (x) x) 1 add1 5) ; multiplicación/factorial


(define (accumulate_iter combiner null-value term a next b)
 (define (iter a result)
   (if (> a b)
       result
       (iter (next a) (combiner result (term a)))))
 (iter a null-value))

(accumulate_iter + 0 (lambda (x) x) 1 add1 5) ; suma
(accumulate_iter * 1 (lambda (x) x) 1 add1 5) ; multiplicación/factorial