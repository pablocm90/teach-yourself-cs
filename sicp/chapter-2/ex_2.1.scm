
(define (make-rat n d)
  (if (or (< n 0) (< d 0))
    (let ((g (gcd n d )))
        (cons (- (abs (/ n g))) (abs (/ d g))))
    (let ((g (gcd n d )))
        (cons (/ n g) (/ d g)))))


; https://codology.net/post/sicp-solution-exercise-2-1/
