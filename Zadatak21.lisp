; Zadatak 21.
;   Napisati funkciju (dubina X) ?ija je vrijednost najve?a dubina izraza X.
;   Najveca dubina atoma je 0

(defun dubina (X)
    (cond
        ((atom X) 0)
        ((listp (car X)) (max (+ 1 (dubina (car X))) (dubina (cdr X))))
        (t (dubina (cdr X)))
    )
)
