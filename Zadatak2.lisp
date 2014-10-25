; Zadatak 2.
;	Napisati funkciju (less R1 R2) cija je vrijednost t ako je R1 manje od R2
;	inace je vrijednost funkcije NIL.

(defun less (R1 R2)
	(if (< R1 R2)
		t
		nil
	)
)