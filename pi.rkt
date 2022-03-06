#lang racket

(require math/number-theory)

(define con_a (/ 12 (expt 640320 (/ 3 2))))


(define var_a
  (for/sum ([k (in-range 1)])
           (/ (* (factorial (* 6 k)) (+ 13591409 (* 545140134 k)))
              (* (factorial (* 3 k)) (expt (factorial k) 3) (expt -640320 (* 3 k))))))

(/ 1 (* con_a var_a))
