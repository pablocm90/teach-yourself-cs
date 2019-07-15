(define (reverse list)
  (let ((rest (cdr list)))
  (if (null? rest)
      list
      (append (reverse rest) (cons (car list) '())))))


(display (reverse (list 1 4 9 16 25)))
