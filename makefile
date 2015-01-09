default : dialling.tex
	latex dialling
	bibtex dialling
	latex dialling
	latex dialling
	latex dialling
	dvips dialling.dvi
	ps2pdf dialling.ps
	@rm dialling.aux dialling.bbl dialling.blg dialling.dvi dialling.end
	@rm dialling.log dialling.ps

clean :
	@if [ -e dialling.pdf ]; then rm dialling.pdf; fi
	cd summary && $(MAKE) clean

summary : summary.pdf

summary.pdf : summary/summary.tex
	cd summary && $(MAKE)

tar :
	@tar -cvzf dialling.tar.gz dialling.tex figs/*.tex figs/*.eps \
bib/dialling.bib makefile
