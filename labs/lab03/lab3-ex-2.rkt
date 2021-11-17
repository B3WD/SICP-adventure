#lang simply-scheme

(define (substitute sent old_word new_word)
  (cond ((equal? sent '()) '())
        ((equal? (first sent) old_word)
         (se new_word (substitute (bf sent) old_word new_word)))
        (else (se (first sent) (substitute (bf sent) old_word new_word)))))


(substitute '(she loves you yeah yeah yeah) 'yeah 'maybe)
(substitute '(iron can be made into iron armor iron boots etc) 'iron 'gold)