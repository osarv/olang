CC = gcc
CFLAGS = -Wall -Werror -Wextra -Wpedantic -g

build/%.o: %.c
	mkdir -p build
	$(CC) $(CFLAGS) -c $< -o $@

all: clean build run

build: $(addprefix build/, $(addsuffix .o, $(basename $(wildcard *.c))))
	$(CC) $(CFLAGS) $^ -o build/out

run:
	build/out -c runner.olang

test: build
	build/out -t shared.olang worker.olang runner.olang

clean:
	rm -rf build
