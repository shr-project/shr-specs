SUBDIRS := org.shr.phoneuid

.PHONY: all clean check docs xml

all:
	        @for i in $(SUBDIRS); do (cd $$i && $(MAKE) all docs xml) || exit 1 ; done

clean:
	        @for i in $(SUBDIRS); do (cd $$i && $(MAKE) clean) || exit 1 ; done

check:
	        @for i in $(SUBDIRS); do (cd $$i && $(MAKE) check) || exit 1 ; done

docs:
	        @for i in $(SUBDIRS); do (cd $$i && $(MAKE) docs) || exit 1 ; done

xml:
	        @for i in $(SUBDIRS); do (cd $$i && $(MAKE) xml) || exit 1 ; done

