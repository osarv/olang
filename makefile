CC = gcc
# -MMD -MP make gcc emit a .d file per object listing the headers it actually included, which the
# -include below feeds back to make. Without them a header edit rebuilt nothing: an incremental build
# after changing a struct in a .h silently produced object files compiled against DIFFERENT layouts of
# the same struct, and the resulting compiler segfaulted on valid input. "make verify" always ran clean
# so it never caught this - the failure only ever appeared mid-edit.
CFLAGS = -Wall -Werror -Wextra -Wpedantic -g -MMD -MP
SRC = $(wildcard *.c)
OBJ = $(addprefix build/, $(addsuffix .o, $(basename $(SRC))))
DEP = $(OBJ:.o=.d)
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

# builds and runs the gitignored usertest.olang scratch file directly - never part of the suite above.
usertest: build/out
	build/out -c usertest.olang
	./build/usertest

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

.PHONY: all build run test usertest verify clean

# kept at the very END of this file on purpose: -include splices in the .d files' own explicit rules
# ("build/codegen.o: codegen.c ..."), and the first explicit rule make reads becomes its default goal.
# Placed higher up, that silently made "make" build one object file instead of build/out.
-include $(DEP)
