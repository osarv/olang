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
#include <dirent.h>
#include <fcntl.h>
#include <limits.h>
#include <sys/file.h>
#include "syntax.h"
#include "semantic.h"
#include "codegen.h"
#include "comptime.h"
#include "util.h"
#include "errmsg.h"
#include "runtime.h"

//P7: "-r" builds everything under ThreadSanitizer. It is a whole-build mode rather than a per-file
//one: the runtime's object and every module's are built under it together, the runtime's own allocator and workers
//instrumented as the program is, and a module's object for -r is a different artifact from its plain one.
static bool gRace = false;
//S18b/P1d: only a test binary can longjmp, so only a test build carries the open-scope chain. That makes
//a module's test-build object a different artifact from its plain one, exactly as -r does.
static bool gTestBuild = false;
//B2c: "-d" is the one mode that turns backend optimization OFF. Everything else is built at full
//optimization deliberately - the language's own line is that you get what the machine can do unless you
//asked otherwise, so this is the exception rather than one end of a spectrum of levels.
static bool gDebug = false;
//B2f: "-s" builds with the scope sanitizer - storage a closed scope gave back is poisoned, protected and quarantined, so
//a use after its scope closed is reported where it happens. A whole-build mode for the reason -r is one: it changes the
//runtime every program links (std/runtime/san.ll)
static bool gScopeSan = false;

//B12: the machine a build is for - what "-a" names, resolved once, before anything is analyzed. Every generated function
//carries its CPU and features (attrs) - which is what reaches the code generator at the link, under LTO, as well as
//at the compile - and an object's name carries all of it (B12b), so a build for one machine never reuses another's.
struct target {
    char* spec;       //as written after -a; "native" when no -a was given
    char* triple;     //LLVM's, as clang normalizes it: "x86_64-pc-linux-gnu"
    char* arch;       //TargetArch: the triple's architecture
    char* os;         //TargetOs
    char* cpu;        //TargetCpu: the CPU clang resolved the spec to ("native" becomes this machine's)
    char* attrs;      //the attributes every generated function carries: CPU, features, vector width
    char* cpuFlag;    //how clang is told the CPU at the compile and the link: "-march=X" or "-mcpu=X"
    int vectorBits;   //TargetVectorBits
    bool fma;         //TargetHasFma
    bool foreign;     //another architecture or operating system than this machine's: -c only (B12a)
};
static struct target gTarget;
static char* gTargetSpec = "native";
//B3h: -output's path - the executable build writes, or where compile copies its object - or NULL
static char* gOutput = NULL;
static int copyFile(const char* from, const char* to);

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
    //B12: the target, as clang names it - for a foreign one its triple, and its CPU either way, which is what reaches
    //the link-time code generator for anything not carrying the attributes every generated function carries
    if (gTarget.foreign) argAdd(args, StrFmt("--target=%s", gTarget.triple));
    if (gTarget.cpuFlag) argAdd(args, gTarget.cpuFlag);
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
    //FNV-1a over the module's own identity first, then every key in order, each ended by a byte no path holds - and
    //last the machine it is built for (B12b), so an object for one CPU is never taken for another's
    unsigned long long h = 14695981039346656037ULL;
    char* self = StrFmt("%.*s\1%.*s", mod->identity.len, mod->identity.ptr, mod->canonical.len, mod->canonical.ptr);
    for (char* c = gTarget.triple; c && *c; c++) h = (h ^ (unsigned char)*c) * 1099511628211ULL;
    for (char* c = gTarget.attrs; c && *c; c++) h = (h ^ (unsigned char)*c) * 1099511628211ULL;
    //and the runtime it is compiled against: an object holds the runtime's types, declarations and the bodies it
    //inlines (std/runtime/*.ll, filled in for this build), so an edit there gives every object a new name
    static unsigned long long runtimeHash;
    if (!runtimeHash) {
        runtimeHash = 14695981039346656037ULL;
        for (int part = 0; part < 2; part++) {
            for (char* c = RuntimeText(gTarget.arch, gScopeSan, part == 1); *c; c++)
                runtimeHash = (runtimeHash ^ (unsigned char)*c) * 1099511628211ULL;
        }
    }
    h = (h ^ runtimeHash) * 1099511628211ULL;
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
    ErrFatal((struct str){0}, ERR_NO_CLANG, irPath);
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

//the flags an object is compiled with, beyond the mode's: B2c - LLVM 18's -O0 instruction selector (FastISel) keeps a
//"bfloat" live across a branch wrongly - a BF16 value computed before a conditional or a match and used after it read
//back as another number under -d (found by the differential fuzzer, fuzz/repro/bf16fastisel.ll) - so -d selects
//instructions as the optimizing path does
static void addCompileFlags(struct list* args) {
    addModeFlags(args);
    if (gDebug) { argAdd(args, "-mllvm"); argAdd(args, "-fast-isel=false"); }
}

//B3, compiler/DESIGN.md section 1.10: the runtime's object for this build - its own part, or with dyncall the dynamic
//call's (S3) - compiled from std/runtime and linked once into each program, where every module's object used to carry
//all of it. It is named by what it is made from: a hash of its filled-in IR (the files, the target's facts and
//attributes, -s and -r all show there) and of the flags it is compiled with (-d's among them). So a change to any of
//those gives another object, and the same configuration finds the one it made before - in a later build, another
//program, the next -t child - with no staleness to judge, B3's or B7's. The mode is in the name too, for a reader. It is
//compiled under a name of its own process's and renamed into place, so builds side by side never read half of one.
static char* runtimeObject(char* clang, bool dyncall) {
    char* ir;
    size_t irLen;
    FILE* f = open_memstream(&ir, &irLen);
    if (!f) ErrorBugFound();
    CodegenRuntime(f, dyncall, gRace);
    fclose(f);
    struct list args = ListInit(sizeof(char*));
    argAdd(&args, clang);
    addCompileFlags(&args);
    unsigned long long h = 14695981039346656037ULL;
    for (size_t i = 0; i < irLen; i++) h = (h ^ (unsigned char)ir[i]) * 1099511628211ULL;
    for (int i = 1; i < args.len; i++) {
        for (char* c = *(char**)ListGetIdx(&args, i); *c; c++) h = (h ^ (unsigned char)*c) * 1099511628211ULL;
        h = (h ^ 0xFFu) * 1099511628211ULL;
    }
    char* base = StrFmt("build/olang_%s.%016llx%s%s%s", dyncall ? "dyncall" : "runtime", h, gRace ? ".race" : "",
                        gDebug ? ".debug" : "", gScopeSan ? ".san" : "");
    char* objPath = StrFmt("%s.o", base);
    struct stat st;
    if (stat(objPath, &st) == 0) { free(ir); ListDestroy(args); return objPath; }
    char* irPath = StrFmt("%s.ll", base);
    FILE* out = fopen(irPath, "w");
    if (!out || fwrite(ir, 1, irLen, out) != irLen || fclose(out) != 0) ErrFatal(StrFromCStr(irPath), ERR_CANNOT_OPEN);
    free(ir);
    requireClangOrExplain(clang, irPath);
    char* tmpPath = StrFmt("%s.%ld.tmp", objPath, (long)getpid());
    argAdd(&args, "-c");
    argAdd(&args, "-o");
    argAdd(&args, tmpPath);
    argAdd(&args, irPath);
    if (RunProgram(argEnd(&args), false) != 0) ErrFatal((struct str){0}, ERR_CLANG_FAILED, irPath);
    if (rename(tmpPath, objPath) != 0) ErrFatal(StrFromCStr(objPath), ERR_CANNOT_OPEN);
    ListDestroy(args);
    return objPath;
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
    char* suffix = StrFmt("%s%s%s%s%s", cfg,
             entry == CG_ENTRY_MAIN ? ".main"
                 : entry == CG_ENTRY_TESTS ? ".test"     //the root, carrying the harness
                 : gTestBuild ? ".tmod"                  //a plain module built WITH the unwind chain
                 : "",
             gRace ? ".race" : "", gDebug ? ".debug" : "", gScopeSan ? ".san" : "");
    //the IR is an intermediate, written afresh just before each compile, so it keeps the readable name alone
    char* irPath = StrFmt("build/%s%s.ll", base, suffix);
    char* objPath = StrFmt("build/%s.%s%s.o", base, objectHash(mod), suffix);
    if (!moduleIsStale(mod, objPath)) return objPath;

    CodegenModule(mod, irPath, entry, gRace, gTestBuild, gDebug);
    requireClangOrExplain(clang, irPath);
    struct list args = ListInit(sizeof(char*));
    argAdd(&args, clang);
    addCompileFlags(&args);
    argAdd(&args, "-c");
    argAdd(&args, "-o");
    argAdd(&args, objPath);
    argAdd(&args, irPath);
    if (RunProgram(argEnd(&args), false) != 0) ErrFatal((struct str){0}, ERR_CLANG_FAILED, irPath);
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
    //B3: the runtime, once (runtimeObject); and S3's dynamic call, over libffi, only into a program declaring it
    bool dyncall = CodegenProgramUsesDyncall();
    argAdd(&args, runtimeObject(clang, false));
    if (dyncall) argAdd(&args, runtimeObject(clang, true));
    argAdd(&args, "-lm");
    argAdd(&args, "-lpthread");
    argAdd(&args, "-ldl"); //os.RunOnStack asks glibc's dlsym for the least stack a thread may have
    if (dyncall) argAdd(&args, "-lffi");
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
    //what the object links against beside the other modules' objects: the runtime's own (B3), made ready here too
    runtimeObject(clang, false);
    if (CodegenProgramUsesDyncall()) runtimeObject(clang, true);
    //B3h: -output copies the object where it says - the object in build/ stays, current for the next build
    if (gOutput) {
        if (copyFile(objPath, gOutput) != 0) ErrFatal(StrFromCStr(gOutput), ERR_OUTPUT_CANNOT_WRITE);
        objPath = gOutput;
    }
    printf("%sbuilt %s%s\n", ErrMsgColor(COLOR_FG_GREEN), objPath, ErrMsgColor(COLOR_RESET));
}

//"build": every reachable module to its own object, then one link (B1/B3) - into build/, or where -output says (B3h).
//Returns the executable's path; quiet (running it, B3g) says nothing when it is built
char* buildProgram(char* file, bool quiet) {
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

    char* binPath = gOutput ? gOutput : StrFmt("build/%s%s%s%s", moduleObjectBase(root), gRace ? ".race" : "",
                                               gDebug ? ".debug" : "", gScopeSan ? ".san" : "");
    if (linkProgram(clang, &objs, binPath) != 0) ErrFatal((struct str){0}, ERR_LINK_FAILED, binPath);
    if (!quiet) {
        printf("%sbuilt %s%s%s\n", ErrMsgColor(COLOR_FG_GREEN), binPath[0] == '/' || gOutput ? "" : "./", binPath,
               ErrMsgColor(COLOR_RESET));
    }
    return binPath;
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
    if (!mainFunc) ErrFatal(root->fileName, ERR_NO_MAIN);
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
    enum diag unusable = stat(file, &st) != 0 ? ERR_CANNOT_OPEN
                       : S_ISDIR(st.st_mode) ? ERR_IS_DIRECTORY
                       : !S_ISREG(st.st_mode) ? ERR_NOT_REGULAR : DIAG_NONE;
    if (unusable) {
        ErrFile(StrFromCStr(file), unusable);
        ErrMsgFlush();
        printf("%s%s: cannot be built, skipping%s\n", ErrMsgColor(COLOR_FG_RED), file, ErrMsgColor(COLOR_RESET));
        return 1;
    }
    int before = ErrMsgGetNErrors();
    struct semaModule* root = SemanticAnalyzeFile(file, false);
    CodegenCheckModuleNames();
    CodegenSetRoot(root);
    if (ErrMsgGetNErrors() > before) {
        ErrMsgFlush();
        printf("%s%s: semantic errors, skipping%s\n", ErrMsgColor(COLOR_FG_RED), file, ErrMsgColor(COLOR_RESET));
        return 1;
    }

    ensureBuildDir();
    requireClangOrExplain(clang, "build");
    char* binPath = StrFmt("build/%s_test%s%s%s", moduleObjectBase(root), gRace ? ".race" : "", gDebug ? ".debug" : "",
                           gScopeSan ? ".san" : "");

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
        printf("%s%s: native compilation failed%s\n", ErrMsgColor(COLOR_FG_RED), file, ErrMsgColor(COLOR_RESET));
        return 1;
    }

    printf("%s== %s ==%s\n", ErrMsgColor(COLOR_FG_CYAN), file, ErrMsgColor(COLOR_RESET));
    char* run[] = { StrFmt("./%s", binPath), NULL };
    int runRc = RunProgram(run, false);
    //the tests' own process ended by a signal - a crash: it can say nothing more itself, so the run says it
    if (runRc > 128) printf("%s%s: the tests ended by a signal (%s)%s\n", ErrMsgColor(COLOR_FG_RED), file,
                            strsignal(runRc - 128), ErrMsgColor(COLOR_RESET));
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
        printf("%s%s: lost track of its build, skipping%s\n", ErrMsgColor(COLOR_FG_RED), file, ErrMsgColor(COLOR_RESET));
        return 1;
    }
    if (WIFEXITED(st)) return WEXITSTATUS(st) != 0;
    //a crash has said so already (ErrMsgInstallCrashHandler); a process killed from outside - by the system, out of
    //memory - has not
    printf("%s%s: the compiler ended (%s), skipping%s\n", ErrMsgColor(COLOR_FG_RED), file,
           WIFSIGNALED(st) ? strsignal(WTERMSIG(st)) : "unknown status", ErrMsgColor(COLOR_RESET));
    return 1;
}

//B10: "-define Name=value" - one build constant
static void defineFromArg(char* arg) {
    char* eq = strchr(arg, '=');
    if (!eq) ErrUsage(ERR_DEFINE_SHAPE, arg);
    *eq = '\0';
    enum diag err = SyntaxDefineBuildConst(arg, eq + 1, false);
    if (err) ErrUsage(err, arg, eq + 1);
}

//B10a: one constant every build defines - a -D giving the same name is reported here, since user constants are defined
//first
static void defineBuiltin(char* name, char* value) {
    if (SyntaxDefineBuildConst(name, value, true)) ErrUsage(ERR_DEFINE_BUILTIN, name);
}

//B12: the architectures olang builds for, with how clang is told a CPU for each: a 64-bit, little-endian machine is what
//its layouts assume, and the runtime's facts about the C library (X6's struct layouts) are known for these
static const struct { const char* arch; const char* cpuFlag; const char* defaultCpu; } targetArchs[] = {
    { "x86_64", "-march=", "x86-64" },
    { "aarch64", "-mcpu=", "generic" },
};

static int targetArchIndex(const char* arch, size_t len) {
    for (int i = 0; i < (int)(sizeof(targetArchs) / sizeof(targetArchs[0])); i++) {
        if (strlen(targetArchs[i].arch) == len && !strncmp(targetArchs[i].arch, arch, len)) return i;
    }
    return -1;
}

//B12: target features whose instructions LLVM would select for ordinary IR but which do not compute what IEEE 754 (and so
//the compile-time evaluator, K1) computes: VCVTNEPS2BF16 rounds F32 to BF16 with its denormal inputs treated as zero and
//its denormal results flushed to zero, where the conversion is to round them. Without them the conversion is a library
//call, correct on every target
static const char* ieeeUnsafeFeatures[] = { "avx512bf16", "avxneconvert" };

//the text of attribute "name"="..." in an attribute line, or NULL
static char* attrValue(const char* line, const char* name) {
    char* key = StrFmt("\"%s\"=\"", name);
    const char* at = strstr(line, key);
    size_t kl = strlen(key);
    free(key);
    if (!at) return NULL;
    at += kl;
    const char* end = strchr(at, '"');
    if (!end) return NULL;
    return StrFmt("%.*s", (int)(end - at), at);
}

//whether the feature list (clang's: "+a,+b,-c") turns feature f on
static bool hasFeature(const char* features, const char* f) {
    size_t n = strlen(f);
    for (const char* p = features; *p; ) {
        const char* end = strchr(p, ',');
        size_t len = end ? (size_t)(end - p) : strlen(p);
        if (len == n + 1 && p[0] == '+' && !strncmp(p + 1, f, n)) return true;
        if (!end) break;
        p = end + 1;
    }
    return false;
}

//B12: the target without clang (-i only): "native" or an x86-64 level on an x86_64 machine, "native" or "generic" on an
//aarch64 one - false for any other
static bool targetWithoutClang(const char* cpu) {
    gTarget.triple = StrFmt("%s-unknown-linux-gnu", gTarget.arch);
    if (!strcmp(gTarget.arch, "aarch64")) {
        if (strcmp(cpu, "native") && strcmp(cpu, "generic")) return false;
        gTarget.cpu = "generic";
        gTarget.vectorBits = 128;
        gTarget.fma = true;
        return true;
    }
    int level = !strcmp(cpu, "x86-64") ? 1 : !strcmp(cpu, "x86-64-v2") ? 2 : !strcmp(cpu, "x86-64-v3") ? 3
              : !strcmp(cpu, "x86-64-v4") ? 4 : 0;
#if defined(__x86_64__)
    if (!strcmp(cpu, "native")) {
        __builtin_cpu_init();
        level = __builtin_cpu_supports("x86-64-v4") ? 4 : __builtin_cpu_supports("x86-64-v3") ? 3
              : __builtin_cpu_supports("x86-64-v2") ? 2 : 1;
    }
#endif
    if (!level) return false;
    gTarget.cpu = level == 1 ? "x86-64" : StrFmt("x86-64-v%d", level);
    gTarget.vectorBits = level == 4 ? 512 : level == 3 ? 256 : 128;
    gTarget.fma = level >= 3;
    return true;
}

//B12: what "-a SPEC" names, resolved by asking clang what it compiles C to for it - the CPU, its features and the
//triple, exactly as for a C function built with -march: "native" is this machine's own CPU, as clang's -march=native
//finds it. SPEC is a CPU of this machine's architecture ("native", "x86-64-v3", "skylake"), or a triple
//"ARCH-linux-gnu" (any vendor between) with ":CPU" after it when the triple's default CPU is not the one wanted.
static void resolveTarget(char* clang, bool interpreting) {
    struct utsname u;
    char hostOs[400] = "unknown", hostArch[400] = "unknown";
    if (uname(&u) == 0) {
        snprintf(hostOs, sizeof(hostOs), "%s", u.sysname);
        snprintf(hostArch, sizeof(hostArch), "%s", u.machine);
        for (char* c = hostOs; *c; c++) *c = (char)tolower((unsigned char)*c);
    }
    char* spec = gTargetSpec;
    gTarget.spec = spec;
    //a triple begins with an architecture and a '-'; anything else is a CPU of this machine's architecture
    char* triple = NULL;
    char* cpu = spec;
    int ai = -1;
    const char* dash = strchr(spec, '-');
    if (dash) ai = targetArchIndex(spec, (size_t)(dash - spec));
    if (ai >= 0) {
        char* colon = strchr(spec, ':');
        triple = colon ? StrFmt("%.*s", (int)(colon - spec), spec) : spec;
        cpu = colon ? colon + 1 : NULL;
        //the operating system part: Linux with the GNU C library, the one whose facts the runtime knows
        size_t tl = strlen(triple);
        if (!(tl > 10 && !strcmp(triple + tl - 10, "-linux-gnu"))) ErrUsage(ERR_TARGET_UNSUPPORTED, spec);
        if (cpu && (!*cpu || strchr(cpu, ':'))) ErrUsage(ERR_TARGET_UNKNOWN, spec);
    } else {
        //a triple for an architecture olang does not build for, rather than a CPU
        if (strstr(spec, "-linux") || strstr(spec, "-apple") || strstr(spec, "-windows")) ErrUsage(ERR_TARGET_UNSUPPORTED, spec);
        if (strchr(spec, ':') || !*spec) ErrUsage(ERR_TARGET_UNKNOWN, spec);
        ai = targetArchIndex(hostArch, strlen(hostArch));
        if (ai < 0) ErrUsage(ERR_TARGET_UNSUPPORTED, hostArch);
    }
    const char* arch = targetArchs[ai].arch;
    gTarget.arch = StrFmt("%s", arch);
    gTarget.os = StrFmt("linux");
    gTarget.foreign = strcmp(arch, hostArch) || strcmp("linux", hostOs);
    //a triple naming this machine's architecture and system is this machine, with the triple's default CPU unless one
    //is given: built and linked as any other build for this machine
    if (triple && !gTarget.foreign) { triple = NULL; if (!cpu) cpu = (char*)targetArchs[ai].defaultCpu; }
    if (cpu && !strcmp(cpu, "native") && gTarget.foreign) ErrUsage(ERR_TARGET_NATIVE_FOREIGN, spec);
    if (gTarget.foreign && interpreting) ErrUsage(ERR_TARGET_FOREIGN_MODE, "-i", spec);

    //-i runs the program without clang, and needs one only to know the target: this machine's own CPU, or an x86-64
    //level, it knows without - the level this processor supports standing for its CPU
    if (!clang) {
        if (!interpreting || !targetWithoutClang(cpu)) ErrUsage(ERR_TARGET_NO_CLANG, spec);
        return;
    }
    //the probe: one empty C function compiled to IR for the target, whose attributes say what clang made of it
    struct list args = ListInit(sizeof(char*));
    argAdd(&args, clang);
    if (triple) argAdd(&args, StrFmt("--target=%s", triple));
    char* cpuFlag = cpu ? StrFmt("%s%s", targetArchs[ai].cpuFlag, cpu) : NULL;
    if (cpuFlag) argAdd(&args, cpuFlag);
    argAdd(&args, "-S"); argAdd(&args, "-emit-llvm"); argAdd(&args, "-o"); argAdd(&args, "-");
    argAdd(&args, "-x"); argAdd(&args, "c"); argAdd(&args, "-");
    static char out[65536];
    int rc = RunProgramFeed(argEnd(&args), "void olang_target_probe(void) { }\n", out, sizeof(out));
    ListDestroy(args);
    char* tl = strstr(out, "target triple = \"");
    char* dl = strstr(out, "target datalayout = \"");
    char* al = strstr(out, "attributes #0 = {");
    if (rc != 0 || !tl || !dl || !al) ErrUsage(ERR_TARGET_UNKNOWN, spec);
    tl += strlen("target triple = \"");
    gTarget.triple = StrFmt("%.*s", (int)(strchr(tl, '"') - tl), tl);
    char* alEnd = strchr(al, '\n');
    if (alEnd) *alEnd = '\0';
    //the layouts the compiler gives its types assume a 64-bit, little-endian machine (T4)
    dl += strlen("target datalayout = \"");
    if (dl[0] != 'e' || strstr(dl, "-p:32") || strstr(dl, "-p:16")) ErrUsage(ERR_TARGET_UNSUPPORTED, spec);
    //another architecture is built for only where this clang can generate all the code the runtime holds: BF16 among
    //it, which LLVM 18's AArch64 back end cannot select - an object it could not compile at the link is not built
    if (gTarget.foreign) {
        struct list cap = ListInit(sizeof(char*));
        argAdd(&cap, clang);
        argAdd(&cap, StrFmt("--target=%s", gTarget.triple));
        argAdd(&cap, "-fno-crash-diagnostics");
        argAdd(&cap, "-c"); argAdd(&cap, "-x"); argAdd(&cap, "ir"); argAdd(&cap, "-"); argAdd(&cap, "-o"); argAdd(&cap, "/dev/null");
        char ignored[16];
        int crc = RunProgramFeed(argEnd(&cap), "define float @f(float %x) {\n  %b = fptrunc float %x to bfloat\n"
                                               "  %c = fadd bfloat %b, %b\n  %r = fpext bfloat %c to float\n  ret float %r\n}\n",
                                 ignored, sizeof(ignored));
        ListDestroy(cap);
        if (crc != 0) ErrUsage(ERR_TARGET_NO_BACKEND, spec);
    }
    gTarget.cpu = attrValue(al, "target-cpu");
    char* features = attrValue(al, "target-features");
    if (!gTarget.cpu) ErrUsage(ERR_TARGET_UNKNOWN, spec);
    if (!features) features = StrFmt("%s", "");
    //features turned off for what they would compute (ieeeUnsafeFeatures)
    for (size_t i = 0; i < sizeof(ieeeUnsafeFeatures) / sizeof(ieeeUnsafeFeatures[0]); i++) {
        if (!hasFeature(features, ieeeUnsafeFeatures[i])) continue;
        char* plus = StrFmt("+%s", ieeeUnsafeFeatures[i]);
        for (char* p = strstr(features, plus); p; p = strstr(p + 1, plus)) {
            char after = p[strlen(plus)];
            if ((p == features || p[-1] == ',') && (after == ',' || after == '\0')) { *p = '-'; break; }
        }
        free(plus);
    }
    //B10a: the width of the vectors the generated code uses for its loops, and whether it has fused multiply-add
    if (!strcmp(arch, "x86_64")) {
        gTarget.vectorBits = hasFeature(features, "avx512f") ? 512 : hasFeature(features, "avx") ? 256 : 128;
        gTarget.fma = hasFeature(features, "fma") || hasFeature(features, "fma4");
    } else { //aarch64: Advanced SIMD's 128-bit registers, and fused multiply-add in the base instruction set
        gTarget.vectorBits = hasFeature(features, "neon") ? 128 : 0;
        gTarget.fma = true;
    }
    //what every generated function carries: the CPU and features (and how far a scalable vector may reach), and the
    //vector width - told to the code generator outright, so the width the program reads (TargetVectorBits) is the one
    //its loops are vectorized for, whatever a CPU's own tuning would have preferred
    char* tune = attrValue(al, "tune-cpu");
    char* tuneAttr = tune ? StrFmt(" \"tune-cpu\"=\"%s\"", tune) : "";
    char* vs = strstr(al, "vscale_range(");
    char* vsAttr = vs && strchr(vs, ')') ? StrFmt(" %.*s", (int)(strchr(vs, ')') + 1 - vs), vs) : "";
    gTarget.attrs = StrFmt("\"target-cpu\"=\"%s\" \"target-features\"=\"%s\"%s%s \"prefer-vector-width\"=\"%d\"",
                           gTarget.cpu, features, tuneAttr, vsAttr, gTarget.vectorBits ? gTarget.vectorBits : 128);
    gTarget.cpuFlag = StrFmt("%s%s", targetArchs[ai].cpuFlag, gTarget.cpu); //resolved: "native" is looked up once
    CodegenSetTarget(gTarget.triple, gTarget.arch, gTarget.attrs);
    CtSetForeignTarget(gTarget.foreign);
}

//B10a: the constants every build defines - the target's (B12) and the build's own modes
static void defineBuiltinConsts(bool testBuild) {
    //quoted, so a value that happens to look like a number is still text
    defineBuiltin("TargetOs", StrFmt("\"%s\"", gTarget.os));
    defineBuiltin("TargetArch", StrFmt("\"%s\"", gTarget.arch));
    defineBuiltin("TargetCpu", StrFmt("\"%s\"", gTarget.cpu));
    defineBuiltin("TargetVectorBits", StrFmt("%d", gTarget.vectorBits));
    defineBuiltin("TargetHasFma", gTarget.fma ? "true" : "false");
    defineBuiltin("DebugBuild", gDebug ? "true" : "false");
    defineBuiltin("RaceBuild", gRace ? "true" : "false");
    defineBuiltin("TestBuild", testBuild ? "true" : "false");
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

// ---- the command line (B1) ----

//the modes, each the word after "olang" - but running a file, which is a file ending in .olang written first (B3g)
enum mode { MODE_RUN, MODE_BUILD, MODE_COMPILE, MODE_TEST, MODE_INTERPRET, MODE_FORMAT, MODE_EXPLAIN, MODE_HELP, MODE_N };
static const char* modeWords[MODE_N] = { "", "build", "compile", "test", "interpret", "format", "explain", "help" };
#define M(x) (1u << (x))

//what each mode is, for help
static const char* modeUsage[MODE_N] = {
    "olang [OPTION...] FILE.olang [ARGUMENT...]",
    "olang build [OPTION...] FILE.olang",
    "olang compile [OPTION...] FILE.olang",
    "olang test [OPTION...] FILE.olang...",
    "olang interpret [OPTION...] FILE.olang [ARGUMENT...]",
    "olang format [OPTION...] FILE.olang...",
    "olang explain RULE",
    "olang help [MODE]",
};
static const char* modeWhat[MODE_N] = {
    "builds the program FILE.olang is the root of, as build does, and runs it with the arguments after the file",
    "builds one program, FILE.olang its root module, into build/ (B3)",
    "compiles one module to an object, linking nothing (B2)",
    "runs each file's test blocks, each file built on its own (B3a)",
    "runs the program by compile-time evaluation instead of building it, the arguments after the file its own (B3e)",
    "rewrites each file in olang's one layout (B13)",
    "prints a rule of the specification (B11a)",
    "lists the modes, or a mode's options",
};

//the options: their word, whether a value follows, the modes they apply to and what they do
enum option { OPT_OUTPUT, OPT_DEBUG, OPT_RACE, OPT_SANITIZE, OPT_TARGET, OPT_DEFINE, OPT_UPDATE, OPT_CHECK, OPT_N };
static const struct { const char* word; const char* value; unsigned modes; const char* what; } options[OPT_N] = {
    { "-output", "PATH", M(MODE_BUILD) | M(MODE_COMPILE), "writes the executable or the object to PATH (B3h)" },
    { "-debug", NULL, M(MODE_RUN) | M(MODE_BUILD) | M(MODE_COMPILE) | M(MODE_TEST),
      "builds unoptimized, with debug information (B2c, B2e)" },
    { "-race", NULL, M(MODE_RUN) | M(MODE_BUILD) | M(MODE_COMPILE) | M(MODE_TEST),
      "builds with the data race detector (B2b)" },
    { "-sanitize", NULL, M(MODE_RUN) | M(MODE_BUILD) | M(MODE_COMPILE) | M(MODE_TEST),
      "builds with the scope sanitizer (B2f)" },
    { "-target", "NAME", M(MODE_RUN) | M(MODE_BUILD) | M(MODE_COMPILE) | M(MODE_TEST) | M(MODE_INTERPRET),
      "builds for another machine (B12)" },
    { "-define", "Name=value", M(MODE_RUN) | M(MODE_BUILD) | M(MODE_COMPILE) | M(MODE_TEST) | M(MODE_INTERPRET),
      "defines a build constant (B10)" },
    { "-update", NULL, M(MODE_RUN) | M(MODE_BUILD) | M(MODE_COMPILE) | M(MODE_TEST) | M(MODE_INTERPRET),
      "moves the remote repositories the build reaches to their refs' current commits (M23c)" },
    { "-check", NULL, M(MODE_FORMAT), "rewrites nothing: lists each file not in the layout (B13)" },
};

static const char* modeName(enum mode m) { return m == MODE_RUN ? "running a file" : modeWords[m]; }

//the modes an option applies to, as a diagnostic names them: "build and compile"
static char* modesOf(unsigned modes) {
    char* out = StrFmt("%s", "");
    int n = 0, k = 0;
    for (int m = 0; m < MODE_N; m++) n += (modes >> m) & 1;
    for (int m = 0; m < MODE_N; m++) {
        if (!((modes >> m) & 1)) continue;
        k++;
        char* next = StrFmt("%s%s%s", out, k == 1 ? "" : k == n ? " and " : ", ", modeName(m));
        free(out);
        out = next;
    }
    return out;
}

static bool endsWithOlang(const char* a) {
    size_t n = strlen(a);
    return n > 6 && !strcmp(a + n - 6, ".olang");
}

//"help" and "help MODE": the modes, or one mode's options, on the standard output
static int printHelp(char* word) {
    if (!word) {
        printf("usage: olang MODE [OPTION...] FILE...   or   olang [OPTION...] FILE.olang [ARGUMENT...]\n\nmodes:\n");
        printf("  %-11s %s\n", "FILE.olang", modeWhat[MODE_RUN]);
        for (int m = 1; m < MODE_N; m++) printf("  %-11s %s\n", modeWords[m], modeWhat[m]);
        printf("\n'olang help MODE' lists a mode's options; 'olang help run' those of running a file.\n");
        return 0;
    }
    int m = !strcmp(word, "run") ? MODE_RUN : -1;
    for (int k = 1; k < MODE_N && m < 0; k++) if (!strcmp(word, modeWords[k])) m = k;
    if (m < 0) ErrUsage(ERR_NOT_A_MODE, word);
    printf("usage: %s\n%s\n", modeUsage[m], modeWhat[m]);
    bool any = false;
    for (int o = 0; o < OPT_N; o++) {
        if (!((options[o].modes >> m) & 1)) continue;
        if (!any) printf("\noptions:\n");
        any = true;
        char* w = StrFmt("%s%s%s", options[o].word, options[o].value ? " " : "", options[o].value ? options[o].value : "");
        printf("  %-18s %s\n", w, options[o].what);
        free(w);
    }
    return 0;
}

//B3h: -output's directory must be there - the compiler makes none
static void checkOutput(void) {
    struct stat st;
    if (stat(gOutput, &st) == 0 && S_ISDIR(st.st_mode)) ErrUsage(ERR_OUTPUT_IS_DIR, gOutput);
    char* dir = StrFmt("%s", gOutput);
    char* slash = strrchr(dir, '/');
    if (!slash) return;
    if (slash == dir) slash[1] = '\0'; else *slash = '\0';
    if (stat(dir, &st) != 0 || !S_ISDIR(st.st_mode)) ErrUsage(ERR_OUTPUT_NO_DIR, gOutput, dir);
    free(dir);
}

//B3g: the program run in this process's place - its status is the program's own, a signal's included, which a shell
//reports as 128 + its number. Its command line is the file as written, and the arguments after it
static int runProgramInPlace(char* binPath, char* file, int argc, char** argv) {
    char** av = MallocOrCrash(sizeof(char*) * (size_t)(argc + 2));
    av[0] = file;
    for (int i = 0; i < argc; i++) av[i + 1] = argv[i];
    av[argc + 1] = NULL;
    char* path = strchr(binPath, '/') ? binPath : StrFmt("./%s", binPath);
    fflush(NULL);
    execv(path, av);
    ErrFatal(StrFromCStr(binPath), ERR_CANNOT_RUN, strerror(errno));
    return 1;
}

//the newest modification time of any .olang file under dir, recursively (0 for none)
static long long newestSource(const char* dir) {
    long long newest = 0;
    struct list stack = ListInit(sizeof(char*));
    char* first = StrFmt("%s", dir);
    ListAdd(&stack, &first);
    while (stack.len > 0) {
        char* d = *(char**)ListGetIdx(&stack, stack.len - 1);
        stack.len--;
        DIR* h = opendir(d);
        if (!h) { free(d); continue; }
        struct dirent* e;
        while ((e = readdir(h))) {
            if (e->d_name[0] == '.') continue;
            char* p = StrFmt("%s/%s", d, e->d_name);
            struct stat st;
            if (stat(p, &st) != 0) { free(p); continue; }
            if (S_ISDIR(st.st_mode)) { ListAdd(&stack, &p); continue; }
            long long t = (long long)st.st_mtim.tv_sec * 1000000000LL + st.st_mtim.tv_nsec;
            if (endsWithOlang(p) && t > newest) newest = t;
            free(p);
        }
        closedir(h);
        free(d);
    }
    ListDestroy(stack);
    return newest;
}

static long long mtimeOf(const char* path) {
    struct stat st;
    if (stat(path, &st) != 0) return -1;
    return (long long)st.st_mtim.tv_sec * 1000000000LL + st.st_mtim.tv_nsec;
}

//B13: "format" runs the formatter - an olang program, compiler/tools/fmt.olang beside this compiler (as std is, B2a),
//built by this compiler once and kept in the cache (OLANG_CACHE, else ~/.cache/olang) under fmt/, in a directory named
//for this compiler's own path, so two compilers never share one. It is built again when this compiler, or any source it
//is built from (compiler/ and std/), is newer than it; a lock keeps two at once from building it together
static int formatFiles(int nfiles, char** files, bool check) {
    char self[PATH_MAX];
    ssize_t n = readlink("/proc/self/exe", self, sizeof(self) - 1);
    if (n <= 0) ErrUsage(ERR_FORMATTER_MISSING, "this compiler's own path cannot be read");
    self[n] = '\0';
    char* repo = StrFmt("%s", self);
    char* slash = strrchr(repo, '/');
    if (slash) *slash = '\0';
    char* root = StrFmt("%s/..", repo);
    char real[PATH_MAX];
    if (!realpath(root, real)) ErrUsage(ERR_FORMATTER_MISSING, root);
    char* src = StrFmt("%s/compiler/tools/fmt.olang", real);
    char* compilerDir = StrFmt("%s/compiler", real);
    char* stdDir = getenv("OLANG_STD") && *getenv("OLANG_STD") ? getenv("OLANG_STD") : StrFmt("%s/std", real);
    if (mtimeOf(src) < 0) ErrUsage(ERR_FORMATTER_MISSING, src);
    char* cache = getenv("OLANG_CACHE");
    if (!cache || !*cache) {
        char* home = getenv("HOME");
        cache = StrFmt("%s/.cache/olang", home && *home ? home : "/tmp");
    }
    unsigned long long h = 14695981039346656037ull;
    for (char* c = self; *c; c++) h = (h ^ (unsigned char)*c) * 1099511628211ull;
    char* dir = StrFmt("%s/fmt/%016llx", cache, h);
    char* bin = StrFmt("%s/olang-fmt", dir);
    if (MakeDirs(dir) != 0) ErrUsage(ERR_FORMATTER_BUILD, dir);
    int lock = open(StrFmt("%s/lock", dir), O_CREAT | O_RDWR, 0644);
    if (lock >= 0) flock(lock, LOCK_EX);
    long long built = mtimeOf(bin);
    long long need = mtimeOf(self);
    long long c1 = newestSource(compilerDir), c2 = newestSource(stdDir);
    if (c1 > need) need = c1;
    if (c2 > need) need = c2;
    if (built < 0 || built < need) {
        fprintf(stderr, "olang: building the formatter (%s), once\n", src);
        char* av[] = { self, "build", "-output", bin, src, NULL };
        char* log = StrFmt("%s/build.log", dir);
        //built in the cache directory, so its objects go to the cache's build/ and none to the caller's
        pid_t pid = fork();
        if (pid == 0) {
            int fd = open(log, O_CREAT | O_TRUNC | O_WRONLY, 0644);
            if (fd >= 0) { dup2(fd, 1); dup2(fd, 2); }
            if (chdir(dir) != 0) _exit(1);
            execv(self, av);
            _exit(1);
        }
        int st = 1;
        if (pid < 0) ErrUsage(ERR_FORMATTER_BUILD, log);
        while (waitpid(pid, &st, 0) < 0 && errno == EINTR) { }
        if (!WIFEXITED(st) || WEXITSTATUS(st) != 0) ErrUsage(ERR_FORMATTER_BUILD, log);
    }
    if (lock >= 0) close(lock);
    char** av = MallocOrCrash(sizeof(char*) * (size_t)(nfiles + 3));
    av[0] = bin;
    av[1] = check ? "-l" : "-f";
    for (int i = 0; i < nfiles; i++) av[i + 2] = files[i];
    av[nfiles + 2] = NULL;
    setenv("OLANG_STD", stdDir, 1);
    fflush(NULL);
    execv(bin, av);
    ErrUsage(ERR_FORMATTER_BUILD, bin);
    return 1;
}

static int compilerMain(int argc, char** argv) {
    if (argc < 2) ErrUsage(ERR_USAGE);
    //the mode: the first word, or running a file when the first word is a file or an option (B1, B3g)
    enum mode mode = MODE_RUN;
    int i = 1;
    if (argv[1][0] != '-' && !endsWithOlang(argv[1])) {
        int m = -1;
        for (int k = 1; k < MODE_N && m < 0; k++) if (!strcmp(argv[1], modeWords[k])) m = k;
        if (m < 0) ErrUsage(ERR_NOT_A_MODE, argv[1]);
        mode = (enum mode)m;
        i = 2;
    }
    //the options and the files, in any order - but for running a file and for interpret, whatever follows the file
    //is the program's own (B3f), an option's spelling included
    struct list files = ListInit(sizeof(char*));
    char* word = NULL; //explain's rule, help's mode
    int progArgc = 0;
    char** progArgv = NULL;
    bool check = false;
    for (; i < argc; i++) {
        char* a = argv[i];
        if (a[0] == '-') {
            int o = -1;
            for (int k = 0; k < OPT_N && o < 0; k++) if (!strcmp(a, options[k].word)) o = k;
            if (o < 0) ErrUsage(ERR_UNKNOWN_FLAG, a, modeName(mode));
            if (!((options[o].modes >> mode) & 1)) ErrUsage(ERR_OPTION_NOT_FOR_MODE, a, modesOf(options[o].modes), modeName(mode));
            char* v = NULL;
            if (options[o].value) {
                if (i + 1 >= argc) ErrUsage(ERR_OPTION_NEEDS_VALUE, a, options[o].value);
                v = argv[++i];
            }
            switch ((enum option)o) {
                case OPT_OUTPUT: gOutput = v; break;
                case OPT_DEBUG: gDebug = true; break;
                case OPT_RACE: gRace = true; break;
                case OPT_SANITIZE: gScopeSan = true; CodegenSetScopeSan(true); break;
                case OPT_TARGET: gTargetSpec = v; break;
                case OPT_DEFINE: defineFromArg(v); break;
                case OPT_UPDATE: SemanticSetUpdate(true); break;
                case OPT_CHECK: check = true; break;
                default: break;
            }
            continue;
        }
        if (mode == MODE_EXPLAIN || mode == MODE_HELP) {
            if (word) ErrUsage(mode == MODE_EXPLAIN ? ERR_EXPLAIN_NEEDS_RULE : ERR_HELP_ONE_MODE);
            word = a;
            continue;
        }
        if (!endsWithOlang(a)) {
            //running a file: a mode's word after the options belongs before them
            for (int k = 1; k < MODE_N; k++) if (mode == MODE_RUN && !strcmp(a, modeWords[k])) ErrUsage(ERR_MODE_FIRST, a);
            ErrUsage(ERR_NOT_A_SOURCE, a);
        }
        ListAdd(&files, &a);
        if (mode == MODE_RUN || mode == MODE_INTERPRET) {
            progArgc = argc - i - 1;
            progArgv = argv + i + 1;
            break;
        }
    }
    char** fs = files.ptr;

    if (mode == MODE_HELP) return printHelp(word);
    //B11a: a rule of the specification, by its id
    if (mode == MODE_EXPLAIN) {
        if (!word) ErrUsage(ERR_EXPLAIN_NEEDS_RULE);
        return ErrMsgExplain(word);
    }
    if (files.len == 0) ErrUsage(ERR_MODE_NEEDS_FILE, modeName(mode));
    if ((mode == MODE_BUILD || mode == MODE_COMPILE) && files.len != 1) ErrUsage(ERR_MODE_ONE_FILE, modeName(mode));
    if (mode == MODE_FORMAT) return formatFiles(files.len, fs, check);
    if (gOutput) checkOutput();

    //B12: the target - a foreign one builds objects only (compile)
    bool interpreting = mode == MODE_INTERPRET;
    resolveTarget(findClang(), interpreting);
    if (gTarget.foreign && mode != MODE_COMPILE) ErrUsage(ERR_TARGET_FOREIGN_MODE, modeName(mode), gTarget.spec);
    //user constants were defined above; a built-in name given with -define is a clash, reported here
    defineBuiltinConsts(mode == MODE_TEST);

    switch (mode) {
        case MODE_COMPILE:
            compileModule(fs[0]);
            return 0;
        case MODE_BUILD:
            buildProgram(fs[0], false);
            return 0;
        case MODE_RUN:
            return runProgramInPlace(buildProgram(fs[0], true), fs[0], progArgc, progArgv);
        case MODE_INTERPRET:
            //the program's command line is the file, then what follows it (B3f)
            return interpretProgram(fs[0], progArgc + 1, progArgv - 1);
        case MODE_TEST: {
            gTestBuild = true;
            char* clang = findClang();
            int anyFailed = 0;
            for (int k = 0; k < files.len; k++) {
                if (runTestFileApart(fs[k], clang) != 0) anyFailed = 1;
            }
            return anyFailed;
        }
        default:
            return 1;
    }
}

//copies the file at from to to, replacing it; 0, or -1 when either cannot be opened or written
static int copyFile(const char* from, const char* to) {
    FILE* in = fopen(from, "rb");
    if (!in) return -1;
    FILE* out = fopen(to, "wb");
    if (!out) { fclose(in); return -1; }
    char buf[65536];
    size_t n;
    int rc = 0;
    while ((n = fread(buf, 1, sizeof(buf), in)) > 0) if (fwrite(buf, 1, n, out) != n) rc = -1;
    if (fclose(out) != 0) rc = -1;
    fclose(in);
    return rc;
}
