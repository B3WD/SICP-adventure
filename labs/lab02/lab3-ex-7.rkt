#lang simply-scheme

(define (make-tester w) (lambda (x) (equal? w x)))

((make-tester 'hal) 'hal)
((make-tester 'hal) 'cs61a)

(define sicp-author-and-astronomer? (make-tester 'gerry))

(sicp-author-and-astronomer? 'hal)
(sicp-author-and-astronomer? 'gerry)