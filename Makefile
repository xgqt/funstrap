SCRIPT  = funstrap

PREFIX  = /usr
DESTDIR =
INSTDIR = $(DESTDIR)$(PREFIX)
INSTBIN = $(INSTDIR)/bin


.PHONY: all
all:
	@echo did nothing. try targets: install, or uninstall.


.PHONY: install
install:
	test -d $(INSTDIR) || mkdir -p $(INSTDIR)
	test -d $(INSTBIN) || mkdir -p $(INSTBIN)

	install -m 0755 src/$(SCRIPT) $(INSTBIN)


.PHONY: uninstall
uninstall:
	$(RM) $(INSTBIN)/$(SCRIPT)
