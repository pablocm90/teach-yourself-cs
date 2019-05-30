(define (sqrt-iter guess past-guess x)
  (if (good-enough? guess past-guess)
  guess
  (sqrt-iter (improve guess x) guess x)))

(define (improve guess x)
  (average guess (/ x guess)))

(define (average x y)
  (/ (+ x y) 2))

(define (good-enough? guess past-guess)
  (< (/ (abs (- past-guess guess)) guess ) 0.001))

