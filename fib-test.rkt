#lang racket/base

(require rackunit
         "fib.rkt")
(require rackunit/text-ui)

(define fib-tests
  (test-suite
   "Tests for Fibonacci"
   (check-equal? (fib 6) 8.0 "fibonacci of n=6 should be 8")
   (check-equal? (fib 1) 1.0 "fib of 1")
   (check-equal? (fib 0) 0 "f=>0")
   (check-equal? (fib 11) 89.0 "f=>11")
   (check-equal? (fib 12) 144.0 "f=>12")
   (check-equal? (fib 15) 610.0 "f=>15")
   (check-equal? (fib 100) 354224848179261915075.0 "Fibonacci n=100; gonna fail for sure")))
(run-tests fib-tests)
