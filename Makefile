PDFLATEX:="pdflatex"

.PHONY: all

all: 8up-zine-print-final.pdf

%.pdf: %.tex
	$(PDFLATEX) $<

clean:
	rm -f *.pdf *.log *.aux

8up-zine-print-final.pdf: 8up-zine-print-step1.pdf
8up-zine-print-step1.pdf: 8up-zine.pdf
