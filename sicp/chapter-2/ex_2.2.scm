;point constructor:

(define (make-point x y) (cons x y))

;point selectors :

(define (x-point p) (car p))
(define (y-point p) (cdr p))

;segment constructor :


(define (make-segment p1 p2) (cons p1 p2))

;segment selectors :

(define (start-segment segment) (car segment))
(define (end-segment segment) (cdr segment))




(define (midpoint-segment segment)
  (make-point (/ (+ (x-point (start-segment segment)) (x-point (end-segment segment))) 2)
    (/ (+ (y-point (start-segment segment)) (y-point (end-segment segment))) 2)))


(define one (make-point 0 1))
(define two (make-point 6 7))

(define seg-one (make-segment one two))





(define (print-point p)
  (newline)
  (display "(")
  (display (x-point p))
  (display ",")
  (display (y-point p))
  (display ")"))


(print-point (midpoint-segment seg-one))
