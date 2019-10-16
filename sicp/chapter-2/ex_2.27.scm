(define (reverse list)
  (let ((rest (cdr list)))
  (if (null? rest)
      list
      (append (reverse rest) (cons (car list) '())))))

(define (deep-reverse list)
  (map reverse (reverse list)))


(define x (list (list 1 2) (list 3 4)))


(display x)
(newline)

(display (reverse x))
(newline)

(display (deep-reverse x))


; I feel like I hacked it instead of coding it:
;http://community.schemewiki.org/?sicp-ex-2.27
