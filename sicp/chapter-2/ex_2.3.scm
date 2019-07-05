; POINT

;point constructor:

(define (make-point x y) (cons x y))

;point selectors :

(define (x-point p) (car p))
(define (y-point p) (cdr p))

; SEGMENT

;segment constructor :


(define (make-segment p1 p2) (cons p1 p2))

;segment selectors :

(define (start-segment segment) (car segment))
(define (end-segment segment) (cdr segment))

(define (length segment)
  (abs (- (start-segment segment) (end-segment segment)))

; RECTANGLE

; rectangle constructor

(define (make-rectangle s1 s2) (cons s1 s2))

; rectangle selectors

(define (vertical-side rectangle) (car rectangle))
(define (horizontal-side rectangle) (cdr rectangle))


;Procedures


(define (area rectangle)
  (* (length (vertical-side rectangle)) (length (horizontal-side rectangle))))

(define (perimeter rectangle)
  (+ (* (length (vertical-side rectangle)) 2) (* (length (horizontal-side rectangle)) 2)))

  ;https://codology.net/post/sicp-solution-exercise-2-3/

;( Not even close! :( ))
