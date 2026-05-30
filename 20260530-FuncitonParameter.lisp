;;;; An exercise on function parameters

(defun optional-fun (a b &optional (c 10 c-supplied-p))
        (list a b c c-supplied-p))

(defun rest-fun (a b &rest c)
    (cons (+ a b) c))

(defun keyword-fun (&key ((:apple a) 0) (b 10 b-suppluied-p))
    (list a b b-suppluied-p))

(defun plot (fn min max step)
    (loop for i from min to max by step do
        (loop repeat (funcall fn i) do (format t "*"))
        (format t "~%")))

(defun times-two (x)
    (* x 2))
