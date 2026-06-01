;;;; Trying to understand macros


(defun primep (number)
    "Given a number, returns T if number is prime"
    (when (> number 1)
        (loop for fac from 2 to (isqrt number) never (zerop (mod number fac)))))

(defun next-prime (number)
    "Given a number, finds the closets biggest prime"
    (loop for n from number when (primep n) return n))

(defmacro do-primes ((var start end) &body body)
  (let ((ending-value-name (gensym)))
    `(do ((,var (next-prime ,start) (next-prime (+ ,var 1)))
          (,ending-value-name ,end))
         ((> ,var ,ending-value-name))
       ,@body)))

;; I want to do this
(do-primes (p 0 19)
  (format t "~d " p))

#| To mean this
(do ((p (next-prime 0) (next-prime (1+ p))))
    ((> p 19))
  (format t "~d " p))
|#