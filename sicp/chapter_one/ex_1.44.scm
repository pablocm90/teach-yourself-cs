(define (compose f g)
  (lambda (x)
    (f (g x))))

(define (repeated f x)
  (if  (= x 1)
  f
  (compose f (repeated f (- x 1)))))

(define (square x)
  (* x x))

(display ((repeated square 2) 5))

(define (smooth f)
  (lambda (x)
    (/ (+ (f (- x dx)) (f x) (f (+ x dx))) 3)))


(display ((smooth square) 0.1))
