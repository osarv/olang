CC = gcc
# -MMD -MP make gcc emit a .d file per object listing the headers it actually included, which the
# -include below feeds back to make. Without them a header edit rebuilt nothing: an incremental build
# after changing a struct in a .h silently produced object files compiled against DIFFERENT layouts of
# the same struct, and the resulting compiler segfaulted on valid input. "make verify" always ran clean
# so it never caught this - the failure only ever appeared mid-edit.
CFLAGS = -Wall -Werror -Wextra -Wpedantic -g -MMD -MP
# the C compiler - stage 0 of the bootstrap (bootstrap/README.md) - is bootstrap/*.c, built to build/out
SRC = $(wildcard bootstrap/*.c)
# objects under build/obj/, not build/: a checkout built before the move to bootstrap/ holds build/*.d files naming
# codegen.c and the rest at the top level, and make would read them and stop at "No rule to make target 'codegen.c'"
OBJ = $(addprefix build/obj/, $(addsuffix .o, $(basename $(notdir $(SRC)))))
# the same sources built optimized, as the compiler a bootstrap starts from (make bootstrap)
STAGE0_CFLAGS = -O2 -Wall -Werror -Wextra -Wpedantic -MMD -MP
STAGE0_OBJ = $(addprefix build/stage0.obj/, $(addsuffix .o, $(basename $(notdir $(SRC)))))
DEP = $(OBJ:.o=.d) $(STAGE0_OBJ:.o=.d)
# M1: a module is one file, and a directory only groups them - the std modules and the prelude's files (with the
# tests of some prelude files in std/prelude/tests, a directory of ordinary modules - only std/prelude's own files are
# the prelude),
# geom/ (two modules importing each other, imported by runner.olang), and checks/checks.olang - the checks a
# test block cannot make about the compiler itself (programs that must not compile, whole builds), written
# in olang like the rest
OLANG_TESTS = $(filter-out usertest.olang, $(wildcard *.olang)) $(wildcard geom/*.olang) $(wildcard std/*.olang) \
	$(wildcard std/prelude/*.olang) $(wildcard std/prelude/tests/*.olang) checks/checks.olang

build/obj/%.o: bootstrap/%.c
	mkdir -p build/obj
	$(CC) $(CFLAGS) -c $< -o $@

# build/out is the real target (not "build") so make tracks it by the file's own mtime - naming the
# target "build" instead would let the already-existing build/ directory satisfy it, silently skipping
# relinking after a .o changes.
build/out: $(OBJ)
	$(CC) $(CFLAGS) $^ -o build/out -lm -lffi -ldl -lpthread

build: build/out

build/stage0.obj/%.o: bootstrap/%.c
	mkdir -p build/stage0.obj
	$(CC) $(STAGE0_CFLAGS) -c $< -o $@

build/stage0: $(STAGE0_OBJ)
	$(CC) $(STAGE0_CFLAGS) $^ -o build/stage0 -lm -lffi -ldl -lpthread

# rebuilds the compiler from nothing but the repository (bootstrap/README.md, compiler/DESIGN.md section 5): stage 0,
# the C compiler in bootstrap/, needs only gcc. No binary is committed, so this is also how a lost compiler comes back.
# TODO once compiler/ holds the olang compiler: walk bootstrap/CHAIN (each entry's compiler/ and std/ extracted with
# git archive and built at -d by the compiler before it), build stage 1 from compiler/ with the last of them at -d,
# stage 2 with stage 1 and stage 3 with stage 2, compare every .ll of stages 2 and 3 byte for byte and then the
# binaries, and install stage 2 as build/olang.
bootstrap: build/stage0
	@echo "bootstrap: stage 0 is build/stage0 - compiler/ holds no olang compiler yet, so there are no later stages"

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
	-build/out -t -r $(filter-out checks/checks.olang, $(OLANG_TESTS))
	@echo "race: expect exactly one report, in shared.Tally.readOut (the intentional one)"

# the differential fuzzer (fuzz/, K1): random programs whose every value is computed while compiling, built -O3, built
# -O0 and interpreted, each run compared. Not part of "verify" - it runs as long as it is asked to. "make fuzz
# SEED=500 COUNT=1000" picks the seeds; findings land in build/fz/found and build/fz/findings.txt.
SEED ?= 1
COUNT ?= 100
JOBS ?= 2
CASES ?= 30
fuzz: build/out
	nice -n 19 build/out -b -d fuzz/fuzz.olang
	nice -n 19 ./build/fuzz_fuzz.debug run $(SEED) $(COUNT) $(JOBS) $(CASES)

# the suite under the scope sanitizer (B2f): every use of storage after its scope closed stops the program, or fails the
# test it happens in. Not part of "verify" - shared.olang alone takes a minute and a half under it - and not a race-style
# expected count either: a correct run passes every test, and a failure is a use after free the static check (section
# 8) let through. checks.olang is left out: what it checks is the compiler, and it runs its own sanitized builds.
scopesan: build/out
	build/out -t -d -s $(filter-out checks/checks.olang, $(OLANG_TESTS))

# the scope fuzzer (fuzz/scopegen.olang, B2f): random programs storing, lending, copying and returning where scopes close,
# built under the scope sanitizer and interpreted, the two outputs compared. "make scopefuzz SEED=1 COUNT=300 SCENARIOS=12";
# findings land in build/fz/scope, a line each in build/fz/scope/findings.txt.
SCENARIOS ?= 12
scopefuzz: build/out
	nice -n 19 build/out -b -d fuzz/fuzz.olang
	nice -n 19 ./build/fuzz_fuzz.debug scope $(SEED) $(COUNT) $(JOBS) $(SCENARIOS)

all: clean build run

clean:
	rm -rf build

.PHONY: all build bootstrap run test usertest verify checkir race fuzz scopesan scopefuzz clean

# kept at the very END of this file on purpose: -include splices in the .d files' own explicit rules
# ("build/obj/codegen.o: bootstrap/codegen.c ..."), and the first explicit rule make reads becomes its default goal.
# Placed higher up, that silently made "make" build one object file instead of build/out.
-include $(DEP)
