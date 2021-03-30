SCRIPT= pyfetch
EXEC= pyfetch

# paths
PREFIX = /usr/local
MANPREFIX = $(PREFIX)/share/man

install:
	pip install distro
	mkdir -p $(PREFIX)/bin
	cp -f $(SCRIPT) $(PREFIX)/bin/$(EXEC)
	chmod 755 $(PREFIX)/bin/$(EXEC)

uninstall:
	rm -f $(DESTDIR)$(PREFIX)/bin/$(EXEC)

.PHONY: install uninstall
