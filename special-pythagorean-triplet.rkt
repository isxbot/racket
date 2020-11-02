#lang racket

; A Pythagorean triplet is a set of three natural numbers, a < b < c, for which,
; a2 + b2 = c2
; 
; For example, 3^2 + 4^2 = 9 + 16 = 25 = 5^2.
; 
; There exists exactly one Pythagorean triplet for which a + b + c = 1000.
; Find the product abc.


(define (product-of-triple sum-of-triple [k (range 1 100)] [m (range 2 1000)] [n (range 1 (first m))])
  (define a (* (first k) (* 2 (first m) (first n))))
  (define b (* (first k) (- (expt (first m) 2) (expt (first n) 2))))
  (define c (* (first k) (+ (expt (first m) 2) (expt (first n) 2))))
  (cond
    [(equal? sum-of-triple (+ a b c)) (* a b c)] ; Found the triple.
    [(null? (rest k)) null] ; Exhausted the range of the function.
    [(null? (rest m)) (product-of-triple sum-of-triple (rest k))] ; Recursively iterate over the next values in k.
    [(null? (rest n)) (product-of-triple sum-of-triple k (rest m))] ; Recusively iterate over the next values in m.
    [else (product-of-triple sum-of-triple k m (rest n))])) ; Recursively iterate over the next values in n.

(product-of-triple 1000) ; Drive