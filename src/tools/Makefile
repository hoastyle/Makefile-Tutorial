# Var
SRC = $(wildcard *.c)
SRC_OBJ = $(SRC:.c=.o)
SRC_LIB = libtools.a

CFLAGS += -g -Wall -Werror -O2
# LFLAGS += -I../../inc
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
