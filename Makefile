MEXT = tex

TEXFILES = $(wildcard *.tex)
PDFFILES = $(TEXFILES:%.tex=%.pdf)

OUTPUT=./output/

pdfs: $(PDFFILES)

%.pdf: %.tex
	pdflatex -output-directory $(OUTPUT) $<

clean:
	rm -f output/*
