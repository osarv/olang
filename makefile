CC = gcc
CFLAGS = -Wall -Werror -Wextra -Wpedantic -g

bin/%.o: %.c bin
	$(CC) $(CFLAGS) -c $< -o $@

all: clean build run

build: $(addprefix bin/, $(addsuffix .o, $(basename $(wildcard *.c))))
	$(CC) $(CFLAGS) $^ -o bin/out

run:
	bin/out -c runner.olang

test: build
	bin/out -t shared.olang worker.olang runner.olang

clean:
	rm -rf bin

bin:
	mkdir bin
