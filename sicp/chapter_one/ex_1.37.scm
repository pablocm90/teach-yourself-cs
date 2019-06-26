(define (const-recur n d k)
  (define (recur i)
    (if (= k i)
      (/ (n i) (d i))
      (/ (n i (+ (d i) (recur (+ 1 i)))))))
  (recur 1))


;https://codology.net/post/sicp-solution-exercise-1-37/
