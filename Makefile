check:
	python BibLatex-Check/biblatex_check.py -b references.bib

%.pdf: %.tex
	latexmk -pdf $@
	latexmk -c $@

latex:
	make test_bibtex.pdf
	make test_biblatex.pdf

format:
	betterbib-sync  references.bib | betterbib-journal-abbrev | betterbib-format - tmp --drop source issn
	tail -n+4 tmp > references.bib
	rm tmp
