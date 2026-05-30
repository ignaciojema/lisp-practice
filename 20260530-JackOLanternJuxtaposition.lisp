
(defun read-number ()
    (parse-integer (read-line)))
    
(format t "~D" (* (read-number) (read-number) (read-number)))