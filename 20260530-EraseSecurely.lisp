;;;; Erase Securely - Kattis

(defun delete (original)
    (for var in-sequence original by cdr
        ))

(defun check-deletion (times original deleted)
    (if (= (mod times 2) 0)
        (string= original deleted)
        (if (string= (delete original) deleted))
            T)