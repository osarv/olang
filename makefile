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
	$(wildcard std/prelude/*.olang) $(wildcard std/prelude/tests/*.olang) $(wildcard compiler/*.olang) checks/checks.olang
# the compiler under test (compiler/DESIGN.md section 4): build/out, the C compiler, unless named - "make test
# OLANG=build/stage1". What it runs - checks/checks.olang, fuzz/, bench/ - reads it from the environment, as an absolute
# path, and falls back to build/out when it is unset
OLANG ?= build/out
OLANG_ENV = OLANG=$(abspath $(OLANG))

build/obj/%.o: bootstrap/%.c
	mkdir -p build/obj
	$(CC) $(CFLAGS) -c $< -o $@

# build/out is the real target (not "build") so make tracks it by the file's own mtime - naming the
# target "build" instead would let the already-existing build/ directory satisfy it, silently skipping
# relinking after a .o changes.
build/out: $(OBJ)
	$(CC) $(CFLAGS) $^ -o build/out -lm -lffi -ldl -lpthread

build: build/out

# the token oracle (compiler/DESIGN.md section 4): the C tokenizer's stream, which the self-hosted scanner's must equal.
# It links the tokenizer alone, so it stays buildable once bootstrap/ is frozen
build/tokdump: bootstrap/oracle/tokdump.c build/obj/token.o build/obj/util.o build/obj/errmsg.o
	$(CC) -O2 -Wall -Werror -Wextra -Wpedantic $^ -o $@ -lm

# the structure oracle (compiler/DESIGN.md section 4): every declaration and statement the C parser finds, with its span,
# which the self-hosted parser's must equal (compiler/tools/astdiff.sh)
build/astdump: bootstrap/oracle/astdump.c build/obj/syntax.o build/obj/token.o build/obj/util.o build/obj/errmsg.o
	$(CC) -O2 -Wall -Werror -Wextra -Wpedantic $^ -o $@ -lm -lpthread

# the module-graph oracle (compiler/DESIGN.md section 4): the modules and import edges the C compiler's loader reaches
# from a root, with its build-decided branches decided, which the self-hosted loader's must equal (compiler/tools/modgraph.sh)
build/modgraph: bootstrap/oracle/modgraph.c $(filter-out build/obj/main.o,$(OBJ))
	$(CC) -O2 -Wall -Werror -Wextra $^ -o $@ -lm -lffi -ldl -lpthread

# the layout oracle (compiler/DESIGN.md section 4): every type the C checker holds for a program, with its size,
# alignment, LLVM spelling and offsets, which the self-hosted type table's must equal (compiler/tools/layoutdiff.sh)
build/layoutdump: bootstrap/oracle/layoutdump.c $(filter-out build/obj/main.o,$(OBJ))
	$(CC) -O2 -Wall -Werror -Wextra $^ -o $@ -lm -lffi -ldl -lpthread

# what the self-hosted compiler's passes make of a file (compiler/tools/dump.olang), built by the compiler under test
build/compiler_tools_dump: $(OLANG) $(wildcard compiler/*.olang) $(wildcard compiler/tools/*.olang)
	$(OLANG) build compiler/tools/dump.olang

# the formatter (SPEC.md B13): "olang format" builds it into its own cache; this is the copy the tests use
build/compiler_tools_fmt: $(OLANG) $(wildcard compiler/*.olang) $(wildcard compiler/tools/*.olang)
	$(OLANG) build compiler/tools/fmt.olang

# B13's acceptance: every file of the repository formatted reads back as the same tree, keeps its comments, and is its
# own layout ("fmt -v", compiler/tools/fmt.olang): a line for each file that fails, then a count
fmtdiff: build/compiler_tools_fmt
	OLANG_STD=std build/compiler_tools_fmt -v $$(git ls-files '*.olang')

# M1's acceptance: the self-hosted scanner gives the C tokenizer's stream on every file of the repository
tokdiff: build/tokdump build/compiler_tools_dump
	compiler/tools/tokdiff.sh

# M3's acceptance: the self-hosted parser's tree and syntax errors are the C parser's on every file of the repository,
# and each tree written back as source and read again is the same tree (compiler/tools/astdiff.sh)
astdiff: build/astdump build/compiler_tools_dump
	compiler/tools/astdiff.sh

# M4's acceptance: on every checks case the self-hosted loader and name resolver report the errors of their rules that
# stage 0 reported, at the same position (compiler/tools/namesdiff.sh, against compiler/goldens/diag.txt)
namesdiff: build/compiler_tools_dump
	compiler/tools/namesdiff.sh

# M5a's acceptance: every type stage 0 holds for every root program has the self-hosted type table's layout - size,
# alignment, LLVM spelling, offsets (compiler/tools/layoutdiff.sh, against compiler/goldens/layout.txt)
layoutdiff: build/compiler_tools_dump
	compiler/tools/layoutdiff.sh

# captures compiler/goldens/layout.txt again from stage 0, after a change to a layout or to what a program holds
# (minutes: stage 0 checks each root program whole)
layoutgold: build/layoutdump
	compiler/tools/layoutgold.sh

# M4's acceptance: from every root program, the module graph the self-hosted loader reaches is stage 0's
# (compiler/tools/modgraph.sh)
modgraph: build/modgraph build/compiler_tools_dump
	compiler/tools/modgraph.sh

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

run: $(OLANG)
	$(OLANG_ENV) $(OLANG) build runner.olang

# picks up every *.olang file automatically - a new test file needs no makefile edit to be included.
# (usertest.olang is the one deliberate exception - a gitignored scratch file, never part of the suite.)
test: $(OLANG)
	$(OLANG_ENV) $(OLANG) test $(OLANG_TESTS)

# builds and runs the gitignored usertest.olang scratch file directly - never part of the suite above.
usertest: $(OLANG)
	$(OLANG) build usertest.olang
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
	$(MAKE) tokdiff
	$(MAKE) astdiff
	$(MAKE) namesdiff
	$(MAKE) layoutdiff
	$(MAKE) fmtdiff
	@echo "verify: all checks passed"

# the whole suite under ThreadSanitizer (P7). Deliberately NOT part of "verify": the corpus contains one
# intentional data race - the "several tasks may be handed the same instance" test, which exists to show
# that the language permits one since P3 was withdrawn - so a correct run of this target REPORTS exactly
# one race, in shared.Tally.readOut, and exits nonzero for it. More than one means something regressed.
race: $(OLANG)
	-$(OLANG) test -race $(filter-out checks/checks.olang, $(OLANG_TESTS))
	@echo "race: expect exactly one report, in shared.Tally.readOut (the intentional one)"

# the differential fuzzer (fuzz/, K1): random programs whose every value is computed while compiling, built -O3, built
# -O0 and interpreted, each run compared. Not part of "verify" - it runs as long as it is asked to. "make fuzz
# SEED=500 COUNT=1000" picks the seeds. Each run works in a directory of its own, build/fz/runXXXXXX, kept and named
# when something was found (findings.txt and found/ in it), removed otherwise.
SEED ?= 1
COUNT ?= 100
JOBS ?= 2
CASES ?= 30
fuzz: $(OLANG)
	nice -n 19 $(OLANG) build -debug fuzz/fuzz.olang
	$(OLANG_ENV) nice -n 19 ./build/fuzz_fuzz.debug run $(SEED) $(COUNT) $(JOBS) $(CASES)

# the suite under the scope sanitizer (B2f): every use of storage after its scope closed stops the program, or fails the
# test it happens in. Not part of "verify" - shared.olang alone takes a minute and a half under it - and not a race-style
# expected count either: a correct run passes every test, and a failure is a use after free the static check (section
# 8) let through. checks.olang is left out: what it checks is the compiler, and it runs its own sanitized builds.
scopesan: $(OLANG)
	$(OLANG) test -debug -sanitize $(filter-out checks/checks.olang, $(OLANG_TESTS))

# the scope fuzzer (fuzz/scopegen.olang, B2f): random programs storing, lending, copying and returning where scopes close,
# built under the scope sanitizer and interpreted, the two outputs compared. "make scopefuzz SEED=1 COUNT=300 SCENARIOS=12";
# a run's findings land in its own directory's scope/, a line each in scope/findings.txt (named when there are any).
SCENARIOS ?= 12
scopefuzz: $(OLANG)
	nice -n 19 $(OLANG) build -debug fuzz/fuzz.olang
	$(OLANG_ENV) nice -n 19 ./build/fuzz_fuzz.debug scope $(SEED) $(COUNT) $(JOBS) $(SCENARIOS)

# M2 of the port (compiler/DESIGN.md section 6): the self-hosted compiler's diagnostics - msgs.olang's and diag.olang's own
# tests, and compiler/tools/diaggold.olang rendering stage 0's diagnostics on every failing checks/cases program again,
# byte for byte, and its -e on every rule a message names. Part of "make test"; "make diaggold" captures the goldens
# again from build/out (compiler/goldens/diag.txt), after a message or a case changes.
DIAG_TESTS = compiler/msgs.olang compiler/diag.olang compiler/tools/diaggold.olang
OLANG_TESTS += compiler/tools/diaggold.olang  # msgs and diag are already in compiler/*.olang
diagtest: build/out
	build/out test $(DIAG_TESTS)
diaggold: build/out
	compiler/tools/diaggold_capture.sh build/out

all: clean build run

clean:
	rm -rf build

.PHONY: all build bootstrap run test usertest verify checkir tokdiff astdiff fmtdiff namesdiff layoutdiff layoutgold modgraph race fuzz scopesan scopefuzz clean

# kept at the very END of this file on purpose: -include splices in the .d files' own explicit rules
# ("build/obj/codegen.o: bootstrap/codegen.c ..."), and the first explicit rule make reads becomes its default goal.
# Placed higher up, that silently made "make" build one object file instead of build/out.
-include $(DEP)
