(define (last-pair list)
  (let ((second (cdr list)))
  (if (null? second)
    list
    (last-pair second))))



(display (last-pair (list 23 72 149 34)))
