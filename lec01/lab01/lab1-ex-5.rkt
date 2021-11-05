#lang simply-scheme

(define (vowel? letter)
  (member? letter '(a e i o u)))

;; My intial solution.
(define (plural wd)
  (cond ((vowel? (last (bl wd))) (word wd 's))
        ((if (equal? (last wd) 'y)
             (word (bl wd) 'ies)
             (word wd 's)))))

;; Much better version from Brian.
;(define (plural wd)
;  (if (equal? (last wd) 'y)
;      (y-plural (bl wd))
;      (word wd 's)))

;(define (y-plural prefix)
;  (if (vowel? (last prefix))
;      (word prefix 'ys)
;      (word prefix 'ies)))

(plural 'cat)
(plural 'body)
(plural 'child)
(plural 'boy)