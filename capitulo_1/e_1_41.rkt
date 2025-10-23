#lang racket

(define (double f)
  (lambda (x) (f (f x))))

; Funcion de testeo
(define (inc x) (+ x 1))

(println (((double (double double)) inc) 5)) ; = 21