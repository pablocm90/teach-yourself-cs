; Iter GCD

(define (gcd a b)
  (if (= b 0)
    a
    (gcd b (remainder a b))))


; Fraction Constructors

(define (numer x) (car x))
(define (denom x) (cdr x))

(define (make-rat n d)
  (if (or (< n 0) (< d 0))
    (let ((g (gcd n d )))
        (cons (- (abs (/ n g))) (abs (/ d g))))
    (let ((g (gcd n d )))
        (cons (/ n g) (/ d g)))))



; primary operations on fractions

(define (add-rat x y)
  (make-rat (+ (* (numer x) (denom y))
               (* (numer y) (denom x)))
            (* (denom x) (denom y))))



(define (sub-rat x y)
  (make-rat (- (* (numer x) (denom y))
               (* (numer y) (denom x)))
            (* (denom x) (denom y))))

(define (mult-rat x y)
  (make-rat (* (numer x) (denom x))
            (* (numer y) (denom y))))


(define (div-rat x y)
  (make-rat (* (numer x) (denom y))
            (* (numer y) (denom x))))

(define (print-rat x)
  (newline)
  (display (numer x)
  (display "/")
  (display (denom x))))

