;;;; Leggjasaman - Kattis
(defun read-number ()
    (parse-integer (read-line *query-io*)))

(format t "~D" (+ (read-number) (read-number)))