; Zadatak 5.
;	Napisati funkciju (celUFar N) čija je vrijednost broj Farenhajtovih stepeni 
;   za zadati broj Celzijusovih stepeni N. Fromula za preračunavanje Celzijusovih 
;   stepeni N u Farenhajtove stepene F je: F = N * 9/5 + 32

(defun celUFar (N)
	(+ (* N (/ 9 5.0)) 32)
)