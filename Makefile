subdirs := lightsd stated switchd ambd webd
include Makefile.inc

.PHONY: $(subdirs)
all: $(subdirs)

$(subdirs):
	$(MAKE) -C $@ all
	cp $@/$@ bin/$@

clean: 
	for dir in $(subdirs); do \
		$(MAKE) -C $$dir clean; \
	done
	for exe in $(subdirs); do \
		rm bin/$$exe; \
	done
