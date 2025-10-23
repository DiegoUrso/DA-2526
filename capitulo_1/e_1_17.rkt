#lang racket

(define (double x) (+ x x))
(define (halve x) (/ x 2))

(define (fast-mul a b)
  (cond ((= b 0) 
         0)
        ((even? b) 
         (fast-mul (double a) (halve b)))
        (else 
         (+ a (fast-mul a (- b 1))))))


; Version iterativa
(define (fast-mul-i c a b)
  (cond ((= b 0)
         c)
        ((even? b)
         (fast-mul-i c (+ a a) (/ b 2)))
        (else 
         (fast-mul-i (+ c a) a (- b 1))))) 