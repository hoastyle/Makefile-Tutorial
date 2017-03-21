# top level makefile

PLATFORM = OSX
DIR = src
SUBDIR = $(shell ls $(DIR))
export export_var = Just for test export
export DEBUG_ENABLE = TRUE

ifeq ($(DEBUG_ENABLE), TRUE)
	export BUILDDIR = ./build/$(PLATFORM)_dbg
else
	export BUILDDIR = ./build/$(PLATFORM)
endif

# Will bring order problem, might failed because main was compiled first
all: $(BUILDDIR) $(SUBDIR)

$(BUILDDIR):
	mkdir -p $(BUILDDIR)/bin $(BUILDDIR)/lib

main: ipc tools

$(SUBDIR):
	make -C $(DIR)/$@ MODULES=$@

cscope:
	cscope -Rbq

help:
	@echo This is help!

obj:

clean:
	$(MAKE) -C src/ipc clean
	$(MAKE) -C src/tools clean
	$(MAKE) -C src/main clean
	$(RM) -r cscope* main libs/* build

distclean:

.PHONY: all cscope help obj clean distclean
