#lang racket/base

(require rackunit
         "facto.rkt")
(require rackunit/text-ui)

(define facto-tests
  (test-suite "Tests for factorial"
              (check-equal? (facto 5) 120 "n=5")
              (check-equal? (facto 10) 3628800 "n=10")
              (check-equal? (facto 11) 39916800 "n=11")))

(run-tests facto-tests)
