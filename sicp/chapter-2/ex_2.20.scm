(define (same-parity f . l)
  (newline)
  (newline)
  (display "BEFORE PARITY")
  (newline)
  (display "f : ")
  (display f)
  (newline)
  (display "l : ")
  (display l)
  (newline)
  (display "car l : ")
  (display (car l))
  (newline)
  (let ((rest ())))
  (let ((parity (remainder f 2)))
  (cond ((null? l)
    `    (display "I AM IN NULL")
        (list f))
        ((= parity (remainder (car l) 2))
        (display "I AM IN parity should be equal")
        (append (list f) (same-parity l)))
      (else
      (display "I AM IN different")
      (display (cdr l))
      (display l)
      (same-parity f (cdr l))
      ))))



;http://community.schemewiki.org/?sicp-ex-2.20 was close ish!
(display (same-parity 1 2 3 4 5 6 7))
(display (same-parity 2 3 4 5 6 7))