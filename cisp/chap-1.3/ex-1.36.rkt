#lang simply-scheme

(define tolerance 0.00001)
(define (fixed-point f first-guess)
  (define (close-enough? v1 v2)
    (< (abs (- v1 v2)) tolerance))
  (define (try guess)
    (let ((next (f guess)))
      (if (close-enough? guess next)
          next
          (try next))))
  (try first-guess))

(define (average a b) (/ (+ a b) 2))

(define (sqrt x)
  (fixed-point (lambda (y) (average y (/ x y)))
               1.0))

(fixed-point (lambda (x) (+ 1 (/ 1 x))) 1)
(fixed-point (lambda (x) (/ (log 1000) (log x))) 1.1)
(fixed-point (lambda (x) (* x x)) 0.1)
(sqrt 5)
(sqrt 64)