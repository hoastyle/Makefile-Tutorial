# Var
SRC = $(wildcard *.c)
SRC_OBJ = $(SRC:.c=.o)
SRC_LIB = libtools.a

ifeq ($(DEBUG_ENABLE), TRUE)
CFLAGS += -g -Wall -Werror -O2
else
CFLAGS += -Wall -Werror -O2
endif
CPPFLAGS += -I../../inc

ifneq ($(BUILDDIR),)
	SUBDIR = $(BUILDDIR)/obj/$(MODULES)
else
	@echo error!!!!!!!!!!!!!!!!!!!!!
endif

# target
all: $(SUBDIR) $(SRC_LIB)

$(SUBDIR):
	@echo $(SUBDIR)
	mkdir -p ../../$@

$(SRC_LIB): $(SRC_OBJ)
	$(AR) rcs $@ $^
	mv $@ ../../$(BUILDDIR)/lib
	mv $^ ../../$(SUBDIR)

obj: $(SRC_OBJ)

clean:
	$(RM) $(SRC_OBJ) $(SRC_LIB)

distclean:
	$(RM) $(SRC_OBJ) $(SRC_LIB) *~

.PHONY:all obj clean distclean
