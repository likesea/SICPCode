#lang racket
(require "nested-map.rkt")
(define (permutation s)
  (if (null? s)
      (list '())
      (flatmap (lambda (x)
                 (map (lambda (p) (cons x p))
                      (permutation (remove x s))))
               s)))