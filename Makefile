configure:
	git config core.hooksPath .githooks
english:
	pdflatex -jobname=cv-en "\def\dict{dicts/english.tex} \include{cv}"
spanish:
	pdflatex -jobname=cv-sp "\def\dict{dicts/spanish.tex} \include{cv}"
all: english spanish clean
clean:
	rm -f *.aux *.log *.out
	rm -f cv.fdb_latexmk cv.fls cv.html
