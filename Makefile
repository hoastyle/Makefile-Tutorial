main: debug.o ipc.o timer.o main.o
	gcc -o main debug.o ipc.o timer.o main.o

.PHONY: clean
clean:
	rm -rf main *.o
