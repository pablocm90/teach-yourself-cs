(define(A x y)
  (cond((= y 0) 0)
  ((= x 0) (* 2 y))
  ((= y 1) 2)
  (else (A (- x 1) (A x (- y 1))))))

;(A 1 10) =>
;(A 0 (A 1 9)) =>
;(* 2 (A 0 (A 1 8))) =>
;2 to the power of 10 == 24

;(A 2 4) =>
;(A 1 (A 2 3)) =>
;((A 0 (A 1 (- (A (2 3)) 1))))
;(* 2 (A 1 (- (A 2 3) 1)))
;(* 2 (A 0 (- (A (A 1 (A))) 1))) =>
;2 to the power of 6 ?? => 2 to the power of 16


;2 to the power of 27??

; EXPLANATION here: https://codology.net/post/sicp-solution-exercise-1-10/



