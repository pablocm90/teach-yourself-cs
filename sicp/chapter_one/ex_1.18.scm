(define (mult-iter a b c)
  (cond ((= b 0)
  c)
  ((even? b)
  (mult-iter (double a) (halve b) c))
  (else
  (mult-iter a (- b 1) (+ a c)))))

(define (halve a)
  (if (odd? a)
  a
  (/ a 2)))

(define (double a)
  (+ a a))


(define (multiplication a b)
  (mult-iter a b 0))
