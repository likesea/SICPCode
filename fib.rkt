#lang racket
(provide fib)
(define (fib x)
  (define (fib-helper  count k1 k2)
    (if (= count 0)
        k2
        (fib-helper (- count 1) (+ k1 k2) k1 )))
  (fib-helper x 1 0))

