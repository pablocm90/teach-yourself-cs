(define (cbrt-iter guess x)
  (if (good-enough? (improve guess x) guess)
  guess
  (cbrt-iter (improve guess x) x)))

(define (good-enough? past-guess guess)
  (< (abs (/ (- guess past-guess) guess )) 0.001))

(define (improve guess x)
  (/ (+ (/ x (* guess guess)) (* 2 guess)) 3))



