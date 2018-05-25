#lang racket/base

(require rackunit)

(define (square x)
  (* x x))

(define (sum-of-squares x y)
  (+ (square x)
     (square y)))

(define (solution a b c)
  (sum-of-squares (max a b) (max (min a b) c)))

(check-equal? (solution 2 2 2) 8)

(check-equal? (solution 1 2 3) 13)
