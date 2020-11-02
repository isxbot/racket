#lang racket

; The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.
; 
; Find the sum of all the primes below two million.


(require math)

(define (sum-of-primes n)
  (cond
    [(not (natural? n)) (println "Don't do that, it's not natural.")] ; Only process natural numbers.
    [else (apply + (filter prime? (range n)))])) ; Sum the prime numbers of a given range.
  
(sum-of-primes 2000000) ; Drive