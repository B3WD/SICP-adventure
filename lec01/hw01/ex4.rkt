#lang simply-scheme

(define (ordered? nums)
  (cond ((= (count nums) 1) #t)
        ((<= (first nums) (first (bf nums)))
         (ordered? (bf nums)))
        (else #f)
  )
)

(ordered? '(3 5 8 9 12 15 26 28 57 98))
(ordered? '(3 2 1))
(ordered? '(42))
(ordered? '(1 3 7 9 12 10))
(ordered? '(7 9 12 12 10))