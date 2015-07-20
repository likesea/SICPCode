#lang racket
(define (deep-reverse L) 
(if (pair? L) 
(reverse (map deep-reverse L))
L))
(define (reverse lst)
    (iter lst '()))

(define (iter remained-items result)
    (if (null? remained-items)
        result
        (iter (cdr remained-items)
              (cons (car remained-items) result))))