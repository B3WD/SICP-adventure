#lang simply-scheme

(define (1+ a) (+ 1 a))

(define (s x)
  (+ 1 x))

(define (t f)
  (lambda (x) (f (f (f x)))) )

((t 1+) 0) ;3
((t (t 1+)) 0) ;9
(((t t) 1+) 0) ;27

((t s) 0) ;3
((t (t s)) 0) ;9
(((t t) s) 0) ;27
