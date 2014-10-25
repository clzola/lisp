; Zadatak 6
;	Napisati funkciju (prava A1 B1 C1 A2 B2 C2) čija je vrijednost izraz 
;   "PRAVE SE SIJEKU" ako se prava sa koeficijentima A1, B1 i C1 siječe sa 
;   pravom sa koeficijentima A2, B2 i C2. Ukoliko su prave paralelne vrijednost 
;   funkcije je izraz "PRAVE SU PARALELNE", a ako se poklapaju vrijednost 
;   funkcije je "PRAVE SE POKLAPAJU".

(defun prava (A1 B1 C1 A2 B2 C2)
	(setq K1 (- (/ A1 B1)))
	(setq K2 (- (/ A2 B2)))
	(setq N1 (- (/ C1 B1)))
	(setq N2 (- (/ C2 B2)))

	(cond
		((and  (eq K1 K2) (eq N1 N2)) "PRAVE SE POKLAPAJU")
		((eq K1 K2) "PRAVE SU PARALELNE")
		(t "PRAVE SE SIJEKU")
	)
)