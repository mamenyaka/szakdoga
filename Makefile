all:	validate robotauto.pdf

robotauto.pdf: robotauto.xml
	dblatex robotauto.xml

.PHONY: validate
validate:
	jing -c http://docbook.org/xml/5.1CR3/rng/docbookxi.rnc robotauto.xml

.PHONY: clean
clean:
	rm -vf robotauto.pdf

