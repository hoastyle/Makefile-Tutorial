# generate executive file
# Var
SRC_BASE = ../..
RULE = Makefile.rule
SRC = $(wildcard *.c)
SRC_OBJ = $(SRC:.c=.o)
SRC_BIN = main

include $(SRC_BASE)/$(RULE)

CPPFLAGS += -I$(SRC_BASE)/inc
LDFLAGS += -L$(LIBDIR) -ltools -lipc

# target
all: bin
