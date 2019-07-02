(define (compose f g)
  (lambda (x)
    (f (g x))))

;https://codology.net/post/sicp-solution-exercise-1-42/
