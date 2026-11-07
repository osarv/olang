#include <stdio.h>
#include <string.h>
#include <time.h>
#include "token.h"
#include "syntax.h"
#include "util.h"
struct str DiagSpellType(void* t) { (void)t; struct str s = {0}; return s; }
static struct list* gNames;
static const char* prelude[] = {"I8","I16","I32","I64","U8","U16","U32","U64","F16","BF16","F32","F64","Bool","Char",
  "String","Array","List","Map","Pair","MapEntry","Iterator","Hashable","Indexable","Exhausted","ParseError",
  "BuiltinError","StringBuilder","C16","C32","C64","F8E4M3","F8E5M2","ListIter","MapIter","ArrayIter","LineIter",0};
static bool lookup(void* ctx, struct list chain, struct str name) {
    (void)ctx; (void)chain;
    for (int i = 0; prelude[i]; i++) if ((int)strlen(prelude[i]) == name.len && !memcmp(prelude[i], name.ptr, name.len)) return true;
    for (int i = 0; i < gNames->len; i++) { struct str* s = ListGetIdx(gNames, i); if (s->len == name.len && !memcmp(s->ptr, name.ptr, name.len)) return true; }
    return false;
}
static double now(void) { struct timespec t; clock_gettime(CLOCK_MONOTONIC, &t); return t.tv_sec + t.tv_nsec * 1e-9; }
int main(int argc, char** argv) {
    double tok = 0, par = 0;
    for (int a = 1; a < argc; a++) {
        double t0 = now();
        TokenCtx tc = TokenizeFile(argv[a]);
        double t1 = now();
        struct scanResult sr = ScanTopLevelDecls(tc);
        gNames = &sr.typeNames;
        ParseSyntax(tc, NULL, lookup);
        double t2 = now();
        tok += t1 - t0; par += t2 - t1;
    }
    printf("C: tokenize %.1f ms, scan+parse %.1f ms\n", tok * 1e3, par * 1e3);
    return 0;
}
