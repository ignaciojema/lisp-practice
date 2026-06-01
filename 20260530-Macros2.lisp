;;;; Macros writing macros

(defun primep (number)
    "Given a number, returns T if number is prime"
    (when (> number 1)
        (loop for fac from 2 to (isqrt number) never (zerop (mod number fac)))))

(defun next-prime (number)
    "Given a number, finds the closets biggest prime"
    (loop for n from number when (primep n) return n))


(defmacro with-gensyms ((&rest names) &body body)
  `(let ,(loop for n in names collect `(,n (gensym)))
     ,@body))

(defmacro do-primes ((var start end) &body body)
  (with-gensyms (ending-value-name)
    `(do ((,var (next-prime ,start) (next-prime (1+ ,var)))
          (,ending-value-name ,end))
         ((> ,var ,ending-value-name))
       ,@body)))