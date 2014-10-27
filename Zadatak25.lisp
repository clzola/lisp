; Zadatak 25
; 	Napisati funkciju (svakiDrugi L) čija je vrijednost lista koja se 
;	sastoji od elemenata liste L na neparnim pozicijama.

(defun svakiDrugi (L)
	(if (null L)
		nil
		(cons (cadr L) (svakiDrugi (cddr L)))
	)
)
