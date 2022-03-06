#lang racket

(define (fib n)

  (define phi 1.61803399)
  ; golder ratio = 1.61803399...

  (round (/ (- (expt phi n) (expt (- 1 phi) n)) (sqrt 5))))

; starting with small
; Ans => 8

;(fib 6)

; let's go huge
; Ans => 354224848179261915075

;(fib 100)

(provide fib)
