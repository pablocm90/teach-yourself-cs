;(define (fringe listing)
;  (define (first listing) (car listing))

;  (define (rest listing) (cdr listing))

;  (define nil (list))

;  (define (fringe-iter listing result)
;          (newline)
;          (display listing)
;          (display " ___________ ")
;          (display result)
;          (newline)
;    (cond ((null? listing)
;          (display "NULL-----")
;          (display result)
;          result)
;          ((pair? (first listing))
;          (display "PAIR------")
;          (display result)
;          (fringe-iter (first listing) (fringe-iter (rest listing) result)))
;          (else
;          (display "ELSE----------")
;          (display result)
;          (newline)
;          (append result (first listing))
;          (display (appendresult (first listing)))
;          (fringe-iter (rest listing) result))))
;  (fringe-iter listing nil)
;)


;(define x (list (list 1 2) (list 3 4)))

;(display (fringe x))
;(newline)


;http://community.schemewiki.org/?sicp-ex-2.28

 (define (fringe tree)
   (define nil '())
   (if (null? tree)
       nil
       (let ((first (car tree)))
         (if (not (pair? first))
             (cons first (fringe (cdr tree)))
             (append (fringe first) (fringe (cdr tree)))))))

(define x (list (list 1 2) (list 3 4)))
(newline)

(display (fringe x))
(newline)
(display (fringe (list x x)))
