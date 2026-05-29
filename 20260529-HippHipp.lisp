;;;; Hipp Hipp - Kattis
;;; Print 20 "Hipp hipp hurra!"

(defun hipp () (format t "Hipp hipp hurra!~%"))

(defun print-times (n)
    (if (< n 2)
        (hipp)
        (list (hipp) (print-times(- n 1)))))

(print-times 20)