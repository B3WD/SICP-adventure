#lang simply-scheme

(define (every f sent) (if (empty? sent)
                           '()
                           (se (f (first sent)) (every f (bf sent)))))

(define (square x) (* x x))

(every square '(1 2 3 4))
(every first '(hello there))