main: debug.o ipc.o timer.o main.o
	gcc -o main debug.o ipc.o timer.o main.o

debug.o: debug.c common.h
	gcc -c debug.c

ipc.o: ipc.c common.h
	gcc -c ipc.c
	
timer.o: timer.c common.h
	gcc -c timer.c

main.o: main.c common.h
	gcc -c main.c

.PHONY: clean
clean:
	rm -rf main
