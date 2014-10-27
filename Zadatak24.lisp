; Zadatak 24
;   Napisati funkciju (nti N L) čija je vrijednost N-ti element liste L.

(defun nti (N L)
    (cond
        ((and (> N 0) (null L)) nil)
        ((eq N 0) (car L))
        (t (nti (- N 1) (cdr L)))
    )
)
