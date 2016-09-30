files=
TEX_FILES := summary.tex
PDF_FILES := $(patsubst %.tex,%.pdf,$(TEX_FILES))

all: $(PDF_FILES)
	@echo "all done"

%.pdf: *.tex
	rubber -f -d --pdf $(wordlist 1,$(words $^), $^)
	xdg-open summary.pdf

clean:
	rm -rf *.dvi *.aux *.snm *.vrb *.toc *.log *.out *~ *.nav *.pdf
