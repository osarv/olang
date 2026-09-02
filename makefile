CC = gcc
CFLAGS = -Wall -Werror -Wextra -Wpedantic -g
SRC = $(wildcard *.c)
OBJ = $(addprefix build/, $(addsuffix .o, $(basename $(SRC))))
OLANG_TESTS = $(filter-out usertest.olang, $(wildcard *.olang))

build/%.o: %.c
	mkdir -p build
	$(CC) $(CFLAGS) -c $< -o $@

# build/out is the real target (not "build") so make tracks it by the file's own mtime - naming the
# target "build" instead would let the already-existing build/ directory satisfy it, silently skipping
# relinking after a .o changes.
build/out: $(OBJ)
	$(CC) $(CFLAGS) $^ -o build/out

build: build/out

run: build/out
	build/out -c runner.olang

# picks up every *.olang file automatically - a new test file needs no makefile edit to be included.
# (usertest.olang is the one deliberate exception - a gitignored scratch file, never part of the suite.)
test: build/out
	build/out -t $(OLANG_TESTS)

# the one command to run before considering any change done: a from-scratch build with -Werror, the full
# olang test suite (every test{} block across every .olang file), and an end-to-end smoke test of the -c
# production compile path (build runner.olang as a real program, then actually run the resulting binary -
# not just compile it, since "run" alone only builds). Each step is a separate recursive make invocation so
# they run in strict sequence (clean genuinely finishes before the rebuild starts, not just "prerequisite
# order", which make doesn't guarantee under -j); any failure - a compiler warning, a failing olang test, a
# native-compile error, or the runner binary exiting nonzero - aborts immediately via make's own default
# stop-on-error behavior, so a clean pass of this target is a real, whole-project guarantee.
verify:
	$(MAKE) clean
	$(MAKE) test
	$(MAKE) run
	./build/runner
	@echo "verify: all checks passed"

all: clean build run

clean:
	rm -rf build

.PHONY: all build run test verify clean
