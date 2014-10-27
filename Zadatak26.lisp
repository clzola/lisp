; Zadatak 26

(defun uzmiAtome (L)
    (setq A (list))
    (loop while (not (null L)) do
        (when (atom (car L))
            (setq A (append A (list (car L))))
        )
        (setq L (cdr L))
    )

    A
)
