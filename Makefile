# top level makefile

all:
	$(MAKE) -C src

cscope:
	cscope -Rbq

clean:
	$(MAKE) -C src clean 
	$(RM) cscope*

.PHONY: all cscope clean
