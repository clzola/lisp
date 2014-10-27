; Zadatak 20
; 	Napisati funkciju (brPojava X L) čija je vrijednost broj svih pojavljivanja 
;	izraza X u listi L.

(defun brPojava (X L)
	(cond
		((null L) 0)
		((listp (car L)) (+ (brPojava X (car L)) (brPojava X (cdr L))))
		((eq (car L) X)  (+ 1 (brPojava X (cdr L))))
		(t (brPojava X (cdr L)))
	)
)