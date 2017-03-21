# top level makefile

all:
	$(MAKE) -C src/ipc
	$(MAKE) -C src/tools
	$(MAKE) -C src/main

cscope:
	cscope -Rbq

help:

obj:

clean:
	$(MAKE) -C src/ipc clean
	$(MAKE) -C src/tools clean
	$(MAKE) -C src/main clean
	$(RM) cscope* main libs/*

distclean:

.PHONY: all cscope help obj clean distclean
