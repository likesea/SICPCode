#lang racket
(require "fib.rkt")
(define (square x) (* x x))
(map square (list 1 2 3 4))
;filter process
(define (filter predicate sequence)
  (cond ((null? sequence ) '())
        ((predicate (car sequence))
         (cons (car sequence)
               (filter predicate (cdr sequence))))
        (else (filter predicate (cdr sequence)))))
;accumulate process 
(define (accumulate op initial sequence)
  (if (null? sequence)
      initial
      (op (car sequence)
          (accumulate op initial (cdr sequence)))))
(accumulate * 1 (list 1 2 3 4 5))
;(filter odd? (list 1 2 3 4 5))
;enumerate process
(define (enumerate-interval low high)
  (if (> low high)
      '()
      (cons low (enumerate-interval (+ low 1) high))))

(define (even-fibs n)
  (accumulate cons
              '()
              (filter even?
                      (map fib
                           (enumerate-interval 0 n)))))