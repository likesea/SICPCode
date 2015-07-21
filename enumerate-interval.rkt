#lang racket
(provide enumerate-interval)
(define (enumerate-interval n m)
  (if (> n m) '()
      (cons n (enumerate-interval (+ n 1) m))))