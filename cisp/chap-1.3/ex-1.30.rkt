#lang simply-scheme

(define (sum term a next b)
  (define (iter a result)
    (if (> a b)
        result
        (iter (next a) (+ result (term a)))))
  (iter a 0))

(define (inc n) (+ n 1))
(define (cube x) (* x x x))
(define (double x) (* 2 x))

(define (sum-cubes a b)
  (sum cube a inc b))

(define (sum-doubles a b)
  (sum double a inc b))

(sum-cubes 1 10)
(sum-doubles 1 10)