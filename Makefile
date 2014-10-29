default:
	$(MAKE) $(STREAMS:=.html)

%.html:
	sed "s/{{stream}}/$(@:.html=)/g" < player.template > $@
