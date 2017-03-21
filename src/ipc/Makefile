# Var
SRC = $(wildcard *.c)
SRC_OBJ = $(SRC:.c=.o)
SRC_LIB = libipc.a

ifeq ($(DEBUG_ENABLE), TRUE)
CFLAGS += -g -Wall -Werror -O2
else
CFLAGS += -Wall -Werror -O2
endif
CPPFLAGS += -I../../inc

# target
all: $(SRC_LIB)

$(SRC_LIB): $(SRC_OBJ)
	$(AR) rcs $@ $^
	cp $@ ../../libs

obj: $(SRC_OBJ)

clean:
	$(RM) $(SRC_OBJ) $(SRC_LIB)

distclean:
	$(RM) $(SRC_OBJ) $(SRC_LIB) *~

.PHONY:all obj clean distclean
