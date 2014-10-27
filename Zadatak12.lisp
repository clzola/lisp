; Zadatak 12. 
; 	Napisati funkciju (JedanDoN N) čija je vrijednost zbir brojeva od 1 do N.

(defun JedanDoN (N)
	(setq R 0)
	(loop for i from 1 to N do
		(setq R (+ R i))
	)

	R
)