#include <stdio.h>
#include "token.h"
int main(int argc, char** argv) {
    for (int a = 1; a < argc; a++) {
        TokenCtx tc = TokenizeFile(argv[a]);
        long n = 0;
        for (;;) {
            struct token t = TokenFeed(tc);
            if (t.type == TOK_NONE) break;
            n++;
            if (argc == 2) printf("%d %d %.*s\n", (int)t.type, t.lineNr, t.type == 0 ? 0 : t.str.len, t.str.ptr);
        }
        if (argc > 2) printf("%ld %s\n", n, argv[a]);
    }
    return 0;
}
#include "util.h"
struct str DiagSpellType(void* t) { (void)t; struct str s = {0}; return s; }
