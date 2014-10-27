; Zadatak 19. 
;	Napisati funkciju (memb A L) čija je vrijednost t ako je atom A 
; 	element liste L.


(defun memb (A L)
	(setq inList nil)

	(loop while (and (null inList) (not (null L))) do 
		(if (atom (car L))
			(when (eq (car L) A)
				(setq inList t)
			)
			(when (memb A (car L))
				(setq inList t)
			)
		)

		(setq L (cdr L))
	)

	inList
)