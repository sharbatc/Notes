files=
TEX_FILES := summary.tex
PDF_FILES := $(patsubst %.tex,%.pdf,$(TEX_FILES))

all: $(PDF_FILES)
	@echo "all done"

%.pdf: *.tex
	rubber -f -d $(wordlist 1,$(words $^), $^)


clean:
	rm -rf *.dvi *.aux *.snm *.vrb *.toc *.log *.out *~ *.nav
