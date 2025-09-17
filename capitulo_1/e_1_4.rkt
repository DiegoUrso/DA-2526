#lang racket

(define (a-plus-abs-b a b)
  ((if (> b 0) + -) a b))

(a-plus-abs-b 2 3)

; (a-plus-abs-b 2 3)
; ((if > 3 0)) + -) 2 3)
; ((if #t + -) 2 3)
; (+ 2 3)
; 5


(a-plus-abs-b 2 -3)

; (a-plus-abs-b 2 -3)
; ((if > -3 0)) + -) 2 -3)
; ((if #f + -) 2 -3)
; (- 2 -3)
; 5

; Podemos ver que la función realiza la suma entre a y el valor absoluto de b. Lo que primero se evalua es la condición de >.
; Una vez resuelto, se evalua el if. Si es true la operación resultante es + y en caso contrario es -.
; Por último se realiza la operación obtenida anteriormente entre a y b, obteniendo el resultado.



