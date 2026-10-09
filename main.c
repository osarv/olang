#include <stdlib.h>
#include <stdio.h>
#include <string.h>
#include <unistd.h>
#include <errno.h>
#include <sys/stat.h>
#include <sys/wait.h>
#include <sys/utsname.h>
#include <ctype.h>
#include <pthread.h>
#include "syntax.h"
#include "semantic.h"
#include "codegen.h"
#include "comptime.h"
#include "util.h"
#include "errmsg.h"

//P7: "-r" builds everything under ThreadSanitizer. It is a whole-build mode rather than a per-file
//one: the runtime is emitted linkonce_odr into every object, so mixing an instrumented object with an
//uninstrumented one would let the linker keep either copy.
static bool gRace = false;
//S18b/P1d: only a test binary can longjmp, so only a test build carries the open-scope chain. That makes
//a module's test-build object a different artifact from its plain one, exactly as -r does.
static bool gTestBuild = false;
//B2c: "-d" is the one mode that turns backend optimization OFF. Everything else is built at full
//optimization deliberately - the language's own line is that you get what the machine can do unless you
//asked otherwise, so this is the exception rather than one end of a spectrum of levels.
static bool gDebug = false;

//an argument list for RunProgram (util.h), as it is built
static void argAdd(struct list* args, char* a) { ListAdd(args, &a); }
static char** argEnd(struct list* args) {
    char* end = NULL;
    ListAdd(args, &end);
    return args->ptr;
}

//the optimization and debug flags for the current mode, shared by the compile and link steps so the two
//can never disagree - linking -O3 objects with -O0 ones is not an error, merely silently not what was
//asked for.
static void addModeFlags(struct list* args) {
    if (gDebug) {
        argAdd(args, "-O0");
        argAdd(args, "-g");
        if (gRace) argAdd(args, "-fsanitize=thread");
        return;
    }
    //-O1 under -r: TSan reports name the function a race is in, and -O3 inlines enough of the small
    //accessors that the name is regularly the caller's rather than the culprit's
    if (gRace) { argAdd(args, "-O1"); argAdd(args, "-fsanitize=thread"); return; }
    //B2d: "-flto" puts the optimizer over the whole program at the link, so a cross-module call inlines
    //like a same-module one. Not thin LTO: measured indistinguishable at run time here and slower to
    //build, since its parallel machinery has a fixed cost and a handful of modules has nothing to
    //parallelize. Left out of -r above for the same reason that path is -O1.
    argAdd(args, "-O3");
    argAdd(args, "-flto");
}

//the first of clang-20 and clang found on PATH - looked up here rather than through a shell
char* findClang() {
    char* names[] = { "clang-20", "clang" };
    char* path = getenv("PATH");
    if (!path || !*path) path = "/usr/local/bin:/usr/bin:/bin";
    for (int k = 0; k < 2; k++) {
        for (char* p = path; ; ) {
            char* colon = strchr(p, ':');
            size_t n = colon ? (size_t)(colon - p) : strlen(p);
            char* cand = StrFmt("%.*s%s%s", (int)n, p, n ? "/" : "", names[k]);
            bool ok = access(cand, X_OK) == 0;
            free(cand);
            if (ok) return names[k];
            if (!colon) break;
            p = colon + 1;
        }
    }
    return NULL;
}

void ensureBuildDir() {
    (void)mkdir("build", 0755); //already existing is fine
}

//a module's identity made readable for a file name: every character but a letter, a digit, '_' or '-' becomes '_',
//so "std/list" reads std_list. Not injective - "geom/rect" and "geom_rect" read alike - which is why an object's name
//also carries objectHash below; the binary of a program, and the IR written for a module, are named by this alone.
char* moduleObjectBase(struct semaModule* mod) {
    char* out = MallocOrCrash((size_t)mod->identity.len + 1);
    for (int i = 0; i < mod->identity.len; i++) {
        char c = mod->identity.ptr[i];
        out[i] = ((c >= 'a' && c <= 'z') || (c >= 'A' && c <= 'Z') || (c >= '0' && c <= '9') || c == '_' || c == '-') ? c : '_';
    }
    out[mod->identity.len] = '\0';
    return out;
}

//the modules an object is compiled against: its own, every module it transitively imports, and the prelude's
static void collectCompiledAgainst(struct semaModule* mod, struct list* seen) {
    for (int i = 0; i < seen->len; i++) if (*(struct semaModule**)ListGetIdx(seen, i) == mod) return;
    ListAdd(seen, &mod);
    for (int i = 0; i < mod->imports.len; i++) collectCompiledAgainst(((struct semaImport*)ListGetIdx(&mod->imports, i))->mod, seen);
}

static int cmpCStrPtr(const void* a, const void* b) { return strcmp(*(char* const*)a, *(char* const*)b); }

//B3/M22a: what makes an object the object it is, beyond its readable name - the identity and the real source path of
//every module it is compiled against (its own and its imports', transitively, and the prelude's), hashed. Two modules
//whose readable names coincide ("geom/rect" and "geom_rect", or two roots named main.olang outside the working
//directory) therefore have different objects; and so does one module compiled against different files - a remote
//import locked to another commit (whose checkout is another directory, M23a), or another standard library - so an
//object built against one is never taken for one built against the other, whatever the files' times say.
static char* objectHash(struct semaModule* mod) {
    struct list seen = ListInit(sizeof(struct semaModule*));
    collectCompiledAgainst(mod, &seen);
    struct list* prelude = SemanticPreludeModules();
    for (int i = 0; i < prelude->len; i++) collectCompiledAgainst(*(struct semaModule**)ListGetIdx(prelude, i), &seen);
    char** keys = MallocOrCrash(sizeof(char*) * (size_t)(seen.len + 1));
    for (int i = 0; i < seen.len; i++) {
        struct semaModule* m = *(struct semaModule**)ListGetIdx(&seen, i);
        keys[i] = StrFmt("%.*s\1%.*s", m->identity.len, m->identity.ptr, m->canonical.len, m->canonical.ptr);
    }
    qsort(keys, (size_t)seen.len, sizeof(char*), cmpCStrPtr);
    //FNV-1a over the module's own identity first, then every key in order, each ended by a byte no path holds
    unsigned long long h = 14695981039346656037ULL;
    char* self = StrFmt("%.*s\1%.*s", mod->identity.len, mod->identity.ptr, mod->canonical.len, mod->canonical.ptr);
    for (int i = -1; i < seen.len; i++) {
        char* k = i < 0 ? self : keys[i];
        for (char* c = k; *c; c++) h = (h ^ (unsigned char)*c) * 1099511628211ULL;
        h = (h ^ 0xFFu) * 1099511628211ULL;
        free(k);
    }
    free(keys);
    ListDestroy(seen);
    return StrFmt("%016llx", h);
}

void requireClangOrExplain(char* clang, char* irPath) {
    if (clang) return;
    printf(COLOR_FG_YELLOW "clang not found on PATH - install the LLVM toolchain to produce a native binary:\n"
        "  sudo apt install -y clang-20 llvm-20 llvm-20-dev\n" COLOR_RESET);
    printf("LLVM IR was written to %s\n", irPath);
    exit(EXIT_FAILURE);
}

//true when `objPath` is older than `srcPath` (or missing) - B3's own staleness test, applied to one file.
//Compared at nanosecond resolution (st_mtim, not st_mtime): a whole-second comparison silently treats an
//object as current when the source was edited in the same second as the last build, which is exactly what
//a fast edit-build loop does.
bool olderThan(char* objPath, char* srcPath) {
    struct stat o, s;
    if (stat(objPath, &o) != 0) return true;
    if (stat(srcPath, &s) != 0) return true;
    if (o.st_mtim.tv_sec != s.st_mtim.tv_sec) return o.st_mtim.tv_sec < s.st_mtim.tv_sec;
    return o.st_mtim.tv_nsec < s.st_mtim.tv_nsec;
}

//B3: an object depends on the signatures it was compiled against, so it is stale when its own source OR
//any source it transitively IMPORTS is newer than it. Walks the real import graph rather than the whole
//program - comparing against every module would be safe but would rebuild the world whenever any leaf
//changed, which is the entire thing separate compilation exists to avoid. `seen` carries the visited set,
//since imports may legitimately form a cycle (§4.6).
bool anyImportNewer(struct semaModule* mod, char* objPath, struct list* seen) {
    for (int i = 0; i < seen->len; i++) {
        if (*(struct semaModule**)ListGetIdx(seen, i) == mod) return false;
    }
    ListAdd(seen, &mod);
    //a module is one file (M1); the build constants' module has none
    for (int f = 0; f < mod->files.len; f++) {
        if (olderThan(objPath, *(char**)ListGetIdx(&mod->files, f))) return true;
    }
    for (int i = 0; i < mod->imports.len; i++) {
        struct semaImport* imp = ListGetIdx(&mod->imports, i);
        if (anyImportNewer(imp->mod, objPath, seen)) return true;
    }
    return false;
}

//an object is also stale when the COMPILER that produced it is newer than it. Nothing else records which
//compiler an object came from, so without this a rebuilt compiler leaves every existing object looking
//current and a changed code generator is simply not applied - the object is reused, the new IR never runs,
//and a fix appears not to work. That has cost real debugging time twice in this project, once mistaken for
//compiler memory corruption because the same program passed or failed depending on an unrelated source
//edit that happened to force one file's rebuild and not another's.
//"/proc/self/exe" resolves to this binary whatever PATH lookup or symlink was used to reach it, which
//argv[0] does not. If it cannot be read - a platform without /proc - the check simply does not fire, which
//is exactly the behaviour that existed before.
bool compilerNewerThan(char* objPath) {
    struct stat o, c;
    if (stat(objPath, &o) != 0) return true;
    if (stat("/proc/self/exe", &c) != 0) return false;
    if (o.st_mtim.tv_sec != c.st_mtim.tv_sec) return o.st_mtim.tv_sec < c.st_mtim.tv_sec;
    return o.st_mtim.tv_nsec < c.st_mtim.tv_nsec;
}

//the prelude counts as imported by every module (M19d): an object holds the instantiations of the prelude's
//generics it uses (B3d) and calls its methods by their signatures, so a prelude file edited since the object was
//built makes it stale - without this a program kept running the List it was first built with
bool moduleIsStale(struct semaModule* mod, char* objPath) {
    if (mod->files.len == 0) return true; //the build constants' module (B10) has no source to compare against
    if (compilerNewerThan(objPath)) return true;
    struct list seen = ListInit(sizeof(struct semaModule*));
    if (anyImportNewer(mod, objPath, &seen)) return true;
    struct list* prelude = SemanticPreludeModules();
    for (int i = 0; i < prelude->len; i++) {
        if (anyImportNewer(*(struct semaModule**)ListGetIdx(prelude, i), objPath, &seen)) return true;
    }
    return false;
}

//B10b: the -D names mentioned anywhere in mod's import closure
static void collectBuildRefs(struct semaModule* mod, struct list* seen, struct list* out) {
    for (int i = 0; i < seen->len; i++) if (*(struct semaModule**)ListGetIdx(seen, i) == mod) return;
    ListAdd(seen, &mod);
    for (int i = 0; i < mod->buildRefs.len; i++) {
        struct str n = *(struct str*)ListGetIdx(&mod->buildRefs, i);
        bool have = false;
        for (int k = 0; k < out->len; k++) have = have || StrCmp(*(struct str*)ListGetIdx(out, k), n);
        if (!have) ListAdd(out, &n);
    }
    for (int i = 0; i < mod->imports.len; i++) collectBuildRefs(((struct semaImport*)ListGetIdx(&mod->imports, i))->mod, seen, out);
}

//compiles one module to build/<base>.o, skipping the work when the object is already up to date.
//Returns the object path.
char* emitModuleObject(struct semaModule* mod, char* clang, enum cgEntry entry) {
    char* base = moduleObjectBase(mod);
    //a root module's object carries "main" (or the test harness) on top of its own code, so it is a
    //DIFFERENT artifact from the same module's plain object and gets its own name. Without that the two
    //would overwrite each other, and a plain object left by "-c" would look current to "-b" while
    //missing main entirely - which is why this used to force the root to rebuild every time.
    //an instrumented object is a different artifact again, for the same reason, so it gets its own name -
    //otherwise a "-r" build silently reuses a clean object and the detector never sees that code
    //a debug object is a different artifact from an optimized one, exactly as a -r object is: without
    //its own name a "-d" build silently reuses optimized objects and produces no debug info at all,
    //with no diagnostic - the same staleness trap B4 records for .main.o/.test.o
    //B10b: what the -D constants say is part of what an object IS - a top-level condition may take a
    //different branch, and compile-time evaluation may bake a value into data - so an object is named by
    //the values of exactly the -D names its import closure mentions. Changing a value rebuilds the modules
    //that depend on it and nothing else; changing it back finds the old objects current again.
    struct list refs = ListInit(sizeof(struct str));
    struct list seen = ListInit(sizeof(struct semaModule*));
    collectBuildRefs(mod, &seen, &refs);
    char cfg[16] = "";
    unsigned h = 2166136261u;
    int userDefs = 0;
    struct list* bcs = SyntaxBuildConsts();
    for (int i = 0; i < bcs->len; i++) {
        struct buildConst* b = ListGetIdx(bcs, i);
        if (b->builtin) continue;
        bool used = false;
        for (int k = 0; k < refs.len; k++) used = used || StrCmp(*(struct str*)ListGetIdx(&refs, k), b->name);
        if (!used) continue;
        userDefs++;
        for (int k = 0; k < b->name.len; k++) h = (h ^ (unsigned char)b->name.ptr[k]) * 16777619u;
        h = (h ^ '=') * 16777619u;
        struct str v = b->kind == BUILD_BOOL ? StrFromCStr(b->i ? "true" : "false") : b->text;
        for (int k = 0; k < v.len; k++) h = (h ^ (unsigned char)v.ptr[k]) * 16777619u;
        h = (h ^ (unsigned)b->kind ^ ';') * 16777619u;
    }
    if (userDefs) snprintf(cfg, sizeof(cfg), ".d%08x", h);
    char* suffix = StrFmt("%s%s%s%s", cfg,
             entry == CG_ENTRY_MAIN ? ".main"
                 : entry == CG_ENTRY_TESTS ? ".test"     //the root, carrying the harness
                 : gTestBuild ? ".tmod"                  //a plain module built WITH the unwind chain
                 : "",
             gRace ? ".race" : "", gDebug ? ".debug" : "");
    //the IR is an intermediate, written afresh just before each compile, so it keeps the readable name alone
    char* irPath = StrFmt("build/%s%s.ll", base, suffix);
    char* objPath = StrFmt("build/%s.%s%s.o", base, objectHash(mod), suffix);
    if (!moduleIsStale(mod, objPath)) return objPath;

    CodegenModule(mod, irPath, entry, gRace, gTestBuild, gDebug);
    requireClangOrExplain(clang, irPath);
    struct list args = ListInit(sizeof(char*));
    argAdd(&args, clang);
    addModeFlags(&args);
    argAdd(&args, "-c");
    argAdd(&args, "-o");
    argAdd(&args, objPath);
    argAdd(&args, irPath);
    if (RunProgram(argEnd(&args), false) != 0) ErrMsgFatal(StrFmt("native compilation failed for %s", irPath));
    ListDestroy(args);
    return objPath;
}

//links objs (char*) into binPath - the argument list is built, never a command line, so nothing is cut short however
//many objects there are or however long their names
static int linkProgram(char* clang, struct list* objs, char* binPath) {
    struct list args = ListInit(sizeof(char*));
    argAdd(&args, clang);
    addModeFlags(&args);
    argAdd(&args, "-o");
    argAdd(&args, binPath);
    for (int i = 0; i < objs->len; i++) argAdd(&args, *(char**)ListGetIdx(objs, i));
    argAdd(&args, "-lm");
    argAdd(&args, "-lpthread");
    int rc = RunProgram(argEnd(&args), false);
    ListDestroy(args);
    return rc;
}

//"-c": one module to one object, nothing linked (B2)
void compileModule(char* file) {
    struct semaModule* root = SemanticAnalyzeFile(file, false);
    CodegenCheckModuleNames();
    CodegenSetRoot(root);
    if (ErrMsgGetNErrors() > 0) ErrMsgFinishCompilation();
    ensureBuildDir();
    char* clang = findClang();
    char* objPath = emitModuleObject(root, clang, CG_ENTRY_NONE);
    printf(COLOR_FG_GREEN "built %s\n" COLOR_RESET, objPath);
}

//"-b": every reachable module to its own object, then one link (B1/B3)
void buildProgram(char* file) {
    struct semaModule* root = SemanticAnalyzeFile(file, true);
    CodegenCheckModuleNames();
    CodegenSetRoot(root);
    if (ErrMsgGetNErrors() > 0) ErrMsgFinishCompilation();

    ensureBuildDir();
    char* clang = findClang();
    struct list objs = ListInit(sizeof(char*));
    struct list* all = SemanticAllModules();
    for (int i = 0; i < all->len; i++) {
        struct semaModule* mod = *(struct semaModule**)ListGetIdx(all, i);
        char* objPath = emitModuleObject(mod, clang, mod == root ? CG_ENTRY_MAIN : CG_ENTRY_NONE);
        ListAdd(&objs, &objPath);
    }

    char* binPath = StrFmt("build/%s%s%s", moduleObjectBase(root), gRace ? ".race" : "", gDebug ? ".debug" : "");
    if (linkProgram(clang, &objs, binPath) != 0) ErrMsgFatal(StrFmt("linking %s failed", binPath));
    printf(COLOR_FG_GREEN "built ./%s\n" COLOR_RESET, binPath);
}

//"-i": the program analyzed as -b analyzes it, then run by compile-time evaluation instead of built (B3e) -
//nothing generated, linked or written. Returns the program's exit status. argv (argc of them) is the program's own
//command line, the file first (B3f).
int interpretProgram(char* file, int argc, char** argv) {
    struct semaModule* root = SemanticAnalyzeFile(file, true);
    CodegenCheckModuleNames();
    if (ErrMsgGetNErrors() > 0) ErrMsgFinishCompilation();
    struct var* mainFunc = NULL;
    for (int i = 0; i < root->vars.len && !mainFunc; i++) {
        struct var* v = ListGetIdx(&root->vars, i);
        if (v->isFuncDecl && StrCmp(v->name, StrFromCStr("main"))) mainFunc = v;
    }
    if (!mainFunc) ErrMsgFatal(MAIN_FUNC_NOT_FOUND);
    fflush(NULL);
    ErrMsgSetInterpreting(true);
    return CtRunProgram(mainFunc, argc, argv);
}

//returns 0 if this file's tests all passed, nonzero otherwise. A failure it can report - semantic errors, a failed
//build or link, a failed test - it reports and returns; one it cannot (a fatal error, a crash) ends the process it runs
//in, which under -t is a child of its own (runTestFileApart), so the rest of the list still runs either way
static int runTestFile(char* file, char* clang) {
    //B3a: a listed file that is no file to build is reported, and the others still run
    struct stat st;
    char* unusable = stat(file, &st) != 0 ? "unable to open this file"
                   : S_ISDIR(st.st_mode) ? "a module is a file, never a directory (M1) - name the .olang file"
                   : !S_ISREG(st.st_mode) ? NOT_A_REGULAR_FILE : NULL;
    if (unusable) {
        ErrMsgFile(StrFromCStr(file), unusable);
        ErrMsgFlush();
        printf(COLOR_FG_RED "%s: cannot be built, skipping\n" COLOR_RESET, file);
        return 1;
    }
    int before = ErrMsgGetNErrors();
    struct semaModule* root = SemanticAnalyzeFile(file, false);
    CodegenCheckModuleNames();
    CodegenSetRoot(root);
    if (ErrMsgGetNErrors() > before) {
        ErrMsgFlush();
        printf(COLOR_FG_RED "%s: semantic errors, skipping\n" COLOR_RESET, file);
        return 1;
    }

    ensureBuildDir();
    requireClangOrExplain(clang, "build");
    char* binPath = StrFmt("build/%s_test%s%s", moduleObjectBase(root), gRace ? ".race" : "", gDebug ? ".debug" : "");

    //one object per module, exactly as under -b; only the root differs, carrying the test harness
    //instead of main - and it is a distinct artifact from that module's plain object, so both can be
    //current at once and neither forces the other to rebuild
    struct list objs = ListInit(sizeof(char*));
    struct list* all = SemanticAllModules();
    for (int i = 0; i < all->len; i++) {
        struct semaModule* mod = *(struct semaModule**)ListGetIdx(all, i);
        char* objPath = emitModuleObject(mod, clang, mod == root ? CG_ENTRY_TESTS : CG_ENTRY_NONE);
        ListAdd(&objs, &objPath);
    }
    if (linkProgram(clang, &objs, binPath) != 0) {
        printf(COLOR_FG_RED "%s: native compilation failed\n" COLOR_RESET, file);
        return 1;
    }

    printf(COLOR_FG_CYAN "== %s ==\n" COLOR_RESET, file);
    char* run[] = { StrFmt("./%s", binPath), NULL };
    int runRc = RunProgram(run, false);
    return runRc == 0 ? 0 : 1;
}

//B3a: one listed file's build and test run, in a process of its own, forked from this one once the arguments are
//read. A build frees nothing - the program analyzed, every attempt at it (B9c), its instantiations, the evaluator's
//values - so one process building every listed file in turn held them all at once: the suite's compiler peaked at
//11.1GiB where its largest file alone needs 3.0GiB. A child's memory goes back to the system when it exits. It also
//makes each file's build independent in the one way it was not: the compiler ending on one file - a fatal error, or a
//crash - ends that child, and the rest still run. The children run one after another, not side by side: what each
//writes appears in the order the files were listed with nothing held back, two files importing one module never build
//its object at once, and the suite needs the memory of its largest file, where memory is what bounds how much work a
//machine can do at once.
//Returns 0 if this file's tests all passed, nonzero otherwise.
static int runTestFileApart(char* file, char* clang) {
    fflush(NULL); //what this process has written is not written again by the child
    pid_t pid = fork();
    if (pid < 0) return runTestFile(file, clang); //no process to spare: built in this one, as before
    if (pid == 0) exit(runTestFile(file, clang));
    int st;
    while (waitpid(pid, &st, 0) < 0) {
        if (errno == EINTR) continue;
        printf(COLOR_FG_RED "%s: lost track of its build, skipping\n" COLOR_RESET, file);
        return 1;
    }
    if (WIFEXITED(st)) return WEXITSTATUS(st) != 0;
    //a crash has said so already (ErrMsgInstallCrashHandler); a process killed from outside - by the system, out of
    //memory - has not
    printf(COLOR_FG_RED "%s: the compiler ended (%s), skipping\n" COLOR_RESET, file,
           WIFSIGNALED(st) ? strsignal(WTERMSIG(st)) : "unknown status");
    return 1;
}

//B10: "-D Name=value" (or "-DName=value") - one build constant
static void defineFromArg(char* arg) {
    char* eq = strchr(arg, '=');
    if (!eq) ErrMsgFatal(StrFmt("-D takes Name=value, got '%s' (B10)", arg));
    *eq = '\0';
    char* err = SyntaxDefineBuildConst(arg, eq + 1, false);
    if (err) ErrMsgFatal(StrFmt("-D %s=%s: %s (B10)", arg, eq + 1, err));
}

//B10a: the constants every build defines. The target is the host, since olang does not cross-compile yet.
static void defineBuiltinConsts(bool testBuild) {
    struct utsname u;
    char os[400] = "unknown", arch[400] = "unknown";
    if (uname(&u) == 0) {
        snprintf(os, sizeof(os), "%s", u.sysname);
        snprintf(arch, sizeof(arch), "%s", u.machine);
        for (char* c = os; *c; c++) *c = (char)tolower((unsigned char)*c);
    }
    //quoted, so a value that happens to look like a number is still text
    char q[420];
    snprintf(q, sizeof(q), "\"%s\"", os);
    SyntaxDefineBuildConst("TargetOs", q, true);
    snprintf(q, sizeof(q), "\"%s\"", arch);
    SyntaxDefineBuildConst("TargetArch", q, true);
    SyntaxDefineBuildConst("DebugBuild", gDebug ? "true" : "false", true);
    SyntaxDefineBuildConst("RaceBuild", gRace ? "true" : "false", true);
    SyntaxDefineBuildConst("TestBuild", testBuild ? "true" : "false", true);
}

static int compilerMain(int argc, char** argv);

//every pass recurses over the program's nesting - a parenthesis, a block, one link of a long "a + b + ..." chain is a
//few frames each - so the compiler runs on a thread whose stack is sized for that, reserved and touched only as it is
//used. The parser bounds the nesting it accepts (MAX_NESTING) well inside it, with a diagnostic, never a crash.
#define COMPILER_STACK ((size_t)1 << 30)
struct compilerJob { int argc; char** argv; int status; };
static void* compilerThread(void* p) {
    ErrMsgInstallCrashHandler();
    struct compilerJob* j = p;
    j->status = compilerMain(j->argc, j->argv);
    return NULL;
}

int main(int argc, char** argv) {
    struct compilerJob job = { argc, argv, 1 };
    pthread_attr_t attr;
    pthread_t t;
    pthread_attr_init(&attr);
    pthread_attr_setstacksize(&attr, COMPILER_STACK);
    if (pthread_create(&t, &attr, compilerThread, &job) != 0) compilerThread(&job);
    else pthread_join(t, NULL);
    pthread_attr_destroy(&attr);
    return job.status;
}

static int compilerMain(int argc, char** argv) {
    //"-r", "-d", "-u" and "-D" are modifiers, valid alongside any mode and in any position, so they are
    //stripped out before the mode dispatch below reads argv positionally - up to the file "-i" interprets: what
    //follows it is that program's command line (B3f), passed on as written, flags included
    int outp = 1;
    for (int i = 1; i < argc; i++) {
        if (outp >= 3 && !strcmp(argv[1], "-i")) { argv[outp++] = argv[i]; continue; }
        if (!strcmp(argv[i], "-r")) { gRace = true; continue; }
        //M23c: the remote repositories this build reaches move to their refs' current commits, and olang.lock with them
        if (!strcmp(argv[i], "-u")) { SemanticSetUpdate(true); continue; }
        if (!strcmp(argv[i], "-d")) { gDebug = true; continue; }
        if (!strcmp(argv[i], "-D")) {
            if (i + 1 >= argc) ErrMsgFatal("-D takes Name=value (B10)");
            defineFromArg(argv[++i]);
            continue;
        }
        if (!strncmp(argv[i], "-D", 2)) { defineFromArg(argv[i] + 2); continue; }
        //B1: every flag is one character; anything else beginning with "-" is a mistake, not a file name
        if (argv[i][0] == '-' && strcmp(argv[i], "-b") && strcmp(argv[i], "-c") && strcmp(argv[i], "-t")
            && strcmp(argv[i], "-i")) {
            ErrMsgFatal(StrFmt("%s: " UNKNOWN_FLAG, argv[i]));
        }
        argv[outp++] = argv[i];
    }
    argc = outp;

    if (argc < 2) ErrMsgFatal(NO_FILE_SPECIFIED);
    //user constants were defined above; a built-in name given with -D is a clash, reported here
    defineBuiltinConsts(!strcmp(argv[1], "-t"));
    struct list* bcs = SyntaxBuildConsts();
    int builtins = 0;
    for (int i = 0; i < bcs->len; i++) builtins += ((struct buildConst*)ListGetIdx(bcs, i))->builtin;
    if (builtins != 5) ErrMsgFatal("-D may not redefine a built-in constant (B10a)");

    if (!strcmp(argv[1], "-c")) {
        if (argc != 3) ErrMsgFatal(EXPECTED_ONE_COMPILE_FILE);
        compileModule(argv[2]);
        return 0;
    }

    if (!strcmp(argv[1], "-b")) {
        if (argc != 3) ErrMsgFatal(EXPECTED_ONE_COMPILE_FILE);
        buildProgram(argv[2]);
        return 0;
    }

    if (!strcmp(argv[1], "-i")) {
        if (argc < 3) ErrMsgFatal(EXPECTED_ONE_COMPILE_FILE);
        return interpretProgram(argv[2], argc - 2, argv + 2);
    }

    if (!strcmp(argv[1], "-t")) {
        if (argc < 3) ErrMsgFatal(EXPECTED_AT_LEAST_ONE_TEST_FILE);
        gTestBuild = true;
        char* clang = findClang();
        int anyFailed = 0;
        for (int i = 2; i < argc; i++) {
            if (runTestFileApart(argv[i], clang) != 0) anyFailed = 1;
        }
        return anyFailed;
    }

    ErrMsgFatal(EXPECTED_C_OR_T_FLAG);
    return 1;
}
