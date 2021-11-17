#lang simply-scheme

(define (switch sens)
  (cond ((empty? sens) '())
         ((or
          (equal? 'me (first sens))
          (equal? 'I (first sens))) (se 'you (switch (bf sens))))
        ((equal? 'you (first sens)) (se 'me (switch (bf sens))))
        ((equal? 'You (first sens)) (se 'I (switch (bf sens))))
        (else (se (first sens) (switch (bf sens))))
  )
)

(switch '(You told me that I should wake you up))
(switch '(You and me have some differences))
(switch '(My friends and I went to the cinema))