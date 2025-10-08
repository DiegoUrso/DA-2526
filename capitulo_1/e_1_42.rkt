#lang racket

(define (compose f g)
  (lambda (x) (f (g x))))

; Funciones para testear
(define (square x) (* x x))
(define (inc x) (+ x 1))