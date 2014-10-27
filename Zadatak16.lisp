; Zadatak 16. 
;	Napisati funkciju (brAtoma L) čija je vrijednost broj svih atoma u listi L (tj.
;	broj atoma u listi L i svim podlistama liste L). 

(defun brAtoma (L)
	(cond
		((eq L nil) 0)
		((listp (car L)) (brAtoma (car L)))
		(t (+ 1 (brAtoma(cdr L))))
	)
)