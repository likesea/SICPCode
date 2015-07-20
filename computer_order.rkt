#lang racket
(define (p) (p))
(define (test x y)
  (if (not (= x 0))
      0
      y))
