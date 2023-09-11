PDFLATEX:="pdflatex"

.PHONY: all

all: katzenpost-zine-print-final.pdf

%.pdf: %.tex
	$(PDFLATEX) $<

clean:
	rm -f *.pdf *.log *.aux

katzenpost-zine-print-final.pdf: katzenpost-zine-print-step1.pdf
katzenpost-zine-print-step1.pdf: katzenpost-zine.pdf
