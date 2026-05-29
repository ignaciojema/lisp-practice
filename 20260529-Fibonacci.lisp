;; An implementation of Fibonacci's Series

(defun fibonacci (x)
    "A recursive implementation of Fibonacci's Series "
    (if (< x 0)
        0
        (+ x (fibonacci (- x 1)))))

(let ((x 6))
    (format t "~D~%" (fibonacci x)))