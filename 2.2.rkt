#lang racket
(define (make-point x y) (cons x y))
(define (x-point point) (car point))
(define (y-point point) (cdr point))
(make-point 1 2)
(define (make-segment pointBegin pointEnd) (cons pointBegin pointEnd))
(define (start-segment segment) (car segment))
(define (end-segment segment) (cdr segment))


(define (midpoint-segment segment) 
	(let ((start (start-segment segment))
			(end (end-segment segment)))
			(make-point (average (x-point  start) (x-point end))
						(average (y-point start) (y-point end	))
			)
			)
	)
(define (average x y) (/ (+ x y) 2.0))
;;;test example
(midpoint-segment (make-segment (make-point 2 3) (make-point 4 5)))