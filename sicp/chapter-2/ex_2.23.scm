(define (for-each proc list)
  (if (null? list)
      (display #t)
      (((for-each proc (cdr list)) (proc (car list)) ))))


;Main problem is how the f* do I retun nil ?
;when a list is empty is it the same as nill??



(for-each (lambda (x)
(newline)
(display x))
(list 57 321 88))
