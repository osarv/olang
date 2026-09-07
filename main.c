#include <stdlib.h>
#include <stdio.h>
#include <string.h>
#include <sys/stat.h>
#include <sys/wait.h>
#include "semantic.h"
#include "codegen.h"
#include "util.h"
#include "errmsg.h"

char* findClang() {
    if (system("which clang-20 > /dev/null 2>&1") == 0) return "clang-20";
    if (system("which clang > /dev/null 2>&1") == 0) return "clang";
    return NULL;
}

void ensureBuildDir() {
    (void)mkdir("build", 0755); //already existing is fine
}

char* baseNameNoExt(char* path) {
    char* slash = strrchr(path, '/');
    char* base = slash ? slash +1 : path;
    char* dot = strrchr(base, '.');
    size_t len = dot ? (size_t)(dot - base) : strlen(base);
    char* result = MallocOrCrash(len +1);
    memcpy(result, base, len);
    result[len] = '\0';
    return result;
}

void requireClangOrExplain(char* clang, char* irPath) {
    if (clang) return;
    printf(COLOR_FG_YELLOW "clang not found on PATH - install the LLVM toolchain to produce a native binary:\n"
        "  sudo apt install -y clang-20 llvm-20 llvm-20-dev\n" COLOR_RESET);
    printf("LLVM IR was written to %s\n", irPath);
    exit(EXIT_FAILURE);
}

//true when `objPath` is older than `srcPath` (or missing) - P3's own staleness test, applied to one file.
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

//P3: an object depends on the signatures it was compiled against, so it is stale when its own source OR
//any source it transitively IMPORTS is newer than it. Walks the real import graph rather than the whole
//program - comparing against every module would be safe but would rebuild the world whenever any leaf
//changed, which is the entire thing separate compilation exists to avoid. `seen` carries the visited set,
//since imports may legitimately form a cycle (§4.6).
bool anyImportNewer(struct semaModule* mod, char* objPath, struct list* seen) {
    for (int i = 0; i < seen->len; i++) {
        if (*(struct semaModule**)ListGetIdx(seen, i) == mod) return false;
    }
    ListAdd(seen, &mod);
    char buf[512];
    if (olderThan(objPath, StrToCStr(mod->fileName, buf))) return true;
    for (int i = 0; i < mod->imports.len; i++) {
        struct semaImport* imp = ListGetIdx(&mod->imports, i);
        if (anyImportNewer(imp->mod, objPath, seen)) return true;
    }
    return false;
}

bool moduleIsStale(struct semaModule* mod, char* objPath) {
    struct list seen = ListInit(sizeof(struct semaModule*));
    return anyImportNewer(mod, objPath, &seen);
}

//compiles one module to build/<base>.o, skipping the work when the object is already up to date.
//Returns the object path.
char* emitModuleObject(struct semaModule* mod, char* clang, enum cgEntry entry) {
    char nameBuf[512];
    char* base = baseNameNoExt(StrToCStr(mod->fileName, nameBuf));
    char* irPath = MallocOrCrash(512);
    char* objPath = MallocOrCrash(512);
    //a root module's object carries "main" (or the test harness) on top of its own code, so it is a
    //DIFFERENT artifact from the same module's plain object and gets its own name. Without that the two
    //would overwrite each other, and a plain object left by "-c" would look current to "-b" while
    //missing main entirely - which is why this used to force the root to rebuild every time.
    char* suffix = entry == CG_ENTRY_MAIN ? ".main" : (entry == CG_ENTRY_TESTS ? ".test" : "");
    snprintf(irPath, 512, "build/%s%s.ll", base, suffix);
    snprintf(objPath, 512, "build/%s%s.o", base, suffix);
    if (!moduleIsStale(mod, objPath)) return objPath;

    CodegenModule(mod, irPath, entry);
    requireClangOrExplain(clang, irPath);
    char cmd[2048];
    snprintf(cmd, sizeof(cmd), "%s -O3 -c -o %s %s", clang, objPath, irPath);
    if (system(cmd) != 0) { fprintf(stderr, "native compilation failed for %s\n", irPath); exit(EXIT_FAILURE); }
    return objPath;
}

//"-c": one module to one object, nothing linked (P2)
void compileModule(char* file) {
    struct semaModule* root = SemanticAnalyzeFile(file, false);
    CodegenCheckModuleNames();
    if (ErrMsgGetNErrors() > 0) ErrMsgFinishCompilation();
    ensureBuildDir();
    char* clang = findClang();
    char* objPath = emitModuleObject(root, clang, CG_ENTRY_NONE);
    printf(COLOR_FG_GREEN "built %s\n" COLOR_RESET, objPath);
}

//"-b": every reachable module to its own object, then one link (P1/P3)
void buildProgram(char* file) {
    struct semaModule* root = SemanticAnalyzeFile(file, true);
    CodegenCheckModuleNames();
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

    char* base = baseNameNoExt(file);
    char binPath[512];
    snprintf(binPath, sizeof(binPath), "build/%s", base);
    char cmd[16384];
    snprintf(cmd, sizeof(cmd), "%s -O3 -o %s%s -lm", clang, binPath, objs);
    if (system(cmd) != 0) { fprintf(stderr, "link failed\n"); exit(EXIT_FAILURE); }
    printf(COLOR_FG_GREEN "built ./%s\n" COLOR_RESET, binPath);
}

//returns 0 if this file's tests all passed, nonzero otherwise - never exits the process, so the rest of
//an -t file list still runs even if this one has semantic errors, fails to build, or fails a test
int runTestFile(char* file, char* clang) {
    int before = ErrMsgGetNErrors();
    struct semaModule* root = SemanticAnalyzeFile(file, false);
    CodegenCheckModuleNames();
    if (ErrMsgGetNErrors() > before) {
        printf(COLOR_FG_RED "%s: semantic errors, skipping\n" COLOR_RESET, file);
        return 1;
    }

    ensureBuildDir();
    requireClangOrExplain(clang, "build");
    char* base = baseNameNoExt(file);
    char binPath[512];
    snprintf(binPath, sizeof(binPath), "build/%s_test", base);

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
    snprintf(cmd, sizeof(cmd), "%s -O3 -o %s%s -lm", clang, binPath, objs);
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

int main(int argc, char** argv) {
    if (argc < 2) ErrMsgFatal(NO_FILE_SPECIFIED);

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
