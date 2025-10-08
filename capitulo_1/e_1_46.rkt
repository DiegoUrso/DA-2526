#lang racket

(define (iterative-improve good-enough? improve)
  (define (iter guess x)
    (if (good-enough? guess x) guess
        (iter (improve guess x) x)))
  iter)

;; Funciones para testeo
; sqrt adaptado
(define (average x y) (/ (+ x y) 2))
(define (sqrt x)
  (define (improve guess x)
    (average guess (/ x guess)))
  (define (good-enough? guess x)
    (< (abs (- (* guess guess) x)) 0.001))
  ((iterative-improve good-enough? improve) 1.0 x))
; fixed-point adaptado
(define (fixed-point f first-guess)
  (define (close-enough? guess func)
    (< (abs (- guess (func guess))) 0.00001))
  (define (try guess func)
    (func guess))
  ((iterative-improve close-enough? try) first-guess f))