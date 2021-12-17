#lang simply-scheme


(define (prod-iter term a next b)
  (define (iter a result)
    (if (> a b)
        result
        (iter (next a) (* result (term a)))))
  (iter a 1))

(define (prod-rec term a next b)
  (if (> a b)
      1
      (* (term a)
         (prod-rec term (next a) next b))))

(define (inc n) (+ n 1))
(define (cube x) (* x x x))
(define (square x) (* x x))
(define (double x) (* 2 x))

(define (prod style f step a b)
  (style f a step b))

;(prod prod-rec cube inc 1 10)
;(prod prod-rec double inc 1 10)
;(prod prod-iter cube inc 1 10)
;(prod prod-iter double inc 1 10)

(define (pi-over-four accuracy)
  (define (inc2 x) (+ x 2))
  (define numer (prod prod-iter square inc2 4 (- accuracy 1)))
  (define denom (prod prod-iter square inc2 3 accuracy))
  (/ (* 2 accuracy numer) denom))

(define pi (* 4 (pi-over-four 500)))
pi