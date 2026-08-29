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

void compileProgram(char* file) {
    struct semaModule* root = SemanticAnalyzeFile(file, false);
    if (ErrMsgGetNErrors() > 0) ErrMsgFinishCompilation(); //prints the failure summary and exits

    ensureBuildDir();
    char* base = baseNameNoExt(file);
    char irPath[512], binPath[512];
    snprintf(irPath, sizeof(irPath), "build/%s.ll", base);
    snprintf(binPath, sizeof(binPath), "build/%s", base);
    CodegenProgram(root, irPath);

    char* clang = findClang();
    requireClangOrExplain(clang, irPath);

    char cmd[2048];
    snprintf(cmd, sizeof(cmd), "%s -O3 -o %s %s -lm", clang, binPath, irPath);
    int rc = system(cmd);
    if (rc != 0) { fprintf(stderr, "native compilation failed\n"); exit(EXIT_FAILURE); }
    printf(COLOR_FG_GREEN "built ./%s\n" COLOR_RESET, binPath);
}

//returns 0 if this file's tests all passed, nonzero otherwise - never exits the process, so the rest of
//an -t file list still runs even if this one has semantic errors, fails to build, or fails a test
int runTestFile(char* file, char* clang) {
    int before = ErrMsgGetNErrors();
    struct semaModule* root = SemanticAnalyzeFile(file, true);
    if (ErrMsgGetNErrors() > before) {
        printf(COLOR_FG_RED "%s: semantic errors, skipping\n" COLOR_RESET, file);
        return 1;
    }

    ensureBuildDir();
    char* base = baseNameNoExt(file);
    char irPath[512], binPath[512];
    snprintf(irPath, sizeof(irPath), "build/%s_test.ll", base);
    snprintf(binPath, sizeof(binPath), "build/%s_test", base);
    CodegenTests(root, irPath);

    requireClangOrExplain(clang, irPath);

    char cmd[2048];
    snprintf(cmd, sizeof(cmd), "%s -O3 -o %s %s -lm", clang, binPath, irPath);
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
        compileProgram(argv[2]);
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
