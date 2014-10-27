; Zadatak 17.
;	Napisati funkciju (brListi L) čija je vrijednost broj svih podlisti 
;	liste L (tj. broj svih podlisti liste L i svih njihovih podlisti). 

(defun brListi (L)
	(cond
		((eq L nil) 0)
		((listp (car L)) (+ 1 (brListi (car L)) (brListi (cdr L))))
		(t (brListi (cdr L)))
	)
)