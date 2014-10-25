; Zadatak 7.
; 	Napisati funkciju (linear A B) čije je vrijednost rješenje linearne jednačine 
;   ax+b=0, ukoliko postoji i jedinstveno je. Inače je vrijednost funkcije poruka 
;   o homogenosti, odnosno protivrječnosti jednačine.

(defun linear (A B)
	(cond
		((and (eq A 0) (eq B 0)) "HOMOEGENA")
		((and (eq A 0) (not (eq B 0))) "NEMA RESENJA")
		(t (/ (- B) A))
	)
)