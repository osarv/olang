# M1: a module is one file, and a directory only groups them - the std modules and the prelude's files (with the
# tests of some prelude files in std/prelude/tests, a directory of ordinary modules - only std/prelude's own files are
# the prelude),
# tests/ (the corpus: shared, worker, runner, Base, Lib) and tests/geom/ (two modules importing each other, imported by runner.olang), and checks/checks.olang - the checks a
# test block cannot make about the compiler itself (programs that must not compile, whole builds), written
# in olang like the rest; tools/ (the migration tools and what they share) has tests too
OLANG_TESTS = $(wildcard tests/*.olang) $(wildcard tests/geom/*.olang) $(wildcard std/*.olang) \
	$(wildcard std/prelude/*.olang) $(wildcard std/prelude/tests/*.olang) $(wildcard compiler/*.olang) \
	$(wildcard tools/*.olang) checks/checks.olang \
	compiler/tools/toolkit.olang compiler/tools/tokdiff.olang compiler/tools/astdiff.olang compiler/tools/namesdiff.olang \
	compiler/tools/layoutdiff.olang compiler/tools/layoutgold.olang compiler/tools/modgraph.olang \
	compiler/tools/diaggold_capture.olang compiler/tools/rungold.olang checks/fixtures/frameenv/envcheck.olang \
	compiler/tools/diaggold.olang
# the compiler under test (compiler/DESIGN.md section 4): build/olang, which make bootstrap installs (made by it when
# missing) - "make test OLANG=build/stage1" names another. What it runs - checks/checks.olang, fuzz/, bench/, the tools -
# reads it from the environment, as an absolute path; unset, each falls back to build/olang
OLANG ?= build/olang
OLANG_ENV = OLANG=$(abspath $(OLANG))

# how many test files, checks and diffs run side by side ("make test PARALLEL=1" runs them one at a time)
PARALLEL ?= $(shell nproc)
# the test files, each a target of its own (test@FILE) so make runs them side by side, the longest first so the last to
# finish is a short one - checks/checks.olang, which runs its own checks four at a time, before everything. The test
# builds holding over a gigabyte each (the compiler's largest modules, the corpus's shared.olang) run in two lanes, one
# after another in each, so no more than two of them are ever in memory at once (a lane goes on past a failure)
TEST_LANE_A = compiler/scope.olang compiler/views.olang compiler/olang.olang compiler/emit.olang
TEST_LANE_B = compiler/lower.olang compiler/check.olang tests/shared.olang compiler/interp.olang
TEST_HEAVY = checks/checks.olang $(TEST_LANE_A) $(TEST_LANE_B) std/linalg.olang compiler/load.olang compiler/eval.olang \
	compiler/generic.olang
TEST_RUNS_HEAVY = $(addprefix test@,$(filter $(OLANG_TESTS),$(TEST_HEAVY)))
TEST_RUNS_REST = $(addprefix test@,$(filter-out $(TEST_HEAVY),$(OLANG_TESTS)))
TEST_RUNS = $(TEST_RUNS_HEAVY) $(TEST_RUNS_REST)
# each file of a lane after the one before it (an order-only prerequisite)
lane = $(if $(word 2,$1),$(eval test@$(word 2,$1): | test@$(word 1,$1))$(call lane,$(wordlist 2,$(words $1),$1)))

build: build/olang

# what the self-hosted compiler's passes make of a file (compiler/tools/dump.olang), built by the compiler under test
build/compiler_tools_dump: $(OLANG) $(wildcard compiler/*.olang) compiler/tools/dump.olang
	$(OLANG) build compiler/tools/dump.olang

# the acceptance tools (compiler/tools/NAME.olang, which share toolkit.olang): tokdiff, astdiff, namesdiff, layoutdiff,
# layoutgold, modgraph, diaggold_capture - each an olang program built by the compiler under test
build/compiler_tools_%: compiler/tools/%.olang compiler/tools/toolkit.olang $(OLANG)
	$(OLANG) build $<

# the formatter (SPEC.md B13): "olang format" builds it into its own cache; this is the copy the tests use
build/compiler_tools_fmt: $(OLANG) $(wildcard compiler/*.olang) compiler/tools/fmt.olang
	$(OLANG) build compiler/tools/fmt.olang

# B13's acceptance: every file of the repository formatted reads back as the same tree, keeps its comments, and is its
# own layout ("fmt -v", compiler/tools/fmt.olang): a line for each file that fails, then a count
fmtdiff: build/compiler_tools_fmt
	OLANG_STD=std build/compiler_tools_fmt -v $$(git ls-files '*.olang') || $(NOTE_FAILED)

# the self-hosted compiler's driver (compiler/olang.olang), built by the compiler under test
build/compiler_olang: $(OLANG) $(wildcard compiler/*.olang)
	$(OLANG) build compiler/olang.olang

# A golden (compiler/goldens/) is captured from the port: the self-hosted passes, and GOLD_OLANG the driver -
# build/compiler_olang, or name another, "make drvgold GOLD_OLANG=build/stage1". It is captured only by its own target
# (drvgold, rungold, tokgold, astgold, diaggold, layoutgold, modgold), never by a check. The goldens were captured from
# the C compiler, stage 0 (removed, tagged stage0-final): a file edited since is compared with its golden alone
GOLD_OLANG ?= build/compiler_olang

# M10's acceptance: the driver says what compiler/goldens/drv.txt stores - what stage 0 said when it was captured - for command lines decided
# before code generation and for whole builds
drvdiff: build/compiler_olang build/compiler_tools_drvdiff
	build/compiler_tools_drvdiff || $(NOTE_FAILED)

# captures compiler/goldens/drv.txt again from $(GOLD_OLANG), after a message or a command line changes
drvgold: $(GOLD_OLANG) build/compiler_tools_drvdiff
	build/compiler_tools_drvdiff -capture $(GOLD_OLANG)

# M1's acceptance: the self-hosted scanner gives the C tokenizer's stream on every file of the repository, as
# compiler/goldens/tokens.txt stores it
tokdiff: build/compiler_tools_dump build/compiler_tools_tokdiff
	build/compiler_tools_tokdiff || $(NOTE_FAILED)

# captures compiler/goldens/tokens.txt and tokens.full.txt again, after .olang files are edited, added or removed
tokgold: build/compiler_tools_dump build/compiler_tools_tokdiff
	build/compiler_tools_tokdiff -capture

# M3's acceptance: the self-hosted parser's tree and syntax errors are the C parser's on every file of the repository,
# as compiler/goldens/ast.txt stores them,
# and each tree written back as source and read again is the same tree (compiler/tools/astdiff.olang)
astdiff: build/compiler_tools_dump build/compiler_tools_astdiff
	build/compiler_tools_astdiff || $(NOTE_FAILED)

# captures compiler/goldens/ast.txt and ast.full.txt again, after .olang files are edited, added or removed
astgold: build/compiler_tools_dump build/compiler_tools_astdiff
	build/compiler_tools_astdiff -capture

# M4's acceptance: on every checks case the self-hosted loader and name resolver report the errors of their rules that
# stage 0 reported, at the same position (compiler/tools/namesdiff.olang, against compiler/goldens/diag.txt)
namesdiff: build/compiler_tools_dump build/compiler_tools_namesdiff
	build/compiler_tools_namesdiff || $(NOTE_FAILED)

# M5a's acceptance: every type stage 0 holds for every root program has the self-hosted type table's layout - size,
# alignment, LLVM spelling, offsets (compiler/tools/layoutdiff.olang, against compiler/goldens/layout.txt)
layoutdiff: build/compiler_tools_dump build/compiler_tools_layoutdiff
	build/compiler_tools_layoutdiff || $(NOTE_FAILED)

# the self-hosted checker's errors and unchecked constructs on files (compiler/tools/checkdump.olang)
build/compiler_tools_checkdump: $(OLANG) $(wildcard compiler/*.olang) compiler/tools/checkdump.olang
	$(OLANG) build compiler/tools/checkdump.olang

# M5b/M5c's acceptance, measured: refused checks cases give stage 0's first error, accepted programs check clean
# (compiler/tools/checkdiff.olang; under a minute, not in verify until it is required)
build/compiler_tools_checkdiff: $(OLANG) compiler/tools/checkdiff.olang
	$(OLANG) build compiler/tools/checkdiff.olang
checkdiff: build/compiler_tools_checkdump build/compiler_tools_checkdiff
	build/compiler_tools_checkdiff -v

# the self-hosted scope pass's errors, unjudged constructs and plans on files (compiler/tools/scopedump.olang)
build/compiler_tools_scopedump: $(OLANG) $(wildcard compiler/*.olang) compiler/tools/scopedump.olang
	$(OLANG) build compiler/tools/scopedump.olang

# M6's acceptance, measured: refused checks cases whose first error is section 8's give it, accepted programs are scope
# clean (compiler/tools/scopediff.olang; not in verify until it is required)
build/compiler_tools_scopediff: $(OLANG) compiler/tools/scopediff.olang
	$(OLANG) build compiler/tools/scopediff.olang
scopediff: build/compiler_tools_scopedump build/compiler_tools_scopediff
	build/compiler_tools_scopediff -v

# M7's acceptance, measured: every body of the corpus, std, the compiler and the checks' run and build cases checked,
# lowered to MIR and held to the MIR verifier (compiler/tools/lowerdump.olang; the rows in build/lowerdump.txt, not in
# verify until it is required)
build/compiler_tools_lowerdump: $(OLANG) $(wildcard compiler/*.olang) compiler/tools/lowerdump.olang
	$(OLANG) build compiler/tools/lowerdump.olang
LOWER_CASES = $(shell grep -l '^\# check: \(run\|build\)' checks/cases/*.olang)
lowerdump: build/compiler_tools_lowerdump
	build/compiler_tools_lowerdump -t tests/*.olang tests/geom/*.olang std/*.olang std/prelude/tests/*.olang \
		compiler/*.olang compiler/tools/*.olang > build/lowerdump.txt
	build/compiler_tools_lowerdump $(LOWER_CASES) > build/lowerdump.cases.txt
	grep '^== total' build/lowerdump.txt build/lowerdump.cases.txt

# M9's acceptance, measured: each program of the corpus and std's tests built by the self-hosted pipeline (load, names,
# check, the scope pass, lower, emit - compiler/tools/emitdump.olang), compiled by clang with the port's runtime, run,
# and compared test by test with stage 0's run as compiler/goldens/run.txt stores it (compiler/tools/emitdiff.olang; the
# rows in build/emitdiff.txt, not in verify until it is required)
build/compiler_tools_emitdump: $(OLANG) $(wildcard compiler/*.olang) compiler/tools/emitdump.olang
	$(OLANG) build compiler/tools/emitdump.olang
emitdiff: build/compiler_tools_emitdump build/compiler_tools_emitdiff
	build/compiler_tools_emitdiff -v > build/emitdiff.txt
	grep '^== total' build/emitdiff.txt

# M8's acceptance, measured: each file of tests in the corpus and std run by the self-hosted pipeline's evaluator (load,
# names, check, scope, lower, eval - compiler/tools/evaldump.olang) and compared test by test with stage 0's run as
# compiler/goldens/run.txt stores it, and the checks' run cases compared as programs (compiler/tools/evaldiff.olang; the
# rows in build/evaldiff.txt, not in verify until it is required)
build/compiler_tools_evaldump: $(OLANG) $(wildcard compiler/*.olang) compiler/tools/evaldump.olang
	$(OLANG) build compiler/tools/evaldump.olang
EVAL_CASES = $(shell grep -L '^\# flags' $$(grep -l '^\# check: run' checks/cases/*.olang))
evaldiff: build/compiler_tools_evaldump build/compiler_tools_evaldiff
	build/compiler_tools_evaldiff -v > build/evaldiff.txt
	build/compiler_tools_evaldiff $(EVAL_CASES) > build/evaldiff.cases.txt
	grep '^== total' build/evaldiff.txt build/evaldiff.cases.txt

# captures compiler/goldens/run.txt again from $(GOLD_OLANG) - stage 0's runs of the corpus's and std's tests and of
# the checks' run cases, which emitdiff and evaldiff hold the port to - after a test or a run case is added or changes
# what it prints (minutes)
rungold: $(GOLD_OLANG) build/compiler_tools_rungold
	build/compiler_tools_rungold $(GOLD_OLANG)

# captures compiler/goldens/layout.txt again, laying the golden's own types out by the self-hosted type table, after a
# change to a layout or to what a program holds
layoutgold: build/compiler_tools_layoutgold build/compiler_tools_dump
	build/compiler_tools_layoutgold

# M4's acceptance: from every root program, the module graph the self-hosted loader reaches is stage 0's, as
# compiler/goldens/modgraph.txt stores it (compiler/tools/modgraph.olang)
modgraph: build/compiler_tools_dump build/compiler_tools_modgraph
	build/compiler_tools_modgraph

# captures compiler/goldens/modgraph.txt again, after an import changes
modgold: build/compiler_tools_dump build/compiler_tools_modgraph
	build/compiler_tools_modgraph -capture

# ---- the seed (compiler/DESIGN.md section 5, seed/README.md) ----
#
# The seed is the compiler's own LLVM IR, as the compiler writes it of itself for baseline x86-64 Linux: one
# xz-compressed .ll per object in seed/. "make bootstrap" rebuilds the compiler from it with nothing but clang and xz -
# no other compiler: clang makes the seed into build/olang.seed, which builds compiler/olang.olang into
# build/olang.1, which builds it into build/olang.2, which builds it again into build/olang.3; the last two, each built
# by a compiler made from the current source, must be byte for byte equal, and build/olang.3 is installed as
# build/olang. build/olang.1 was built by the seed's compiler, so it equals build/olang.2 only while the seed is current:
# the seed need not be - an older seed builds the current source as long as that source uses nothing the seed's
# compiler lacks - and "make seed" writes it again from the current source. The third build reuses every object of the
# second (an object is named by its IR) when the two compilers write the same IR, so it costs seconds.
SEED_DIR = seed
SEED_FILES = $(wildcard $(SEED_DIR)/*.ll.xz)
SEED_OBJ = $(patsubst $(SEED_DIR)/%.ll.xz,build/seed/%.o,$(SEED_FILES))
SEED_CLANG ?= clang
# the compiler that builds the seed tool: the one make bootstrap installed (made by its steps when missing). Which one it
# is changes nothing in the seed - the tool runs the current source's passes over the current source
SEED_OLANG = build/olang

build/seed/%.o: $(SEED_DIR)/%.ll.xz
	@mkdir -p build/seed
	xz -dc $< > build/seed/$*.ll
	$(SEED_CLANG) -O2 -c build/seed/$*.ll -o $@

build/olang.seed: $(SEED_OBJ)
	@test -n "$(SEED_OBJ)" || { echo "bootstrap: no seed in $(SEED_DIR)/ - make seed writes one"; exit 1; }
	$(SEED_CLANG) $(SEED_OBJ) -o $@ -lm -lpthread -ldl -lffi

define BOOTSTRAP
	build/olang.seed build -output build/olang.1 compiler/olang.olang
	build/olang.1 build -output build/olang.2 compiler/olang.olang
	build/olang.2 build -output build/olang.3 compiler/olang.olang
	cmp build/olang.2 build/olang.3
	cp build/olang.3 build/olang
	@echo "bootstrap: build/olang.2 and build/olang.3 are byte for byte equal; build/olang installed"
endef

# the seed's objects compiled side by side, then the three builds: the bootstrap from nothing, every time it is asked for
bootstrap:
	$(MAKE) -j$(PARALLEL) build/olang.seed
	$(BOOTSTRAP)

# build/olang as a file, for OLANG=build/olang: bootstrapped (boot, below) when missing or older than the sources it is
# built from (what the compiler holds of std included). The seed is not among them: build/olang is the third build of
# the current source, the same whichever seed started the chain (make bootstrap compares the last two builds)
BOOT_SOURCES = $(wildcard compiler/*.olang) $(wildcard std/*.olang) $(wildcard std/prelude/*.olang) $(wildcard std/runtime/*.ll)
build/olang: $(BOOT_SOURCES)
	$(MAKE) boot

# boot: make bootstrap, unless a bootstrap of exactly these inputs has passed here before - then the compiler it
# installed. A bootstrap is a function of its inputs, which the key names: the seed, the compiler's and std's files
# (all of std, conservatively), this makefile, every clang the compiler may take (B12d) and the linker, the processor (the build is for the machine it
# runs on, B12) and this checkout's directory (the compiler holds its absolute std paths). The cache, $(BOOT_CACHE), is
# outside build/, so make clean keeps it; an entry is written only after build/olang.2 and build/olang.3 compared
# equal, and only the newest $(BOOT_KEEP) are kept. BOOT_FRESH=1 bootstraps whatever the cache holds
BOOT_CACHE ?= .bootcache
BOOT_KEEP ?= 3
boot:
	@key=$$( { echo "$(CURDIR)"; sha256sum $(sort $(SEED_FILES) $(BOOT_SOURCES) $(shell find std -type f) makefile); \
		$(SEED_CLANG) --version; for c in "$$OLANG_CLANG" clang-20 clang-19 clang-18 clang; do \
			[ -n "$$c" ] && command -v $$c > /dev/null && $$c --version | head -1; done; ld --version | head -1; \
		grep -m1 '^model name' /proc/cpuinfo; grep -m1 '^flags' /proc/cpuinfo; } | sha256sum | cut -c1-32 ); \
	d=$(BOOT_CACHE)/$$key; \
	if [ -z "$(BOOT_FRESH)" ] && [ -x $$d/olang ]; then \
		mkdir -p build && cp $$d/olang build/olang.cached && mv build/olang.cached build/olang && \
		echo "boot: build/olang is the bootstrap of these inputs that passed before ($$d)"; \
	else \
		$(MAKE) bootstrap && mkdir -p $(BOOT_CACHE) && t=$$(mktemp -d $(BOOT_CACHE)/new.XXXXXX) && \
		cp build/olang $$t/olang && rm -rf $$d && mv $$t $$d && \
		ls -dt $(BOOT_CACHE)/*/ | tail -n +$$(( $(BOOT_KEEP) + 1 )) | xargs -r rm -rf; \
	fi

# the seed written again from the current source (compiler/tools/seed.olang), from the repository root and with the
# standard library named relatively, so no path of this checkout is in it. A file whose IR did not change is left as
# it is, so another xz cannot change a seed file whose content is the same
# the seed tool runs the passes it was built from, so it is built again whenever compiler/ or std/ changes
build/compiler_tools_seed: $(SEED_OLANG) compiler/tools/seed.olang $(wildcard compiler/*.olang) $(wildcard std/*.olang) \
		$(wildcard std/prelude/*.olang) $(wildcard std/runtime/*.ll)
	$(SEED_OLANG) build compiler/tools/seed.olang

seed: build/compiler_tools_seed
	OLANG_STD=std build/compiler_tools_seed build/seed.new
	@mkdir -p $(SEED_DIR)
	@for f in $(SEED_DIR)/*.ll.xz; do \
		[ -e "$$f" ] || continue; b=$$(basename $$f .xz); [ -e build/seed.new/$$b ] || rm -f $$f; done
	@for f in build/seed.new/*.ll; do \
		b=$$(basename $$f); \
		if [ -e $(SEED_DIR)/$$b.xz ] && xz -dc $(SEED_DIR)/$$b.xz | cmp -s - $$f; then continue; fi; \
		echo "seed: $(SEED_DIR)/$$b.xz"; xz -9 -T1 -c $$f > $(SEED_DIR)/$$b.xz; done

run: $(OLANG)
	$(OLANG_ENV) $(OLANG) build tests/runner.olang

# every test file of OLANG_TESTS (usertest.olang, a gitignored scratch file, is never part of the suite), side by side (PARALLEL at a time), each in a compiler process of its own as "olang test" runs them;
# make's -Otarget prints each file's output whole when it finishes. A failing file does not stop the others (-k), and
# the failed ones are named at the end
test: $(OLANG)
	@rm -f build/failed.txt
	@$(MAKE) --no-print-directory -k -j$(PARALLEL) -Otarget $(TEST_RUNS) && [ ! -s build/failed.txt ] || $(FAILED)

FAILED = { echo "failed: $$(sort build/failed.txt 2>/dev/null | tr '\n' ' ')"; exit 1; }
# a part of the suite that failed, named in build/failed.txt
NOTE_FAILED = { echo "$@" >> build/failed.txt; exit 1; }

# a test file that fails is named in build/failed.txt and its target ends as if it passed, so the lane it is in goes on;
# test and suite fail by build/failed.txt
$(TEST_RUNS): test@%: FORCE
	@$(OLANG_ENV) $(OLANG) test $* || echo "$*" >> build/failed.txt
$(call lane,$(TEST_LANE_A))
$(call lane,$(TEST_LANE_B))

FORCE:

# the -c production path end to end: tests/runner.olang built as a program and run
runner: FORCE
	@$(OLANG_ENV) $(OLANG) build tests/runner.olang || $(NOTE_FAILED)
	@./build/tests_runner || $(NOTE_FAILED)

# the port's diffs against the goldens, each named in build/failed.txt when it fails
DIFFS = tokdiff astdiff namesdiff layoutdiff fmtdiff drvdiff

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

# everything after the compiler is built - every test file, the runner, the diffs - side by side, PARALLEL at a time
# (-k: a failure stops nothing else; the failed parts are named at the end), then checkir over the IR they wrote
suite: $(OLANG)
	@rm -f build/failed.txt
	@$(MAKE) --no-print-directory -k -j$(PARALLEL) -Otarget $(TEST_RUNS_HEAVY) runner $(DIFFS) $(TEST_RUNS_REST) \
		&& [ ! -s build/failed.txt ] || $(FAILED)
	@$(MAKE) --no-print-directory checkir

# the one command to run before considering any change done, the gate before every merge: a from-scratch build (clean,
# then the bootstrap from the seed with its fixed point - boot, which reuses only a bootstrap of exactly the same inputs
# that passed before), then the whole suite: every test{} block of every .olang file, checks/checks.olang (programs that
# must not compile, whole builds), tests/runner.olang built as a program and run, the IR's allocas, and the port's
# diffs against the goldens. Any failure fails it
verify:
	$(MAKE) clean
	$(MAKE) boot
	$(MAKE) suite
	@echo "verify: all checks passed"

# the edit-test loop: the same suite as verify on what is already built - build/olang rebuilt by itself when a source
# of it is newer (one build, the objects and build/rec it left reused), bootstrapped only when there is none. What it
# leaves out is what only verify checks: a clean build/, the bootstrap from the seed, and the compiler rebuilding itself
# identically (a change to the code generator is first applied to the compiler by verify)
quick:
	@$(MAKE) --no-print-directory quickolang
	@$(MAKE) --no-print-directory suite
	@echo "quick: all checks passed (make verify adds a clean build and the bootstrap from the seed)"

quickolang:
	@if [ ! -x build/olang ]; then $(MAKE) --no-print-directory boot; \
	elif [ -n "$$(find $(BOOT_SOURCES) -newer build/olang)" ]; then \
		echo "quick: build/olang rebuilt by itself"; \
		build/olang build -output build/olang.next compiler/olang.olang && mv build/olang.next build/olang; fi

# B12a: the corpus's, std's and the prelude's tests and the checks' cases built for another architecture,
# CROSS_TARGET, and run through its emulator (qemu-user; olang finds it, OLANG_EMULATOR names another), with a clang
# that builds for it (clang 19 or newer for aarch64 - OLANG_CLANG names one). Not part of verify: it needs a cross C
# library and qemu-user installed (compiler/README.md). CROSS_SKIP leaves out what an emulator cannot run as the machine
# would: std/os's tests of a program that cannot be started (qemu-user reports a failed exec of posix_spawn as a child
# exiting 127), and std/ffi's (libffi for the target is not installed)
CROSS_TARGET ?= aarch64-linux-gnu
CROSS_SKIP ?= std/os.olang std/ffi.olang
CROSS_TESTS = $(filter-out $(CROSS_SKIP),$(wildcard tests/*.olang) $(wildcard tests/geom/*.olang) $(wildcard std/*.olang) \
	$(wildcard std/prelude/*.olang) $(wildcard std/prelude/tests/*.olang))
CROSS_RUNS = $(addprefix cross@,$(CROSS_TESTS)) cross@checks/checks.olang
cross: $(OLANG)
	@rm -f build/failed.txt
	@$(MAKE) --no-print-directory -k -j$(PARALLEL) -Otarget $(CROSS_RUNS) && [ ! -s build/failed.txt ] || $(FAILED)
	@echo "cross: every test passed on $(CROSS_TARGET)"
$(filter-out cross@checks/checks.olang,$(CROSS_RUNS)): cross@%: FORCE
	@$(OLANG_ENV) $(OLANG) test -target $(CROSS_TARGET) $* || echo "$* ($(CROSS_TARGET))" >> build/failed.txt
cross@checks/checks.olang: FORCE
	@CHECKS_TARGET=$(CROSS_TARGET) $(OLANG_ENV) $(OLANG) test checks/checks.olang || echo "checks ($(CROSS_TARGET))" >> build/failed.txt

# B12d: a release - build/release/olang-VERSION-ARCH-linux.tar.xz, VERSION as git describes this checkout. It holds
# the compiler built for the architecture's baseline (bin/olang, so it runs on every machine of it, whatever this one
# has), std/, SPEC.md (for "olang explain RULE"), editors/, tools/ (for "olang fix"), docs/install.md as its README, and
# clang beside it (llvm/), which the compiler finds before any on PATH: RELEASE_LLVM's clang, LLVMgold.so (the LTO
# link through the system's ld), its resource directory without what olang never uses (i386, and every sanitizer but
# ThreadSanitizer, -race's), and the shared libraries it needs that are not the C library, libstdc++ or libgcc_s. The
# machine it is unpacked on needs a linker (binutils) and the C library's development files (libc6-dev, libgcc-dev)
RELEASE_LLVM ?= $(firstword $(wildcard /usr/lib/llvm-20 /usr/lib/llvm-19))
RELEASE_VERSION ?= $(shell git describe --always --dirty --tags 2>/dev/null || echo dev)
RELEASE_NAME = olang-$(RELEASE_VERSION)-$(shell uname -m)-linux
RELEASE_DIR = build/release/$(RELEASE_NAME)
RELEASE_SYSTEM_LIBS = libc.so.*|libm.so.*|libpthread.so.*|libdl.so.*|librt.so.*|ld-linux*|linux-vdso.so.*|libstdc++.so.*|libgcc_s.so.*
release: $(OLANG)
	@test -x "$(RELEASE_LLVM)/bin/clang" || { echo "release: no clang in RELEASE_LLVM ($(RELEASE_LLVM))"; exit 1; }
	rm -rf build/release && mkdir -p $(RELEASE_DIR)/bin $(RELEASE_DIR)/llvm/bin $(RELEASE_DIR)/llvm/lib
	$(OLANG) build -target $(shell uname -m)-linux-gnu -output $(RELEASE_DIR)/bin/olang compiler/olang.olang
	cp -r std editors SPEC.md $(RELEASE_DIR)/
	mkdir -p $(RELEASE_DIR)/tools && cp tools/*.olang tools/README.md $(RELEASE_DIR)/tools/
	cp docs/install.md $(RELEASE_DIR)/README.md
	cp -L $(RELEASE_LLVM)/bin/clang $(RELEASE_DIR)/llvm/bin/clang
	cp -L $(RELEASE_LLVM)/lib/LLVMgold.so $(RELEASE_DIR)/llvm/lib/
	for lib in $$(ldd $(RELEASE_LLVM)/bin/clang $(RELEASE_LLVM)/lib/LLVMgold.so | awk '$$2 == "=>" { print $$1 " " $$3 }' | sort -u | \
		while read name path; do case $$name in $(RELEASE_SYSTEM_LIBS)) ;; *) echo $$path ;; esac; done); do \
		cp -L $$lib $(RELEASE_DIR)/llvm/lib/; done
	cp -r $(RELEASE_LLVM)/lib/clang $(RELEASE_DIR)/llvm/lib/
	find $(RELEASE_DIR)/llvm/lib/clang -name '*i386*' -delete
	find $(RELEASE_DIR)/llvm/lib/clang -name 'libclang_rt.*' ! -name 'libclang_rt.tsan*' ! -name 'libclang_rt.builtins*' -delete
	tar -C build/release -cJf build/release/$(RELEASE_NAME).tar.xz $(RELEASE_NAME)
	@du -sh $(RELEASE_DIR) build/release/$(RELEASE_NAME).tar.xz
	$(MAKE) --no-print-directory releasetest

# a release unpacked into a fresh directory builds and runs a program with nothing but its own clang: PATH holds only
# the system's tools a build runs (the linker), never a clang - and "olang explain T6a" reads the SPEC.md shipped beside
# bin/
releasetest:
	@t=$$(mktemp -d) && tar -C $$t -xJf build/release/$(RELEASE_NAME).tar.xz && mkdir $$t/work $$t/path && \
	for p in ld ld.bfd as sh cat; do ln -s $$(command -v $$p) $$t/path/$$p; done && \
	printf 'import "std/io"\n\nfn main() {\n    io.Println("hello from " $$TargetArch)!\n}\n' > $$t/work/hello.olang && \
	cd $$t/work && env -i HOME=$$t PATH=$$t/path OLANG_CACHE=$$t/cache $$t/$(RELEASE_NAME)/bin/olang hello.olang > out.txt 2>&1; \
	st=$$?; cat $$t/work/out.txt; \
	env -i HOME=$$t PATH=$$t/path OLANG_CACHE=$$t/cache $$t/$(RELEASE_NAME)/bin/olang explain T6a > explain.txt 2>&1; \
	ex=$$?; head -3 $$t/work/explain.txt; \
	if [ $$st -eq 0 ] && grep -q "hello from $$(uname -m)" $$t/work/out.txt && [ $$ex -eq 0 ] && grep -q "T6a" $$t/work/explain.txt; \
	then echo "releasetest: built and ran, and explain read SPEC.md"; rm -rf $$t; \
	else echo "releasetest: failed ($$t)"; exit 1; fi

# the whole suite under ThreadSanitizer (P7). Deliberately NOT part of "verify": the corpus contains one
# intentional data race - the "several tasks may be handed the same instance" test, which exists to show
# that the language permits one since P3 was withdrawn - so a correct run of this target REPORTS exactly
# one race, in tests/shared.Tally.readOut, and exits nonzero for it. More than one means something regressed.
race: $(OLANG)
	-$(OLANG) test -race $(filter-out checks/checks.olang, $(OLANG_TESTS))
	@echo "race: expect exactly one report, in tests/shared.Tally.readOut (the intentional one)"

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
# test it happens in. Not part of "verify" - tests/shared.olang alone takes a minute and a half under it - and not a race-style
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
# again from $(GOLD_OLANG) (compiler/goldens/diag.txt), after a message or a case changes.
DIAG_TESTS = compiler/msgs.olang compiler/diag.olang compiler/tools/diaggold.olang
diagtest: $(OLANG)
	$(OLANG_ENV) $(OLANG) test $(DIAG_TESTS)
diaggold: $(GOLD_OLANG) build/compiler_tools_diaggold_capture
	build/compiler_tools_diaggold_capture $(GOLD_OLANG)

all: clean build run

clean:
	rm -rf build

# FORCE stands in for .PHONY on the test@FILE pattern targets, whose names are no files either
.PHONY: all build bootstrap boot seed run runner test suite quick quickolang usertest verify checkir tokdiff astdiff fmtdiff namesdiff layoutdiff drvdiff drvgold rungold tokgold astgold modgold checkdiff scopediff lowerdump emitdiff evaldiff layoutgold modgraph diaggold race fuzz scopesan scopefuzz clean
