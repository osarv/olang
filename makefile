CC = gcc
CFLAGS = -Wall -Werror -Wextra -Wpedantic -g

bin/%.o: %.c bin
	$(CC) $(CFLAGS) -c $< -o $@

all: clean build run

build: $(addprefix bin/, $(addsuffix .o, $(basename $(wildcard *.c))))
	$(CC) $(CFLAGS) $^ -o bin/out

run:
	bin/out -c test1.olang

test: build
	bin/out -t test3.olang test4.olang

clean:
	rm -rf bin

bin:
	mkdir bin
