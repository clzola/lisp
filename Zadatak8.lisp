; Zadatak 8.
; 	Napisati funkciju za izračunavanje faktorijela (fak N) čija je vrijednost N!

; Rekurzivna verzija
(defun fak_r (N)
	(if (eq N 1)
		1
		(* N (fak_r (- N 1)))
	)
)

; Nerekurzivna verzija
(defun fak (N)
	(setq R 1)
	(loop while (> N 1) do 
		(setq R (* R N))
		(setq N (- N 1))
	)

	R
)