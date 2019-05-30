(define (sum-of-largest-squares a b c)
  (square-sum (biggest a b) (biggest (smallest a b) c))
  )


(define (square x)
  (* x x))

(define (square-sum x y)
  (+ (square x) (square y)))

(define (smallest a b)
  (if (< a b) a b))

(define (biggest a b)
  (if (> a b) a b))
