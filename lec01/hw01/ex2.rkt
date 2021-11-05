#lang simply-scheme

(define (sqrt x) (* x x))
(define res '())

(define (squares nums)
  (if (empty? nums)
      (se res)
      (se res (sqrt (first nums))
       (squares (bf nums)))))

(squares '(2 3 4 5))
(squares '())
(squares '(0.01 -69 0))