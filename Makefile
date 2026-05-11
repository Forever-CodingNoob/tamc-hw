TMPDIR = build
OUTDIR = hw

.PHONY: clean

%:
	mkdir -p $(OUTDIR)
	latexmk -pdf -output-directory=$(TMPDIR) -out2dir=$(OUTDIR)/hw$@ -jobname=hw$@-sol -pdflatex="pdflatex %O '\def\hwnumber{$@}\input{%S}'" main.tex

clean:
	pushd $(TMPDIR) && rm -f *.aux *.fdb_latexmk *.fls *.log *.out *.pdf && popd
