#lang racket

; The prime factors of 13195 are 5, 7, 13 and 29.
; 
; What is the largest prime factor of the number 600,851,475,143 ?


(require math)

(define (largest-prime-factor n)
  (cond
    [(not (natural? n)) (println "Don't do that, it's not natural.")] ; Only process natural numbers.
    [(< n 2) null] ; Handle cases where n is 0 or 1.
    [else (apply max (prime-divisors n))])) ; Get the prime divisors of n, return the max value."

(largest-prime-factor 600851475143) ; Drive