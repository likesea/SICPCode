#lang racket
(define (square-tree x)
  (map (lambda (sub-x)
         (if (pair? sub-x)
             (square-tree sub-x)
             (* sub-x sub-x)))
       x))
(define x (list 1 (list 2 (list 3 4) 5) (list 6 7)))
