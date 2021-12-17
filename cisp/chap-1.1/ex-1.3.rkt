#lang simply-scheme

(define (sqrt x) (* x x))

(define (firstsmaller? a b c) (and (<= a b) (<= a c)))

(define (min a b c) 
  (cond ((firstsmaller? a b c) a) 
        ((firstsmaller? b a c) b)
        ((firstsmaller? c a b) c)))

(define (func a b c) 
  (cond ((firstsmaller? a b c) (+ (sqrt b) (sqrt c)))
        ((firstsmaller? b a c) (+ (sqrt a) (sqrt c)))
        ((firstsmaller? c a b) (+ (sqrt a) (sqrt b)))  
  )
)

(func 7 2 7)
(func 1 2 3)
(func 6 6 6)