PREFIX    = /usr/local
BIN	  = ${PREFIX}/bin
MANPREFIX = ${PREFIX}/share/man/man1

.PHONY: all install uninstall clean

default: install

all help:
	@echo 'usage: make [install|uninstall]'

install:
	@- mkdir -p		${DESTDIR}${BIN}
	@install -m755	md2ms	${DESTDIR}${BIN}/md2ms
	@- mkdir -p		${DESTDIR}${MANPREFIX}
	@install -m644	md2ms.man	${DESTDIR}${MANPREFIX}/md2ms.1
	@gzip ${DESTDIR}${MANPREFIX}/md2ms.1

clean uninstall:
	rm -f	${DESTDIR}${PREFIX}/bin/md2ms
	rm -f	${DESTDIR}${MANPREFIX}/man1/md2ms.1
