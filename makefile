CC = gcc
CFLAGS = -Wall -Werror -Wextra -g

bin/%.o: %.c bin
	$(CC) $(CFLAGS) -c $< -o $@

all: clean build run

build: $(addprefix bin/, $(addsuffix .o, $(basename $(wildcard *.c))))
	$(CC) $(CFLAGS) $^ -o bin/out

run:
	bin/out

clean:
	rm -rf bin

bin:
	mkdir bin
