#!/usr/bin/make
.PHONY: test clean mkdir
targets=$(addprefix out/, $(shell ls *.html))
all: mkdir $(targets)

mkdir:
	@echo -n creating output dir...
	mkdir -p out/

out/%.html: %.html
	@echo -n Processing $<...
	./transform.pl $< > $@
clean:
	rm -rf $(targets)
test:
	grep '<div class="navheader">' out/*.html || true
	grep '<div class="navfooter">' out/*.html || true
	grep '<div class="mediaobject"' out/*.html || true
	grep '<code class="literal"' out/*.html || true
	grep '<span class="emphasis"' out/*.html || true
	grep '<em class="parameter">' out/*.html || true
	grep '<pre class="screen">' out/*.html || true
	grep '<em class="replaceable">' out/*.html || true
	grep '<span class="command">' out/*.html || true
	grep '<div class="itemizedlist">' out/*.html || true
