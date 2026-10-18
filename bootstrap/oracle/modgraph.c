// modgraph [-t] [-D NAME=VALUE]... FILE - the C compiler's module graph, the oracle the self-hosted loader is compared
// with (compiler/DESIGN.md section 4, compiler/tools/modgraph.olang). The program rooted at FILE is analyzed as "olang compile"
// analyzes it - its build-decided branches decided, so the graph is of the modules the build really reaches - and
// written as the self-hosted loader's Graph() writes it: the modules sorted by identity, each "module IDENTITY" followed
// by its imports, "  ALIAS IDENTITY", sorted. The build constants are those "dump modules" gives (TargetOs linux,
// TargetArch x86_64), so a condition on them decides alike; the CPU's facts, which "dump modules" leaves unknown, are
// baseline x86-64's here (a test asserting them is decided while compiling, S18c).
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <pthread.h>
#include "../syntax.h"
#include "../semantic.h"
#include "../errmsg.h"

static int cmpStr(const void* a, const void* b) { return strcmp(*(char* const*)a, *(char* const*)b); }

static char* cstr(struct str s) {
    char* c = malloc(s.len + 1);
    memcpy(c, s.ptr, s.len);
    c[s.len] = 0;
    return c;
}

static void define(char* name, char* value) {
    if (SyntaxDefineBuildConst(name, value, false)) {
        fprintf(stderr, "modgraph: bad -D %s=%s\n", name, value);
        exit(2);
    }
}

struct job { int argc; char** argv; int status; };

static void* run(void* p) {
    struct job* j = p;
    bool test = false;
    char* file = NULL;
    for (int i = 1; i < j->argc; i++) {
        char* a = j->argv[i];
        if (!strcmp(a, "-t")) { test = true; continue; }
        if (!strcmp(a, "-D") && i + 1 < j->argc) {
            char* d = j->argv[++i];
            char* eq = strchr(d, '=');
            if (!eq) { fprintf(stderr, "modgraph: -D %s has no '='\n", d); exit(2); }
            *eq = 0;
            define(d, eq + 1);
            continue;
        }
        file = a;
    }
    if (!file) { fprintf(stderr, "usage: modgraph [-t] [-D NAME=VALUE]... FILE\n"); exit(2); }
    if (SyntaxDefineBuildConst("TargetOs", "\"linux\"", true) || SyntaxDefineBuildConst("TargetArch", "\"x86_64\"", true)
        || SyntaxDefineBuildConst("TargetCpu", "\"x86-64\"", true) || SyntaxDefineBuildConst("TargetVectorBits", "128", true)
        || SyntaxDefineBuildConst("TargetHasFma", "false", true) || SyntaxDefineBuildConst("DebugBuild", "false", true)
        || SyntaxDefineBuildConst("RaceBuild", "false", true)
        || SyntaxDefineBuildConst("TestBuild", test ? "true" : "false", true)) {
        fprintf(stderr, "modgraph: a built-in constant was given with -D\n");
        exit(2);
    }
    SemanticAnalyzeFile(file, false);
    if (ErrMsgGetNErrors() > 0) { fprintf(stderr, "modgraph: %s has errors\n", file); j->status = 1; return NULL; }
    struct list* all = SemanticAllModules();
    int n = all->len;
    char** lines = malloc(sizeof(char*) * (n + 1));
    for (int i = 0; i < n; i++) {
        struct semaModule* m = *(struct semaModule**)ListGetIdx(all, i);
        char** imps = malloc(sizeof(char*) * (m->imports.len + 1));
        int k = 0;
        size_t len = m->identity.len + 16;
        for (int t = 0; t < m->imports.len; t++) {
            struct semaImport* im = ListGetIdx(&m->imports, t);
            if (!im->mod) continue;
            imps[k] = StrFmt("  %s %s\n", cstr(im->alias), cstr(im->mod->identity));
            len += strlen(imps[k++]);
        }
        qsort(imps, k, sizeof(char*), cmpStr);
        lines[i] = malloc(len);
        strcpy(lines[i], StrFmt("module %s\n", cstr(m->identity)));
        for (int t = 0; t < k; t++) strcat(lines[i], imps[t]);
    }
    qsort(lines, n, sizeof(char*), cmpStr);
    for (int i = 0; i < n; i++) fputs(lines[i], stdout);
    j->status = 0;
    return NULL;
}

int main(int argc, char** argv) {
    struct job j = { argc, argv, 1 };
    pthread_attr_t attr;
    pthread_t t;
    pthread_attr_init(&attr);
    pthread_attr_setstacksize(&attr, (size_t)1 << 30);
    if (pthread_create(&t, &attr, run, &j) != 0) run(&j);
    else pthread_join(t, NULL);
    return j.status;
}
