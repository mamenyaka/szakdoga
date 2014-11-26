all:	validate robotauto.pdf

robotauto.pdf: robotauto.xml
	dblatex robotauto.xml

.PHONY: validate
validate:
	@if [ ! -e jing.jar ]; then \
		wget https://jing-trang.googlecode.com/files/jing-20091111.zip; \
		unzip jing-20091111.zip > /dev/null; \
		mv jing-20091111/bin/jing.jar jing.jar; \
		rm -rf jing-20091111*; \
	fi

	java -jar jing.jar -c http://docbook.org/xml/5.1CR3/rng/docbookxi.rnc robotauto.xml

.PHONY: clean
clean:
	rm -vf robotauto.pdf

