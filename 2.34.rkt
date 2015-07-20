#lang racket
(require "accumulate.rkt")
(define (horner-eval2 x lst)
  (cond ((null?  lst) 0)
        ((not (pair? lst)) (* x lst))
        (else
         (+ (car lst) (* x (horner-eval2 x (cdr lst)))))))
;套用了accumulate的抽象过程
(define (horner-eval x coefficient-sequence)
  (accumulate (lambda (this-coeff higher-terms)
                (+ this-coeff (* x higher-terms)))
              0
              coefficient-sequence))