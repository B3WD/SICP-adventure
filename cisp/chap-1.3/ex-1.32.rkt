#lang simply-scheme


(define (prod-iter term a next b)
  (define (iter a result)
    (if (> a b)
        result
        (iter (next a) (* result (term a)))))
  (iter a 1))


(define (accumulator combiner null-value term next a b)
  (if (> a b)
      null-value
      (combiner (term a)
         (accumulator combiner null-value term next (next a) b))))

(define (inc n) (+ n 1))
(define (cube x) (* x x x))
(define (square x) (* x x))
(define (double x) (* 2 x))


(define (pi-over-four accuracy)
  (define (inc2 x) (+ x 2))
  (define numer (accumulator * 1 square inc2 4 (- accuracy 1)))
  (define denom (accumulator * 1 square inc2 3 accuracy))
  (/ (* 2 accuracy numer) denom))

(define pi (* 4 (pi-over-four 500)))
pi