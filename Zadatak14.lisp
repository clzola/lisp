; Zadatak 15.
;	Napisati funkciju (len L) čija je vrijednost dužina, tj. broj elemenata, liste L.

(defun len (L)
	(if (eq (car L) nil)
		0
		(+ 1 (len (cdr L)))
	)
)