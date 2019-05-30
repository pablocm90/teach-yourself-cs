(define (rec-f number)
  (if (< number 3)
  number
  ((+ (tree-f (- number 1) (* (tree-f (- number 2)) 2) (* 3 (tree-f (- number 3))))))))

(define (f number)
  (f-iter 1 2 3 number)
  (define (f-iter n1 n2 n3 count)
    (if (< count 3)
    count
    (f-iter ()))))



(define(fibn)(fib-iter1 0n))(define(fib-iterabcount)(if(=count0)b(fib-iter(+ab)a(-count1))))
