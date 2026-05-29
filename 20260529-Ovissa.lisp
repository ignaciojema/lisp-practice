(defun count-u (s)
    (if (= 0 (length s))
        0
        (if (string= "u" (subseq s 0 1))
            (+ 1 (count-u (subseq s 1)))
            (count-u (subseq s 1)))))

(format t "~D" (count-u (read-line)))

;;; Shorter (format t "~D" (count #\u (read-line)))
