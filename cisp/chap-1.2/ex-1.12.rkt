#lang simply-scheme

(define (pask-triang n)
  (pask-triang-iter '(1) n))

;(define (gen-row-triag sent)
;  (cond ((equal? (bf sent) '()) 1)
;        (else (se (gen-row-triag (bf sent))
;                  (+ (first sent) (first (bf sent))))) ))

;(define (gen-row-triag sent)
;  (cond ((equal? (bf sent) '()) 1)
;        ((equal? (first sent) 1) (se (gen-row-triag (bf sent))
;                                     (+ (first sent) (first (bf sent))) 1))
;        (else (se (gen-row-triag (bf sent))
;                  (+ (first sent) (first (bf sent))))) ))

(define (gen-row-triag sent)
  (cond ((equal? (bf sent) '()) '())
        (else (se (gen-row-triag (bf sent))
                  (+ (first sent) (first (bf sent))))) ))

(define (pask-triang-iter sent n)
  (cond ((= n 0) sent)
        (else (pask-triang-iter (se 1 (gen-row-triag sent) 1) (- n 1))) ))

;(gen-row-triag '(1 6 15 20 15 6 1))
;(gen-row-triag '(1))
;(gen-row-triag '(1 1))
;(gen-row-triag '(1 2 1))
(pask-triang 7)
(pask-triang 27)