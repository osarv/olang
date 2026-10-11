// tokdump FILE... - the C tokenizer's stream, the oracle the self-hosted scanner is compared with (compiler/DESIGN.md
// section 4, compiler/tools/tokdiff.sh). For each file: "== FILE", one line per token - its line and its text, ";" for a
// statement end - then the diagnostics the tokenizer reported, as the compiler writes them, after "-- diagnostics".
#include <stdio.h>
#include "../token.h"
#include "../errmsg.h"

//errmsg.c spells a type through the checker; nothing here reports a type
struct str DiagSpellType(void* t) { (void)t; struct str s = {0}; return s; }

int main(int argc, char** argv) {
    for (int a = 1; a < argc; a++) {
        printf("== %s\n", argv[a]);
        TokenCtx tc = TokenizeFile(argv[a]);
        for (;;) {
            struct token t = TokenFeed(tc);
            if (t.type == TOK_NONE) break;
            printf("%d ", t.lineNr);
            if (t.type == TOK_STMNT_END) putchar(';');
            else fwrite(t.str.ptr, 1, (size_t)t.str.len, stdout);
            putchar('\n');
        }
        printf("-- diagnostics\n");
        fflush(stdout);
        ErrMsgFlush();
    }
    return 0;
}
