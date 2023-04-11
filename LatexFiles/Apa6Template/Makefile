all: *.pdf

%.pdf: %.tex
	latexmk -pdf
	latexmk -c

.PHONY: clean

clean:
	latexmk -C