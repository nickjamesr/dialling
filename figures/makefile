ifeq (Darwin, $(shell uname -s))
inkscape=/Applications/Inkscape.app/Contents/Resources/bin/inkscape
else
inkscape=inkscape
endif

default : cascade.pdf components.pdf example.pdf graphs.pdf matrix.pdf\
 reck_nxn.pdf unitary.pdf

%.eps : %.svg
	$(inkscape) -E $*.eps $*.svg

%.pdf : %.eps %.pyx
	pyxplot $*.pyx

%.pdf : %.pyx
	pyxplot $*.pyx

clean : 
	rm *.eps *.pdf
