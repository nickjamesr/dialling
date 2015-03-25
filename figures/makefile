ifeq (Darwin, $(shell uname -s))
inkscape=/Applications/Inkscape.app/Contents/Resources/bin/inkscape
else
inkscape=inkscape
endif

default : cascade.pdf example.pdf graphs.pdf matrix.pdf reck_nxn.pdf unitary.pdf

cascade.pdf : cascade.eps cascade.pyx
	pyxplot cascade.pyx

%.eps : %.svg
	$(inkscape) -E $*.eps $<

example.pdf : example.eps example.pyx
	pyxplot example.pyx

matrix.pdf : matrix.eps matrix.pyx
	pyxplot matrix.pyx

reck_nxn.pdf : reck_nxn.eps reck_nxn.pyx
	pyxplot reck_nxn.pyx

unitary.pdf : unitary.eps components.eps unitary.pyx
	pyxplot unitary.pyx

graphs.pdf : graphs.pyx
	pyxplot graphs.pyx

clean : 
	rm *.eps *.pdf
