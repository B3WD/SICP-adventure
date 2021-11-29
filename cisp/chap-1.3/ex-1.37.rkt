#lang simply-scheme

(define (cont-frac n d k)
  (define (cont-frac-iter n d k i) (if (= i k)
                                      (/ (n i) (d i))
                                      (/ (n i)
                                         (+ (d i) (cont-frac-iter n d k (+ i 1)))) ))
  (cont-frac-iter n d k 1))

(define acc 100)
(cont-frac (lambda (i) 1.0)
           (lambda (i) 1.0)
           acc)