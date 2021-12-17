#lang simply-scheme

(define (sum term a next b)
  (if (> a b)
      0
      (+ (term a)
         (sum term (next a) next b))))

(define (simpson-integral f a b n)
  (define (inc x) (+ x 1))
  (define h (/ (- b a) n))
  (define (new_f x)
    (define combF (f (+ a (* x h))))
    (cond ((or (= x 0) (= x n)) combF)
          ((even? x) (* 2 combF))
          (else (* 4 combF))) )
  (* (sum new_f 0 inc n) (/ h 3)))

(define (cube x) (* x x x))

(simpson-integral cube 0 1 100)
(simpson-integral cube 0 1 1000)
