; Zadatak1: Napisati funkcije (add1 R), (sub R), (sqr R) i (recip R) cije su 
; vrijednosti redom R+1, R-1, R^2, 1/R

(defun add1 (R)
	(+ R 1)
)

(defun sub (R)
	(- R 1)
)

(defun sqr (R)
	(* R R)
)

(defun recip (R)
	(if (eq R 0)
		"infinity"
		(/ 1 R)
	)
)