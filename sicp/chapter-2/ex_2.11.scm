

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
(define (generate-intervals)
         (define test-list '())

         ; These lists can be edited by hand to produce different
         ; interval sets. I try to make sure both lists contain
         ; at least one 0 and some negative/positive numbers
         ; with same/different values to ensure a variety of
         ; intervals.

         (define test-data
                 (cons (list 0 1 2 3 4 5 -6 -7 -8 -9 -10)
                       (list 5 4 3 2 1 0 -1 -2 -3 -4 -5)))
         (for-each
                 (lambda (x) (set! test-list (append test-list x)))
                 (map    (lambda (x)     (map    (lambda (y) (make-interval x y))
                                                 (cdr test-data)))
                         (car test-data)))

         ; Our testing procedure will also be abusing for-each
         ; and map to make combinations, so we take our test list
         ; and pair it with its reverse ensure more varied
         ; combinations of pairs.

         (cons test-list (reverse test-list)))

 (define test-intervals
         (generate-intervals))

(define (test f g)

         ; We need to define a special kind
         ; of equality operator for intervals

         (define (interval-equals a b)
                 (and (= (lower-bound a) (lower-bound b)) (= (upper-bound a) (upper-bound b))))

         ; We will test every single possible combination
         ; of pairs from either list. Thanks to the
         ; commutativity of multiplication, this is fairly
         ; straightforward.
         ; If a pair passes the test, nothing gets printed
         ; to the console, but if a pair fails, then both
         ; the original intervals, as well as the results
         ; of applying f and g to said intervals will be printed.

         (for-each (lambda (x)
                         (for-each (lambda (y)
                                         (cond   ((interval-equals (f x y) (g x y)) #t)
                                                 (else
                                                         (newline)
                                                         (display "failed on inputs: "
                                                         (display x) (display y)
                                                         (newline)
                                                         (display (f x y)) (display (g x y))
                                                         (newline))))
                                   (cdr test-intervals)))
                   (car test-intervals))))

 (define (opposite-pair? a b)
         (if (positive? a)
                 (negative? b)
                 (positive? b)))

 (define (positive-pair? a b)
         (if (opposite-pair? a b)
                 #f
                 (positive? a)))

 (define (negative-pair? a b)
         (if (opposite-pair? a b)
                 #f
                 (negative? a)))



(define (old-mul-interval x y)
         (let            ((p1 (* (lower-bound x) (lower-bound y)))
                          (p2 (* (lower-bound x) (upper-bound y)))
                          (p3 (* (upper-bound x) (lower-bound y)))
                          (p4 (* (upper-bound x) (upper-bound y))))
                 (make-interval
                         (min p1 p2 p3 p4)
                         (max p1 p2 p3 p4))))

 (define (new-mul-interval x y)

         ; We will capture the boundaries
         ; of each interval as variables
         ; to avoid repeated function calls

         (let        ((x0 (lower-bound x))
                      (x1 (upper-bound x))
                      (y0 (lower-bound y))
                      (y1 (upper-bound y)))

                 ; At the moment, mul-interval just
                 ; passes its arguments on to
                 ; `old-mul-interval`

                 (cond (else (old-mul-interval x y)))))

 ; nothing will be printed as both procedures are basically the same.

 (test old-mul-interval new-mul-interval)

 ;http://community.schemewiki.org/?sicp-ex-2.11
