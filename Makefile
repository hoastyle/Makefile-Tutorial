SRC_OBJ = debug.o ipc.o timer.o main.o
SRC_BIN = main

${SRC_BIN}: ${SRC_OBJ}
	gcc -o $@ $^

.PHONY: clean
clean:
	rm -rf ${SRC_BIN} ${SRC_OBJ}
