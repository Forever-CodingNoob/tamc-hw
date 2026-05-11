OUTDIR = build

.PHONY: clean

%:
	mkdir -p $(OUTDIR)
	latexmk -pdf -output-directory=$(OUTDIR) -jobname=hw$@-sol -pdflatex="pdflatex %O '\def\hwnumber{$@}\input{%S}'" main.tex

clean:
	rm -rf $(OUTDIR)
