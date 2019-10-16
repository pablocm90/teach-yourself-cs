; without map and recursion

(define nil (quote ()))

(define (square x)
  (* x x))


(define (square-tree tree)
  (display tree)
  (newline)
  (display "-------------") (newline)
  (cond ((null? tree) nil)
        ((pair? tree) (cons (square-tree (car tree)) (square-tree (cdr tree))))
        (else (square tree))))


(define test (list 1
       (list 2 (list 3 4) 5)
       (list 6 7)))

(display test)
(newline)
(display (square-tree test))


; with map and recursion

(define (square-tree-map tree)
  (map (lambda (sub-tree)
        (if (pair? sub-tree)
            (square-tree sub-tree)
            (square sub-tree)))
      tree))

(newline)
(newline)
(newline)
(display (square-tree-map test))
