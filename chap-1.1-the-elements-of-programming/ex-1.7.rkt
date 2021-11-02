#lang simply-scheme

(define (square x) (* x x))

(define (sqrt-iter guess x)
  (if (good-enough? guess x)
    guess
    (sqrt-iter (improve guess x)
                x)))

(define (improve guess x)
  (average guess (/ x guess)))

(define (average x y)
  (/ (+ x y) 2))

;; improved good-enough? procedure.
(define (good-enough? guess x) 
  (= (improve guess x) guess))

(define (sqrt x)
  (sqrt-iter 1.0 x))

(sqrt 2)
(sqrt 0)
(sqrt 0.0000004)
(sqrt 98873468577262)