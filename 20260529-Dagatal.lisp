;;;; Dagatal -  Kattis
;;; A programme that tells the number of days in a month on a non leap year

;;; Variables
(defvar month-list (list 31 28 31 30 31 30 31 31 30 31 30 31))

;;; Functions
(defun value-at (n l)
    "Returns the n-th from l"
    (if (= n 1)
        (car l)
        (value-at (- n 1) (cdr l))))

(defun read-number ()
    (parse-integer (read-line *query-io*)))

(format t "~D" (value-at (read-number) month-list))
