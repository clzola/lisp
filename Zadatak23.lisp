; Zadatak 23
;   Napisati funkciju (posled L) čija je vrijednost poslednji element liste L.
(defun posled (L)
    (if (null (cadr L))
        (car L)
        (posled (cdr L))
    )
)
