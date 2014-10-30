STREAMS ?= test lowtest sofia sofia-low varna varna-low g1 g1-low

.PHONY: default
.SILENT: default
default: $(STREAMS:=.html)
ifndef STREAMS
	echo You need to specify a list of streams the STREAMS variable
endif

.PHONY: clean
clean:
	rm -f *.html

%.html:
	sed "s/{{stream}}/$(@:.html=)/g" < player.template > $@
