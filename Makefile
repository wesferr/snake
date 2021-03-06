LDFLAGS = -lm -lpthread -lncurses

all: snake clean

snake: main.o snake.o
	gcc -o snake main.o snake.o $(LDFLAGS) -I.
main.o: src/main.c
	gcc -c src/main.c $(LDFLAGS).
snake.o: src/snake.c
	gcc -c src/snake.c $(LDFLAGS).

clean:
	rm *.o
