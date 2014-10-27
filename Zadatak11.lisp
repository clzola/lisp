; Zadatak 11. 
; 	Napisati funkciju (part N) čija je vrijednost broj particija prirodnog broja N. 
; 	Broj particija je broj predstavljanja datog broja u obliku zbira cijelih pozitivnih 
; 	brojeva.

(defun sum (K N)
	(cond
		((or (eq K 1) (eq N 1)) 1)
		((< K N) (sum K K))
		((eq K N) (+ 1 (sum K (- K 1))))
		(t (+ (sum K (- N 1))(sum (- K N) N)))
	)
)

(defun part (N)
	(sum N N)
)