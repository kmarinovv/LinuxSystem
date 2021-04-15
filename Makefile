#.DEFAULT_GOAL := exec
.PHONY: all clean
all: main.o calcsum.o exec #clean
main.o: main.c calcsum.h
	#sleep 10
	gcc -c main.c
	

calcsum.o: calcsum.c calcsum.h
	#sleep 10
	gcc -c calcsum.c

exec: main.o calcsum.o
	#sleep 10
	gcc -o exec main.o calcsum.o

clean:
	echo "cleaning"
	rm exec main.o calcsum.o
