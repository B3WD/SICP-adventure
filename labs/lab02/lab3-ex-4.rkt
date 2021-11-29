#lang simply-scheme

(define f1 27)
f1

(define (f2) 42)
(f2)

(define (f3 num) (* 2 num))
(f3 3)

(define ((f4)) 3)
((f4))

(define (((f5)) num) (* 3 num))
(((f5)) 3)