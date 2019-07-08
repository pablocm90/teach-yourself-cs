

(define (make-interval a b) (cons a b))


; selectors

(define (upped-bound i) (car i))

(define (lower-bound i) (cdr i))


;methods

(define (add-interval x y)
  (make-interval (+ (lower-bound x) (lower-bound y))
  (+ (upper-bound x) (upper-bound y))))


(define (mul-interval x y)
(let ((p1 (* (lower-bound x) (lower-bound y)))
  (p2 (* (lower-bound x) (upper-bound y)))
  (p3 (* (upper-bound x) (lower-bound y)))
  (p4 (* (upper-bound x) (upper-bound y))))
  (make-interval (min p1 p2 p3 p4)
  (max p1 p2 p3 p4))))


(define (div-interval x y)
  (mul-interval
  x
  (make-interval (/ 1.0 (upper-bound y))
  (/ 1.0 (lower-bound y)))))

;sub-interval

(define (sub-interval x y)
  (make-interval (- (lower-bound x) (upper-bound y))
    (- (upper-bound x) (lower-bound y))))

; div with check


(define (div-check x y)
  (if (or (and (< 0 (lower-bound x)) (> 0 (upper-bound x)))
          (and (> 0 (lower-bound x)) (< 0 (upper-bound x)))
          (and (< 0 (lower-bound y)) (> 0 (upper-bound y)))
          (and (> 0 (lower-bound y)) (< 0 (upper-bound y))))
      (error "One or more interval crossing zero.")
      (mul-interval x
                    (make-interval
                     (/ 1.0 (upper-bound y))
                     (/ 1.0 (lower-bound y))))))


; new mult

(define (new-mult x y)
  )
