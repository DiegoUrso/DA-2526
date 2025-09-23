#lang racket

;Algoritmo 1
;Este algoritmo es recursivo porque almacena datos de las otras iteraciones en su pila
(plus 4 5)
(inc (plus (dec 4) 5))
(inc (plus (- 4 1) 5))
(inc (plus 3 5))
(inc ((inc (plus (dec 3) 5))))
(inc ((inc (plus (- 3 1) 5))))
(inc ((inc (plus 2 5))))
(inc ((inc ((inc (plus (dec 2) 5))))))
(inc ((inc ((inc (plus (- 2 1) 5))))))
(inc ((inc ((inc (plus 1 5))))))
(inc ((inc ((inc ((inc (plus (dec 1) 5))))))))
(inc ((inc ((inc ((inc (plus (- 1 1) 5))))))))
(inc ((inc ((inc ((inc (plus 0 5))))))))
(inc ((inc ((inc ((inc 5)))))))
(inc ((inc ((inc (6))))))
(inc ((inc 7)))
(inc 8)
9

;Algoritmo 2
;Este algoritmo no es recursivo ya que no almacena datos de las otras iteraciones en su pila
(plus 4 5)
(plus (dec 4) (inc 5))
(plus 3 6)
(plus (dec 3) (inc 6))
(plus 2 7)
(plus (dec 2) (inc 7))
(plus 1 8)
(plus (dec 1) (inc 8))
(plus 0 9)
9