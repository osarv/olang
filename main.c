#include <stdlib.h>
#include <stdio.h>
#include <string.h>
#include <sys/stat.h>
#include <sys/wait.h>
#include <sys/utsname.h>
#include <ctype.h>
#include "syntax.h"
#include "semantic.h"
#include "codegen.h"
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

//the optimization and debug flags for the current mode, shared by the compile and link steps so the two
//can never disagree - linking -O3 objects with -O0 ones is not an error, merely silently not what was
//asked for.
static const char* modeFlags(void) {
    if (gDebug && gRace) return "-O0 -g -fsanitize=thread";
    if (gDebug) return "-O0 -g";
    //-O1 under -r: TSan reports name the function a race is in, and -O3 inlines enough of the small
    //accessors that the name is regularly the caller's rather than the culprit's
    if (gRace) return "-O1 -fsanitize=thread";
    //B2d: "-flto" puts the optimizer over the whole program at the link, so a cross-module call inlines
    //like a same-module one. Not thin LTO: measured indistinguishable at run time here and slower to
    //build, since its parallel machinery has a fixed cost and a handful of modules has nothing to
    //parallelize. Left out of -r above for the same reason that path is -O1.
    return "-O3 -flto";
}

char* findClang() {
    if (system("which clang-20 > /dev/null 2>&1") == 0) return "clang-20";
    if (system("which clang > /dev/null 2>&1") == 0) return "clang";
    return NULL;
}

void ensureBuildDir() {
    (void)mkdir("build", 0755); //already existing is fine
}

//M22a: an object is named after its module's identity, sanitized as a symbol prefix is - so "std/list" is
//build/std_list.o and cannot overwrite a local list.olang's build/list.o
char* moduleObjectBase(struct semaModule* mod) {
    char* out = MallocOrCrash((size_t)mod->identity.len + 1);
    for (int i = 0; i < mod->identity.len; i++) {
        char c = mod->identity.ptr[i];
        out[i] = ((c >= 'a' && c <= 'z') || (c >= 'A' && c <= 'Z') || (c >= '0' && c <= '9') || c == '_' || c == '-') ? c : '_';
    }
    out[mod->identity.len] = '\0';
    return out;
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

bool moduleIsStale(struct semaModule* mod, char* objPath) {
    if (mod->files.len == 0) return true; //the build constants' module (B10) has no source to compare against
    if (compilerNewerThan(objPath)) return true;
    struct list seen = ListInit(sizeof(struct semaModule*));
    return anyImportNewer(mod, objPath, &seen);
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
    char* irPath = MallocOrCrash(512);
    char* objPath = MallocOrCrash(512);
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
    char suffix[64];
    snprintf(suffix, sizeof(suffix), "%s%s%s%s", cfg,
             entry == CG_ENTRY_MAIN ? ".main"
                 : entry == CG_ENTRY_TESTS ? ".test"     //the root, carrying the harness
                 : gTestBuild ? ".tmod"                  //a plain module built WITH the unwind chain
                 : "",
             gRace ? ".race" : "", gDebug ? ".debug" : "");
    snprintf(irPath, 512, "build/%s%s.ll", base, suffix);
    snprintf(objPath, 512, "build/%s%s.o", base, suffix);
    if (!moduleIsStale(mod, objPath)) return objPath;

    CodegenModule(mod, irPath, entry, gRace, gTestBuild, gDebug);
    requireClangOrExplain(clang, irPath);
    char cmd[2048];
    snprintf(cmd, sizeof(cmd), "%s %s -c -o %s %s", clang, modeFlags(), objPath, irPath);
    if (system(cmd) != 0) { fprintf(stderr, "native compilation failed for %s\n", irPath); exit(EXIT_FAILURE); }
    return objPath;
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
    char objs[8192] = "";
    struct list* all = SemanticAllModules();
    for (int i = 0; i < all->len; i++) {
        struct semaModule* mod = *(struct semaModule**)ListGetIdx(all, i);
        char* objPath = emitModuleObject(mod, clang, mod == root ? CG_ENTRY_MAIN : CG_ENTRY_NONE);
        strncat(objs, " ", sizeof(objs) - strlen(objs) -1);
        strncat(objs, objPath, sizeof(objs) - strlen(objs) -1);
    }

    char* base = moduleObjectBase(root);
    char binPath[512];
    snprintf(binPath, sizeof(binPath), "build/%s%s%s", base, gRace ? ".race" : "", gDebug ? ".debug" : "");
    char cmd[16384];
    snprintf(cmd, sizeof(cmd), "%s %s -o %s%s -lm -lpthread", clang, modeFlags(), binPath, objs);
    if (system(cmd) != 0) { fprintf(stderr, "link failed\n"); exit(EXIT_FAILURE); }
    printf(COLOR_FG_GREEN "built ./%s\n" COLOR_RESET, binPath);
}

//returns 0 if this file's tests all passed, nonzero otherwise - never exits the process, so the rest of
//an -t file list still runs even if this one has semantic errors, fails to build, or fails a test
int runTestFile(char* file, char* clang) {
    int before = ErrMsgGetNErrors();
    struct semaModule* root = SemanticAnalyzeFile(file, false);
    CodegenCheckModuleNames();
    CodegenSetRoot(root);
    if (ErrMsgGetNErrors() > before) {
        printf(COLOR_FG_RED "%s: semantic errors, skipping\n" COLOR_RESET, file);
        return 1;
    }

    ensureBuildDir();
    requireClangOrExplain(clang, "build");
    char* base = moduleObjectBase(root);
    char binPath[512];
    snprintf(binPath, sizeof(binPath), "build/%s_test%s%s", base, gRace ? ".race" : "", gDebug ? ".debug" : "");

    //one object per module, exactly as under -b; only the root differs, carrying the test harness
    //instead of main - and it is a distinct artifact from that module's plain object, so both can be
    //current at once and neither forces the other to rebuild
    char objs[8192] = "";
    struct list* all = SemanticAllModules();
    for (int i = 0; i < all->len; i++) {
        struct semaModule* mod = *(struct semaModule**)ListGetIdx(all, i);
        char* objPath = emitModuleObject(mod, clang, mod == root ? CG_ENTRY_TESTS : CG_ENTRY_NONE);
        strncat(objs, " ", sizeof(objs) - strlen(objs) -1);
        strncat(objs, objPath, sizeof(objs) - strlen(objs) -1);
    }
    char cmd[16384];
    snprintf(cmd, sizeof(cmd), "%s %s -o %s%s -lm -lpthread", clang, modeFlags(), binPath, objs);
    int rc = system(cmd);
    if (rc != 0) {
        printf(COLOR_FG_RED "%s: native compilation failed\n" COLOR_RESET, file);
        return 1;
    }

    printf(COLOR_FG_CYAN "== %s ==\n" COLOR_RESET, file);
    fflush(stdout);
    char runCmd[600];
    snprintf(runCmd, sizeof(runCmd), "./%s", binPath);
    int runRc = system(runCmd);
    if (runRc == -1) return 1;
    return WIFEXITED(runRc) ? WEXITSTATUS(runRc) : 1;
}

//B10: "-D Name=value" (or "-DName=value") - one build constant
static void defineFromArg(char* arg) {
    char* eq = strchr(arg, '=');
    if (!eq) { fprintf(stderr, "olang: -D takes Name=value, got '%s'\n", arg); exit(EXIT_FAILURE); }
    *eq = '\0';
    if (!SyntaxDefineBuildConst(arg, eq + 1, false)) {
        fprintf(stderr, "olang: -D %s: not an identifier, or defined twice (B10)\n", arg);
        exit(EXIT_FAILURE);
    }
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

int main(int argc, char** argv) {
    //"-r", "-d", "-u" and "-D" are modifiers, valid alongside any mode and in any position, so they are
    //stripped out before the mode dispatch below reads argv positionally
    int outp = 1;
    for (int i = 1; i < argc; i++) {
        if (!strcmp(argv[i], "-r")) { gRace = true; continue; }
        //M23c: the remote repositories this build reaches move to their refs' current commits, and olang.lock with them
        if (!strcmp(argv[i], "-u")) { SemanticSetUpdate(true); continue; }
        if (!strcmp(argv[i], "-d")) { gDebug = true; continue; }
        if (!strcmp(argv[i], "-D")) {
            if (i + 1 >= argc) { fprintf(stderr, "olang: -D takes Name=value\n"); return EXIT_FAILURE; }
            defineFromArg(argv[++i]);
            continue;
        }
        if (!strncmp(argv[i], "-D", 2)) { defineFromArg(argv[i] + 2); continue; }
        //B1: every flag is one character; anything else beginning with "-" is a mistake, not a file name
        if (argv[i][0] == '-' && strcmp(argv[i], "-b") && strcmp(argv[i], "-c") && strcmp(argv[i], "-t")) {
            fprintf(stderr, "olang: %s: ", argv[i]);
            ErrMsgFatal(UNKNOWN_FLAG);
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
    if (builtins != 5) { fprintf(stderr, "olang: -D may not redefine a built-in constant (B10a)\n"); return EXIT_FAILURE; }

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

    if (!strcmp(argv[1], "-t")) {
        if (argc < 3) ErrMsgFatal(EXPECTED_AT_LEAST_ONE_TEST_FILE);
        gTestBuild = true;
        char* clang = findClang();
        int anyFailed = 0;
        for (int i = 2; i < argc; i++) {
            if (runTestFile(argv[i], clang) != 0) anyFailed = 1;
        }
        return anyFailed;
    }

    ErrMsgFatal(EXPECTED_C_OR_T_FLAG);
    return 1;
}
