#lang simply-scheme


(define (average a b) (/ (+ a b) 2))
(define (square x) (* x x))
(define tolerance 0.00001)

(define (iterative-improve good-enough? improve)
  (lambda (guess) (if (good-enough? guess)
                      guess
                      ((iterative-improve good-enough? improve) (improve guess)))))

(define (fixed-point f init-guess)
  (define (close-enough? x) 
    (< (abs (- x (f x))) tolerance)) 
  ((iterative-improve close-enough? f) init-guess))

(define (sqrt x)
  (define (close-enough? y) (< (abs (- (square y) x)) tolerance))
  ((iterative-improve close-enough? (lambda (y) (average y (/ x y)))) 1.0))

(define (sqrt-fps x) (fixed-point (lambda (y) (average y (/ x y))) 1.0))


(sqrt 4)
(sqrt 5)
(sqrt 64)

(sqrt-fps 4)
(sqrt-fps 5)
(sqrt-fps 64)