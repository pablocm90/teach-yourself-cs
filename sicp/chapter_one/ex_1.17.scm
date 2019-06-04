(define (mult a b)
  (cond ((= b 0)
  0)
  ((even? b)
  (mult (double a) (halve b)))
  (else
  (+ a (mult a (- b 1))))))

(define (halve a)
  (if (odd? a)
  a
  (/ a 2)))

(define (double a)
  (+ a a))

