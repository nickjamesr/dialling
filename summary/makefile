default : ../summary.pdf

../summary.pdf : summary.tex
	pdflatex summary.tex
	@rm summary.aux summary.log
	@mv summary.pdf ..

clean :
	@if [ -e ../summary.pdf ]; then rm ../summary.pdf; fi
