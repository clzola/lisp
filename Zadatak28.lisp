;	Zadatak 28.

(defun app (L1 L2)
	(if (null L1)
		L2
		(cons (car L1) (app (cdr L1) L2))
	)
)

(defun okret (L)
	(if (null L)
		nil
		(append (okret(cdr L)) (list (car L)))
	)
)