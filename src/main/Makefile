# generate executive file
# Var
SRC = $(wildcard *.c)
SRC_OBJ = $(SRC:.c=.o)
TARGET_BIN = main

ifneq ($(BUILDDIR),)
	SUBDIR = $(BUILDDIR)/obj/$(MODULES)
else
	@echo error!!!!!!!!!!!!!!!!!!!!!
endif

ifeq ($(DEBUG_ENABLE), TRUE)
CFLAGS += -g -Wall -Werror -O2
else
CFLAGS += -Wall -Werror -O2
endif
CPPFLAGS += -I../../inc
LDFLAGS += -L../../$(BUILDDIR)/lib -ltools -lipc

# target
all: $(SUBDIR) $(TARGET_BIN)

$(SUBDIR):
	mkdir -p ../../$@

$(TARGET_BIN): $(SRC_OBJ)
	@echo
	@echo ======================$(export_var)=======================
	@echo
	$(CC) -o $@ $^ $(LDFLAGS)
	mv $^ ../../$(SUBDIR)
	mv $@ ../../$(BUILDDIR)/bin

obj: $(SRC_OBJ)

clean:
	$(RM) $(SRC_OBJ) $(SRC_LIB) $(TARGET_BIN)

distclean:
	$(RM) $(SRC_OBJ) $(SRC_LIB) $(TARGET_BIN) *~

.PHONY: all obj clean distclean
