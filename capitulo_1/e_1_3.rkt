#lang racket
(define (p a b c)
        (if (< a b)
            (if (< a c) (+ (* b b) (* c c)) (+ (* a a) (* b b)))
            (if (< b c) (+ (* a a) (* c c)) (+ (* a a) (* b b)))
            ))