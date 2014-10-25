; Zadatak 9. 
;	Napisati funkciju (fibonacci N) za izračunavanje N-tog člana 
; 	Fibonačijevog niza

; Rekurzivna verzija
(defun fibonacci_r (N)
	(if (or (eq N 0) (eq N 1))
		1
		(+ (fibonacci_r (- N 1)) (fibonacci_r (- N 2)))
	)
)

; Nerekurzivna verzija
(defun fibonacci (N)
	(setq F (list 1 1))
	(setq F1 1)
	(setq F2 1)

	(when (> N 1) 
		(loop for i from 2 to N do
			(setq F3 (+ F1 F2))
			(setq F1 F2)
			(setq F2 F3)
			(setq F (append F (list F3)))
		)
	)

	(nth N F)
)
