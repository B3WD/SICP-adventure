#lang simply-scheme

;; recursive solution
(define (fib-rec-special n)
  (cond ((= n 0) 0)
        ((= n 1) 1)
        ((= n 2) 2)
        (else (+ (fib-rec-special (- n 1))
                 (* 2 (fib-rec-special (- n 2)))
                 (* 3 (fib-rec-special (- n 3))) ))))

;; iterative selution
(define (fib-special n)
  (fib-iter 0 1 2 n))

(define (fib-iter a b c n)
  (cond ((= n 0) a)
        ((= n 1) b)
        ((= n 2) c)
        (else (fib-iter b c (+ c (* 2 b) (* 3 a)) (- n 1)) )))

(fib-rec-special 0)
(fib-rec-special 1)
(fib-rec-special 2)
(fib-rec-special 3)
(fib-rec-special 4)
(fib-rec-special 5)
(fib-rec-special 6)

(fib-special 0)
(fib-special 1)
(fib-special 2)
(fib-special 3)
(fib-special 4)
(fib-special 5)
(fib-special 6)