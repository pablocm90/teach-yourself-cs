;Exercise 1.12. The following pattern of numbers is called Pascal’s triangle.
;The numbers at the edge of the triangle are all 1, and each number inside the triangle is the sum of the
;two numbers above it. 35 Write a procedure that computes elements of Pascal’s triangle by means of a
;recursive process.

;(define (ptriangle row col)
;  (cond ((= row 1) 1)
;        ((= row col) 1)
;        ((= col 1) 1)
;        (else (+ (ptriangle (- row 1)(- col 1))
;(ptriangle (- row 1) col)))))


; from https://github.com/areina/sicp-exercises/blob/master/exercise-1.12
