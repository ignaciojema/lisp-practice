(defun read-num ()
    (parse-integer (read-line)))

(format t "~D" (+ 2022 (floor (read-num) (read-num))))