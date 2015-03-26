ifeq (Darwin, $(shell uname -s))
inkscape=/Applications/Inkscape.app/Contents/Resources/bin/inkscape
else
inkscape=inkscape
endif

default : cascade.pdf example.pdf matrix.pdf qubits.pdf recursive.pdf\
 unitary.pdf

cascade.pdf : cascade.eps cascade.pyx
	pyxplot cascade.pyx

%.eps : %.svg
	$(inkscape) -E $*.eps $<

example.pdf : example.eps beamsplitter.eps bsmzi.epsexample.pyx
	pyxplot example.pyx

integrated.pdf : dcmzi.eps integrated.pyx
	pyxplot integrated.pyx

matrix.pdf : matrix.eps matrix.pyx
	pyxplot matrix.pyx

recursive.pdf : recursive.eps recursive.pyx
	pyxplot recursive.pyx

qubits.pdf : twoqubit.eps threequbit.eps qubits.pyx
	pyxplot qubits.pyx

unitary.pdf : unitary.eps components.eps unitary.pyx
	pyxplot unitary.pyx

clean : 
	rm *.eps *.pdf
