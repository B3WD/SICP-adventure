#lang simply-scheme

(define (g) (lambda (x) (+ x 2)))

((g) 1)