figures=$(addprefix figures/, cascade.pdf components.pdf example.pdf graphs.pdf\
 matrix.pdf reck_nxn.pdf unitary.pdf graphs.pdf)

dialling.pdf : dialling.tex bib/dialling.bib $(figures)
	pdflatex dialling
	bibtex dialling
	pdflatex dialling
	pdflatex dialling

figures/%.pdf : figures/%.svg figures/%.pyx
	cd figures && $(MAKE) $*.pdf

figures/%.pdf : figures/%.pyx
	cd figures && $(MAKE) $*.pdf

clean :
	@if [ -e dialling.pdf ]; then rm dialling.pdf; fi
	cd summary && $(MAKE) clean

summary : summary.pdf

summary.pdf : summary/summary.tex
	cd summary && $(MAKE)

tar :
	@tar -cvzf dialling.tar.gz dialling.tex figs/*.tex figs/*.eps \
bib/dialling.bib makefile
