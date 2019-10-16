(define nil (quote ()))

(define (accumulate op initial sequence)
  (if (null? sequence)
      initial
      (op (car sequence)
          (accumulate op initial (cdr sequence)))))




(define (horner-eval x coefficient-sequence)
  (accumulate
    (lambda (this-coeff higher-terms) (newline) (display "this-coeff: ") (display this-coeff) (newline) (display "higher-terms :") (display higher-terms) (newline) (display "---")
      (if (not (eq? this-coeff 0))
        (+ (* 2 this-coeff) higher-terms higher-terms)))
    0
    coefficient-sequence))


(horner-eval 2 (list 1 3 0 5 0 1))
