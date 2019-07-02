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


;;https://codology.net/post/sicp-solution-exercise-1-43/
