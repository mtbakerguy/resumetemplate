include Makefile.inc

%.tex : %.m4 resume.m4
	m4 -DName=$(NAME) -DAddress=$(ADDRESS) $< > $@

%.pdf : %.tex
	pdflatex $<

all:    $(FILES)

clean:
	rm -fr *.pdf *.log *.tex

