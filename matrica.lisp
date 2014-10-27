(defun matrix-input (filename)
    (setq matrix nil)

    (with-open-file
        (fhandle filename :direction :input)
        (setq nColumns (read fhandle nil nil))
        (setq nRows (read fhandle nil nil))

        (do ((i 0 (+ i 1))) ((= i nRows))
            (setq row nil)
            (do ((j 0 (+ j 1))) ((= j nColumns))
                (setq element (read fhandle nil nil))
                (setq row (append row (list element)))
            )

            (setq matrix (append matrix (list row)))
        )
    )

    matrix
)

(defun e(m i j)
    (nth j (nth i m))
)

(defun matrix-sum (matrix)
    (setq m (list-length matrix))
    (setq n (list-length (car matrix)))
    (setq sum 0)

    (loop for i from 0 to (- m 1) do
        (loop for j from 0 to (- n 1) do    
            (setq sum (+ sum (e matrix i j)))
        )
    )

    sum
)
