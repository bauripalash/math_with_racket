#lang racket

(require math/bigfloat)

;==== Simple implementation ====
;(define con_x (/ 12 (expt 640320 (/ 3 2))))
;(define var_a
;  (for/sum ([k (in-range 10)])
;           (/ (* (factorial (* 6 k)) (+ 13591409 (* 545140134 k)))
;              (* (factorial (* 3 k)) (expt (factorial k) 3) (expt -640320 (* 3 k))))))

;(/ 1 (* con_x var_a))
;================================

(bf-precision 5000)

;converting some 'constant' integers
(define b12 (bf 12))
(define b640320 (bf 640320))
(define b3 (bf 3))
(define b2 (bf 3))
(define b6 (bf 6))
(define b13591409 (bf 13591409))
(define b545140134 (bf 545140134))
(define b-640320 (bf -640320))

;first part of the Chudnovsky formula
;
(define con_a (bf/ (bf 12) (bfexpt (bf 640320) (bf/ (bf 3) (bf 2)))))

(define output (bf 0))
(define max 10000)

(for ([i (in-range max)])
  (define k (bf i))
  (define y
    (bf/ (bf* (bffactorial (bigfloat->real (bf* b6 k))) (bf+ b13591409 (bf* b545140134 k)))
         (bf* (bffactorial (bigfloat->real (bf* b3 k)))
              (bfexpt (bffactorial (bigfloat->real k)) b3)
              (bfexpt b-640320 (bf* b3 k)))))
  (set! output (bf+ output y))
  ;(print output)
  )

(define ans (bf/ (bf 1) (bf* output con_a)))
(define a (bf* output con_a))
(define b1 (bf 1))
(define p (bf/ b1 a))

(print (bigfloat->string ans))
