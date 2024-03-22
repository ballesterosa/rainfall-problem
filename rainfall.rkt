#lang racket/base
(require racket/list)
(define (rainfall lst)
  ; local function iter:
  ; pass in a list, the current sum, and the current count
  (define (iter lst sum count)
    (cond
      ; if the rest of the list (the tail), then end
      [(empty? (rest lst)) 
        (cond
          [(= count 0) 0]
          [else (/ (+ sum (list-ref lst 0)) (+ count 1))])]
      ; if the head of the tail is -999 end
      [(= (list-ref lst 1) -999)
        (cond
          [(= count 0) 0]
          [else (/ (+ sum (list-ref lst 0)) (+ count 1))])]
      ; skip negatives
      [(< (list-ref lst 0) 0) (iter (rest lst) sum count)]
      ; else recurse with the tail of the list, rolling sum and count
      [else (iter (rest lst) (+ sum (list-ref lst 0)) (+ count 1))]))
  ; body of waterfall calls iter:
  (iter lst 0 0))

(rainfall (list 12 3489 1 4329 43289 -999 382019 4830912 483902))