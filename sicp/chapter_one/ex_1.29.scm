;Exercise 1.29: Simpson’s Rule is a more accurate method
;of numerical integration than the method illustrated above.
;Using Simpson’s Rule, the integral of a function f between
;a and b is approximated as
;h/3(y 0 + 4y 1 + 2y 2 + 4y 3 + 2y 4 + · · · + 2y n −2 + 4y n −1 + y n ),
;where h = (b − a)/n, for some even integer n, and y k =
;f (a + kh). (Increasing n increases the accuracy of the ap-
;proximation.) Define a procedure that takes as arguments
;f , a, b, and n and returns the value of the integral, com-
;puted using Simpson’s Rule. Use your procedure to inte-
;grate cube between 0 and 1 (with n = 100 and n = 1000),
;and compare the results to those of the integral procedure
;shown above.



(define (base a b n)
  (/ (- b a) n))

(define (increment a k h)
  (+ a (* k h)))


(define (sum term a next b)
  (if (> a b)
  0
  (+ (term a)
    (sum term (next a) next b))))

(define (integral-cool a b n)
  (* base
  ( sum ))
