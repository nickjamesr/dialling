figures=$(addprefix figures/, cascade.pdf example.pdf integrated.pdf matrix.pdf\
 qubits.pdf recursive.pdf unitary.pdf)

dialling.pdf : dialling.tex bib/dialling.bib $(figures)
	pdflatex dialling
	bibtex dialling
	pdflatex dialling
	pdflatex dialling
	pdflatex dialling

figures/%.pdf : figures/%.svg figures/%.pyx
	cd figures && $(MAKE) $*.pdf

figures/%.pdf : figures/%.pyx
	cd figures && $(MAKE) $*.pdf

clean :
	@if [ -e dialling.pdf ]; then rm dialling.pdf; fi
	cd summary && $(MAKE) clean
	cd figures && $(MAKE) clean

summary : summary.pdf

summary.pdf : summary/summary.tex
	cd summary && $(MAKE)

tar : dialling.tex dialling.pdf $(figures) bib/dialling.bib
	@tar -cvzf dialling.tar.gz dialling.tex dialling.pdf figures/*.pdf \
	bib/dialling.bib
