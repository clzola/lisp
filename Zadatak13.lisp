; Zadatak 13. 
;	Napisati funkciju (prost N) čija je vrijednost t ako je broj N prost.

(defun prost (N)
	(setq isProst t)
	(setq i 2)
	
	(loop while (and (eq isProst t) (<= i (/ N 2))) do
		(when (eq 0 (mod N i))
			(setq isProst nil)
		)
		(setq i (+ i 1))
	)

	isProst
)