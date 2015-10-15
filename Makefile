#!/usr/bin/make
.PHONY: test
targets=$(addprefix out/, $(shell ls *.html))
all: $(targets)

out/%.html: %.html
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
