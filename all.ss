(define even (lambda (x)
               (= 0 (mod x 2))))

(define odd (lambda (x)
              (not (even x))))


(define all (lambda (f l)
              (if (not (null? l))
                (if (f (car l))
                  (all f (cdr l))
                  #f)
                #t )))

(define any (lambda (f l)
              (if (not (null? l))
                (if (f (car l))
                  #t
                  (any f (cdr l)))
                #f )))

(all even `(2 4 6))
; => #t
(all even `(2 4 5))
; => #f

(any even `(1 3 6))
; => #t
(any even `(1 3 5))
; => #f
