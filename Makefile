# top level makefile

export PLATFORM = unix
DIR = src
SUBDIR = $(shell ls $(DIR))

export DEBUG_SYMBOLS = TRUE

ifeq ($(DEBUG_SYMBOLS), TRUE)
	BUILDDIR = ./build/$(PLATFORM)_dbg
else
	BUILDDIR = ./build/$(PLATFORM)
endif

# Will bring order problem, might failed because main was compiled first
all: $(BUILDDIR) $(SUBDIR)

$(BUILDDIR):
	mkdir -p $(BUILDDIR)/bin $(BUILDDIR)/lib

main: ipc tools

$(SUBDIR):
	make -C $(DIR)/$@ MODULE=$@

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
