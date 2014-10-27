; Zadatak 15.
; 	Napisati funkciju (AtomList L) čije je vrijednost t ako se lista L sastoji samo 
;	od atoma.

(defun AtomList (L)
	(cond
		((eq L nil) t)
		((not (atom (car L))) nil)
		(t (AtomList (cdr L)))
	)
)