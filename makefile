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
# M1: a module is one file, and a directory only groups them - the std modules and the prelude's files,
# geom/ (two modules importing each other, imported by runner.olang), and checks/checks.olang - the checks a
# test block cannot make about the compiler itself (programs that must not compile, whole builds), written
# in olang like the rest
OLANG_TESTS = $(filter-out usertest.olang, $(wildcard *.olang)) $(wildcard geom/*.olang) $(wildcard std/*.olang) \
	$(wildcard std/prelude/*.olang) checks/checks.olang

build/%.o: %.c
	mkdir -p build
	$(CC) $(CFLAGS) -c $< -o $@

# build/out is the real target (not "build") so make tracks it by the file's own mtime - naming the
# target "build" instead would let the already-existing build/ directory satisfy it, silently skipping
# relinking after a .o changes.
build/out: $(OBJ)
	$(CC) $(CFLAGS) $^ -o build/out -lm

build: build/out

run: build/out
	build/out -b runner.olang

# picks up every *.olang file automatically - a new test file needs no makefile edit to be included.
# (usertest.olang is the one deliberate exception - a gitignored scratch file, never part of the suite.)
test: build/out
	build/out -t $(OLANG_TESTS)

# builds and runs the gitignored usertest.olang scratch file directly - never part of the suite above.
usertest: build/out
	build/out -b usertest.olang
	./build/usertest

# O2c: every alloca this compiler emits belongs in its function's entry block, or a declaration inside a
# loop reserves a slot per iteration and the stack overflows. That was violated in four separate emitters
# at once and each one stayed invisible until a program ran long enough to fall off its stack, so the rule
# is checked rather than argued. Every function this compiler writes opens with "entry:", so an alloca in
# any later block is the bug. Reads the IR "test" and "run" have just emitted.
checkir:
	@awk '\
	  /^define/ { fn=1; blk=0; next } \
	  /^\}/ { fn=0; next } \
	  fn && /^[A-Za-z_$$][A-Za-z0-9_.$$]*:/ { blk++; next } \
	  fn && blk>1 && /= alloca/ { print FILENAME": "$$0; bad++ } \
	  END { if (bad) { print "FAIL: " bad " alloca(s) outside an entry block"; exit 1 } }' build/*.ll
	@echo "checkir: every alloca is in its entry block"

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
	$(MAKE) checkir
	@echo "verify: all checks passed"

# the whole suite under ThreadSanitizer (P7). Deliberately NOT part of "verify": the corpus contains one
# intentional data race - the "several tasks may be handed the same instance" test, which exists to show
# that the language permits one since P3 was withdrawn - so a correct run of this target REPORTS exactly
# one race, in shared.Tally.readOut, and exits nonzero for it. More than one means something regressed.
race: build/out
	-build/out -t -race $(filter-out checks/checks.olang, $(OLANG_TESTS))
	@echo "race: expect exactly one report, in shared.Tally.readOut (the intentional one)"

all: clean build run

clean:
	rm -rf build

.PHONY: all build run test usertest verify checkir race clean

# kept at the very END of this file on purpose: -include splices in the .d files' own explicit rules
# ("build/codegen.o: codegen.c ..."), and the first explicit rule make reads becomes its default goal.
# Placed higher up, that silently made "make" build one object file instead of build/out.
-include $(DEP)
