latex:
	latexmk -pdf test_bibtex.tex
	latexmk -c test_bibtex.tex
	latexmk -pdf test_biblatex.tex
	latexmk -c test_biblatex.tex

format:
	betterbib-sync  references.bib | betterbib-journal-abbrev | betterbib-format - tmp --drop source issn
	tail -n+4 tmp > references.bib
	rm tmp
