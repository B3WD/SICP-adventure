#lang simply-scheme


(define (filtered-accumulator combiner filter null-value term next a b)
  (cond ((> a b) null-value)
        ((filter a) (combiner (term a)
                              (filtered-accumulator combiner filter null-value term next (next a) b)))
        (else (combiner null-value
                              (filtered-accumulator combiner filter null-value term next (next a) b)))))
  
(define (inc n) (+ n 1))
(define (cube x) (* x x x))
(define (square x) (* x x))
(define (double x) (* 2 x))


(filtered-accumulator + even? 0 square inc 1 6)
(filtered-accumulator + odd? 0 square inc 1 6)