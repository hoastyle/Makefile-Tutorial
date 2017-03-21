# add file automaticlly 
SRC = $(wildcard *.c)

# add object automaticlly
SRC_OBJ = $(SRC:.c=.o)
SRC_BIN = main

# CFLAGS for C compiler
# -Wall enable warning
# -Werror make all warnings into errors
CFLAGS += -g -Wall -Werror -O2

# CPPFLAGS for header path
CPPFLAGS += -I./inc

# LFLAGS for linker

$(SRC_BIN): $(SRC_OBJ)
	$(CC) -o $@ $^

.PHONY: clean
clean:
	$(RM) $(SRC_BIN) $(SRC_OBJ)
