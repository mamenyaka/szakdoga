all:	clean validate robotauto.pdf

robotauto.pdf: robotauto.xml
	dblatex robotauto.xml

.PHONY: validate
validate:
	xmllint --relaxng http://docbook.org/xml/5.1CR3/rng/docbookxi.rng robotauto.xml --noout

.PHONY: clean
clean:
	rm -vf robotauto.pdf

