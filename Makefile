check:
	python BibLatex-Check/biblatex_check.py -b references.bib

%.pdf: %.tex
	latexmk -pdf $@
	latexmk -c $@

latex:
	make test_bibtex.pdf
	make test_biblatex.pdf
