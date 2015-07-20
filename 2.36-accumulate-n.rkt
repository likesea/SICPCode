#lang racket
(require "accumulate.rkt")

(define (accumulate-n op init seqs)
  (if (null? (car seqs))
      '()
      (cons (accumulate op init 
                        (map (lambda (seq) (car seq))  seqs))
            (accumulate-n op init 
                          (map (lambda (seq) (cdr seq)) seqs))))) 
(define s '((1 2 3) (4 5 6) (7 8 9) (10 11 12)))
             