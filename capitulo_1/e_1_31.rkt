#lang racket

; Las funciones product y product_iter multiplican todos los números
; dentro de un rango [a-b]. Si a vale 1, el resultado se corresponde
; con el factorial de b.

(define (product term a next b)
  (if (> a b)
      1
      (* (term a)
         (product term (next a) next b))))

(product (lambda (x) x) 1 add1 5)


(define (product_iter term a next b)
 (define (iter a result)
   (if (> a b)
       result
       (iter (next a) (* result (term a)))))
 (iter a 1))

(product_iter (lambda (x) x) 1 add1 5)