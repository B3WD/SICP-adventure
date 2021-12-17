#lang simply-scheme

(define (square x) (* x x))
(define (cube x) (* x x x))

(define (cube-iter guess x)
  (if (good-enough? guess x)
    guess
    (cube-iter (improve guess x)
                x)))

(define (improve guess x)
  (/ (+ (/ x (square guess)) 
     (* 2 guess)) 
   3)
)

(define (good-enough? guess x)
  (= (/ guess (improve guess x)) 1))

(define (cbrt x)
  (cube-iter 1.0 x))

(cbrt 3)
(cbrt 64)
(cbrt 0)
(cbrt 0.00000000000053) ;;0.00008092672
(cbrt 9398378628672) ;;21103.3294602
;; (cbrt -2)
;; (cbrt 100)
