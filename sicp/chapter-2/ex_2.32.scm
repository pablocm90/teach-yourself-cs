(define nil (quote ()))


(define (subsets s)
  (if (null? s)
      (list nil)
      (let ((rest (subsets (cdr s))))
        (append rest (map (lambda (s-s)
          (cons (car s) s-s))
          rest)))))


(define test
`(1 2 3))

(display (subsets test))
