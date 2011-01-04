SUBDIRS = \
  org.shr.phonefso \
  org.shr.phoneui

EXTRA_DIST = shr-specs.pc.in

pkgconfigdir = $(datadir)/pkgconfig
dist_pkgconfig_DATA = shr-specs.pc

install-data-local:
	$(MAKE)
	$(INSTALL) -d $(DESTDIR)/$(datadir)/shr-specs/xml
	for i in xml/*.xml; do $(INSTALL) -m 0644 $$i $(DESTDIR)/$(datadir)/shr-specs/$$i; done

MAINTAINERCLEANFILES = \
  aclocal.m4 compile config.guess config.sub \
  configure depcomp install-sh ltmain.sh     \
  Makefile.in missing config.h.in            \
  mkinstalldirs \
  src/*.h src/*.c .deps xml/*.xml
