# generate executive file
# Var
SRC = $(wildcard *.c)
SRC_OBJ = $(SRC:.c=.o)
TARGET_BIN = main

CFLAGS += -g -Wall -Werror -O2
#　LFLAGS += -I../../inc
CPPFLAGS += -I../../inc
LDFLAGS += -L../../libs -ltools -lipc

# target
all: $(TARGET_BIN)

$(TARGET_BIN): $(SRC_OBJ)
	@echo $(SRC_OBJ)
	$(CC) -o $@ $^ $(LDFLAGS)
	cp $@ ../../

obj: $(SRC_OBJ)

clean:
	$(RM) $(SRC_OBJ) $(SRC_LIB)

distclean:
	$(RM) $(SRC_OBJ) $(SRC_LIB) *~

.PHONY: all obj clean distclean
