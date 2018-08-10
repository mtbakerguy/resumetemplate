# location of your personal files
DIR=resume

include $(DIR)/Makefile.inc

%.tex : $(DIR)/%.m4  $(DIR)/*.m4 resume.m4
	m4 -DDirectory=$(DIR) -DName=$(NAME) -DAddress=$(ADDRESS) -DObjective="include($<)" resume.m4  > $@

%.pdf : %.tex
	pdflatex $<

all:    $(FILES)

wordcloud.pdf: wordcloud.m4 wordcloud.r $(DIR)/*.m4
	m4 -DDirectory=$(DIR) $< $(DIR)/*.m4 | tr ' ' '\n' > words.txt
	./wordcloud.r
	rm -fr words.txt

clean:
	rm -fr *.pdf *.log *.tex words.txt

