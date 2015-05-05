all:	validate robotauto.pdf

robotauto.pdf: robotauto.xml robotauto.xsl
	dblatex -p robotauto.xsl robotauto.xml

.PHONY: validate
validate:
	jing -c http://docbook.org/xml/5.1CR3/rng/docbookxi.rnc robotauto.xml

.PHONY: clean
clean:
	rm -vf robotauto.pdf

