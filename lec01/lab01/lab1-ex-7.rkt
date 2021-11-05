#lang simply-scheme

(define (dupls-removed sens)
  (cond ((empty? sens) '())
        ((member? (first sens) (bf sens)) (dupls-removed (bf sens)))
        (else (se (first sens) (dupls-removed (bf sens)) ))))


(dupls-removed '(a b c a e d e b))
(dupls-removed '(a b c))
(dupls-removed '(a a a a b a a))
(dupls-removed '())
(dupls-removed '(z z z z))



