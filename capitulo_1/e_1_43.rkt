#lang racket

(define (compose f g)
  (lambda (x) (f (g x))))

; Funciones para testear
(define (square x) (* x x))
(define (inc x) (+ x 1))

(define (repeated f n)
  (cond ((= n 1) f)
        ((> n 1) (compose f (repeated f (- n 1))))
        (else (lambda (x) x)))) ; Si es menor o igual a 0, no se opera