# top level makefile

DIR = src
SUBDIR = $(shell ls $(DIR))
export export_var = Just for test export
# export DEBUG_ENABLE = TRUE

# Will bring order problem, might failed because main was compiled first
all: $(SUBDIR)

main: ipc tools

$(SUBDIR):
	make -C $(DIR)/$@

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
