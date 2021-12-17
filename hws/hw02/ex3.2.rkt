#lang simply-scheme


((lambda (n f) (if (= n 0)
                   1
                   (* n (f (- n 1) f))))
 27
 (lambda (n f) (if (= n 0)
                   1
                   (* n (f (- n 1) f)))))