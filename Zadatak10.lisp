; Zadatak 10. 
;	Napisati funkciju (nzd A B) čija je vrijednost najveći zajednički djelilac
;   brojeva A i B.

(defun nzd (A B)
	(if (eq B 0)
		A
		(nzd B (mod A B))
	)
)