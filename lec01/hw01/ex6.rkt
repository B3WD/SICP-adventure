#lang simply-scheme

(define (endless) (endless))

;; In simply-scheme "or" is a special form, not a simple procidure.
;; Because it is a special form, in the test bellow (= 0 0) gets
;; evaluated, and then all other expressions are skipped because
;; they do not matter at this point. If "or" was a simple
;; procidure, then we would get stuck in an endless loop.
(or (= 0 0) (endless))

;; Similarly for "and".
(and (> 3 5) (endless))

;; Pros to "and" and "or" being special forms: it can be usefull
;; as a small optimization, we skip code that does not need to be
;; evaluated.

;; Cons: susceptible of "time attacks". A technique where by the
;; runtime of the code, we can guess which inputs pass, and
;; which do not.