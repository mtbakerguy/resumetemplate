# location of your personal files
DIR=resume

include $(DIR)/Makefile.inc

%.tex : $(DIR)/%.m4  $(DIR)/*.m4 resume.m4
	m4 -DDirectory=$(DIR) -DName=$(NAME) -DAddress=$(ADDRESS) -DObjective="include($<)" resume.m4  > $@

%.pdf : %.tex
	pdflatex $<

all:    $(FILES)

clean:
	rm -fr *.pdf *.log *.tex

