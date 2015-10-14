#!/usr/bin/make
targets=$(addprefix out/, $(shell ls *.html))
all: $(targets)

out/%.html: %.html
	./transform.pl $< > $@
clean:
	rm -rf $(targets)
test:
	@echo $(targets)
