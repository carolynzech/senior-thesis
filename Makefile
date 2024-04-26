PAPER = thesis
TEX = $(wildcard *.tex) $(wildcard chapters/*.tex)
BIB = main.bib

.PHONY: all clean

$(PAPER).pdf: $(TEX) $(BIB) #$(FIG) $(GRAPH)
	latexmk -pdf -shell-escape $(PAPER)

clean:
	rm -f *.aux *.bbl *.blg *.log *.out $(PAPER).pdf *.bcf *.run* $(PAPER).f*
