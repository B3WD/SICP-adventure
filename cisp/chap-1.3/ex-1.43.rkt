#lang simply-scheme

(define (compose f g) (lambda (x) (f (g x))))

(define (inc x) (+ x 1))
(define (square x) (* x x))
(define (double x) (* 2 x))

((compose inc inc) 2)

(double (double (double 2)))
(square (square 5))

(define (repeated f n) (lambda (x) (if (= n 0)
                                       x
                                       ((compose (repeated f (- n 1)) f) x) )))

((repeated inc 0) 7)
((repeated double 3) 2)
((repeated square 2) 5)