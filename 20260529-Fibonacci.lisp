;; An implementation of Fibonacci's Sequence

(defun fibonacci (x)
    "A recursive implementation of Fibonacci's Series "
    (if (< x 0)
        0
        (if (= x 1)
            1
            (+ (fibonacci (- x 1)) (fibonacci (- x 2))))))

(let ((x 8))
    (format t "~D~%" (fibonacci x)))