;;;; Test Framework

(defmacro my-assert (form)
    `(format t "~:[FAIL~;pass~] ... ~a~%" ,form ',form))

;; I want this
(format t "~:[FAIL~;pass~] ... ~a~%" (= (+ 1 2) 3) '(= (+ 1 2) 3))