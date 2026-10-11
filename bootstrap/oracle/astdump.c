// astdump FILE... - the C parser's structure, the oracle the self-hosted parser is compared with (compiler/DESIGN.md
// section 4, compiler/tools/astdiff.sh). For each file: "== FILE", one line per declaration and statement anywhere in its
// syntax tree - "KIND LINE:COL-LINE:COL", the span of its tokens (statement ends left out), the end just past its last
// token - then the diagnostics the tokenizer and the parser reported, as the compiler writes them, after "-- diagnostics".
//
// The parser is run as the compiler runs it, with one difference: every branch of an if the build may decide is parsed
// (SyntaxParseAllBranches), since the self-hosted parser parses them all and leaves the deciding to later passes. Type
// names come from the files themselves, as the compiler's loader gives them: the file's own declarations, the prelude's
// exported ones, and each import's (std and relative imports; a remote import names nothing here).
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <limits.h>
#include <dirent.h>
#include "../token.h"
#include "../syntax.h"
#include "../errmsg.h"

//a path made of two others
#define PATH2 (2 * PATH_MAX + 16)

//errmsg.c spells a type through the checker; nothing here reports a type
struct str DiagSpellType(void* t) { (void)t; struct str s = {0}; return s; }

// ---- type names, as the loader gives them to the parser ----

struct mod {
    char path[PATH_MAX];
    struct list types;   //struct str
    struct list aliases; //struct str
    struct list targets; //struct mod*
    bool loaded;
};
static struct list mods; //struct mod*
static struct list prelude; //struct str: the prelude's declared type names
static char stdDir[PATH_MAX];

static bool hasType(struct mod* m, struct str name) {
    for (int i = 0; i < m->types.len; i++) if (StrCmp(*(struct str*)ListGetIdx(&m->types, i), name)) return true;
    return false;
}

static struct mod* loadMod(const char* path);

//an import's file: "std/x" under std, a remote one (its first part has a dot) nothing, anything else beside the importer
static void importTarget(struct mod* m, struct str ipath, char* out) { //out holds PATH2
    out[0] = '\0';
    char p[PATH_MAX];
    snprintf(p, sizeof(p), "%.*s", ipath.len, ipath.ptr);
    char* slash = strchr(p, '/');
    char* dot = strchr(p, '.');
    if (dot && (!slash || dot < slash)) return; //remote
    if (!strncmp(p, "std/", 4)) { snprintf(out, PATH2, "%s/%s.olang", stdDir, p + 4); return; }
    char dir[PATH_MAX];
    snprintf(dir, sizeof(dir), "%s", m->path);
    char* last = strrchr(dir, '/');
    if (last) *last = '\0'; else strcpy(dir, ".");
    snprintf(out, PATH2, "%s/%s.olang", dir, p);
}

static struct mod* loadMod(const char* path) {
    char canon[PATH_MAX];
    if (!realpath(path, canon)) return NULL;
    for (int i = 0; i < mods.len; i++) {
        struct mod* m = *(struct mod**)ListGetIdx(&mods, i);
        if (!strcmp(m->path, canon)) return m;
    }
    struct mod* m = calloc(1, sizeof(struct mod));
    snprintf(m->path, sizeof(m->path), "%s", canon);
    m->types = ListInit(sizeof(struct str));
    m->aliases = ListInit(sizeof(struct str));
    m->targets = ListInit(sizeof(struct mod*));
    ListAdd(&mods, &m);
    char* p = strdup(canon);
    TokenCtx tc = TokenizeFile(p);
    struct scanResult r = ScanTopLevelDecls(tc);
    ListAddList(&m->types, r.typeNames);
    for (int i = 0; i < r.imports.len; i++) {
        struct scannedImport* si = ListGetIdx(&r.imports, i);
        char target[PATH2];
        importTarget(m, si->path, target);
        struct mod* t = target[0] ? loadMod(target) : NULL;
        ListAdd(&m->aliases, &si->alias);
        ListAdd(&m->targets, &t);
    }
    return m;
}

//the same question isKnownTypeForParsing (semantic.c) answers for the compiler
static bool knownType(void* ctx, struct list aliasChain, struct str name) {
    struct mod* target = ctx;
    if (aliasChain.len == 0 && StrCmp(name, StrFromCStr("Array"))) return true;
    for (int i = 0; i < aliasChain.len && target; i++) {
        struct str* alias = ListGetIdx(&aliasChain, i);
        struct mod* next = NULL;
        for (int k = 0; k < target->aliases.len && !next; k++) {
            if (StrCmp(*(struct str*)ListGetIdx(&target->aliases, k), *alias)) next = *(struct mod**)ListGetIdx(&target->targets, k);
        }
        target = next;
    }
    if (!target) return false;
    if (hasType(target, name)) return true;
    if (aliasChain.len == 0 && name.len > 0 && name.ptr[0] >= 'A' && name.ptr[0] <= 'Z') {
        for (int i = 0; i < prelude.len; i++) if (StrCmp(*(struct str*)ListGetIdx(&prelude, i), name)) return true;
    }
    return false;
}

static int cmpName(const void* a, const void* b) { return strcmp(*(char* const*)a, *(char* const*)b); }

static void loadPrelude(void) {
    prelude = ListInit(sizeof(struct str));
    char dir[PATH2];
    snprintf(dir, sizeof(dir), "%s/prelude", stdDir);
    DIR* d = opendir(dir);
    if (!d) return;
    char* names[512];
    int n = 0;
    for (struct dirent* e = readdir(d); e && n < 512; e = readdir(d)) {
        size_t l = strlen(e->d_name);
        if (l > 6 && !strcmp(e->d_name + l - 6, ".olang")) names[n++] = strdup(e->d_name);
    }
    closedir(d);
    qsort(names, (size_t)n, sizeof(char*), cmpName);
    for (int i = 0; i < n; i++) {
        char p[PATH2 * 2];
        snprintf(p, sizeof(p), "%s/%s", dir, names[i]);
        struct mod* m = loadMod(p);
        if (m) ListAddList(&prelude, m->types);
    }
}

// ---- spans ----

struct file {
    char* text;
    int len;
    int* lines; //line n starts at lines[n - 1]
    int nLines;
    struct token* toks; //the token stream, by position
    int nToks;
};
static struct file cur;

static void readFile(const char* path) {
    FILE* f = fopen(path, "rb");
    cur.text = NULL;
    cur.len = 0;
    if (!f) return;
    fseek(f, 0, SEEK_END);
    long n = ftell(f);
    fseek(f, 0, SEEK_SET);
    cur.text = malloc((size_t)n + 1);
    cur.len = (int)fread(cur.text, 1, (size_t)n, f);
    fclose(f);
    cur.lines = malloc(sizeof(int) * ((size_t)cur.len + 2));
    cur.nLines = 0;
    cur.lines[cur.nLines++] = 0;
    for (int i = 0; i < cur.len; i++) if (cur.text[i] == '\n') cur.lines[cur.nLines++] = i + 1;
}

static void lineCol(int at, int* line, int* col) {
    int lo = 0, hi = cur.nLines - 1;
    while (lo < hi) {
        int mid = (lo + hi + 1) / 2;
        if (cur.lines[mid] <= at) lo = mid; else hi = mid - 1;
    }
    *line = lo + 1;
    *col = at - cur.lines[lo] + 1;
}

//a token's [start, end) in the file. A string literal the parser joined with the ones after it (E11b) lives in a
//buffer of its own: its span is that of the run of literals it was made from, found by its token id
static bool tokSpan(struct token t, int* start, int* end) {
    if (t.type == TOK_STMNT_END || t.type == TOK_NONE) return false;
    int s = TokenGetStrStart(t);
    if (s >= 0 && s <= cur.len) {
        *start = s;
        *end = s + TokenGetStrLen(t);
        return true;
    }
    for (int i = 0; i < cur.nToks; i++) {
        if (cur.toks[i].tokId != t.tokId) continue;
        *start = TokenGetStrStart(cur.toks[i]);
        int k = i;
        while (k + 1 < cur.nToks && cur.toks[k + 1].type == TOK_STR_LIT) k++;
        *end = TokenGetStrStart(cur.toks[k]) + TokenGetStrLen(cur.toks[k]);
        return true;
    }
    return false;
}

static void nodeSpan(struct syntax* s, int* lo, int* hi) {
    for (int i = 0; i < s->parts.len; i++) {
        struct syntaxPart* p = ListGetIdx(&s->parts, i);
        if (!p->isToken) { nodeSpan(p->sntx, lo, hi); continue; }
        int a, b;
        if (!tokSpan(p->tok, &a, &b)) continue;
        if (*lo < 0 || a < *lo) *lo = a;
        if (b > *hi) *hi = b;
    }
}

// ---- the dump ----

static const char* kindOf(enum syntaxType t) {
    switch (t) {
        case SNTX_IMPORT: return "IMPORT";
        case SNTX_TYPE_DECL: return "TYPE";
        case SNTX_ERROR_DECL: return "ERRORS";
        case SNTX_EXTERN_FUNC_DECL: return "EXTERN";
        case SNTX_FUNC_DEF: return "FN";
        case SNTX_TEST_DECL: return "TEST";
        case SNTX_DESTRUCT: return "DTOR";
        case SNTX_LAMBDA: return "LAMBDA";
        case SNTX_VAR_DECL: case SNTX_FOR_INIT: return "VAR";
        case SNTX_CTOR_FIELD: return "FIELD";
        case SNTX_STMNT_ASSIGN: return "ASSIGN";
        case SNTX_STMNT_DESTRUCT: return "MULTI";
        case SNTX_STMNT_EXPR: return "EXPR";
        case SNTX_STMNT_IF: return "IF";
        case SNTX_STMNT_FOR: return "FOR";
        case SNTX_STMNT_FOR_IN: return "FORIN";
        case SNTX_STMNT_DO: return "DO";
        case SNTX_STMNT_MATCH: case SNTX_EXPR_MATCH: return "MATCH";
        case SNTX_STMNT_CASE: return "CASE";
        case SNTX_STMNT_NOMATCH: return "NOMATCH";
        case SNTX_STMNT_RET: return "RETURN";
        case SNTX_STMNT_JOIN: return "JOIN";
        case SNTX_STMNT_BLOCK: return "BLOCK";
        case SNTX_STMNT_SPAWN: return "SPAWN";
        case SNTX_STMNT_DEFER: return "DEFER";
        case SNTX_STMNT_BREAK: return "BREAK";
        case SNTX_STMNT_CONTINUE: return "CONTINUE";
        case SNTX_STMNT_ABORT: return "ABORT";
        case SNTX_STMNT_UNREACHABLE: return "UNREACHABLE";
        case SNTX_STMNT_DONE: return "DONE";
        case SNTX_STMNT_FAIL: return "FAIL";
        case SNTX_STMNT_ASSERT: return "ASSERT";
        case SNTX_STMNT_ERROR: return "RAISE";
        case SNTX_STMNT_TRY_CATCH: return "TRY";
        case SNTX_STMNT_TRY_STORE: return "TRYSTORE";
        case SNTX_CATCH_CLAUSE: return "CATCH";
        default: return NULL;
    }
}

static void dump(struct syntax* s) {
    const char* k = kindOf(s->type);
    //a declaration salvaged after its body failed to parse is no structure to compare
    bool unparsed = false;
    for (int i = 0; i < s->parts.len; i++) {
        struct syntaxPart* p = ListGetIdx(&s->parts, i);
        if (!p->isToken && p->sntx->type == SNTX_BODY_UNPARSED) unparsed = true;
    }
    if (k && !unparsed) {
        int lo = -1, hi = -1;
        nodeSpan(s, &lo, &hi);
        if (lo >= 0) {
            int l1, c1, l2, c2;
            lineCol(lo, &l1, &c1);
            lineCol(hi, &l2, &c2);
            printf("%s %d:%d-%d:%d\n", k, l1, c1, l2, c2);
        }
    }
    for (int i = 0; i < s->parts.len; i++) {
        struct syntaxPart* p = ListGetIdx(&s->parts, i);
        if (!p->isToken) dump(p->sntx);
    }
}

int main(int argc, char** argv) {
    const char* env = getenv("OLANG_STD");
    snprintf(stdDir, sizeof(stdDir), "%s", env ? env : "std");
    mods = ListInit(sizeof(struct mod*));
    SyntaxParseAllBranches(true);
    loadPrelude();
    for (int a = 1; a < argc; a++) {
        printf("== %s\n", argv[a]);
        readFile(argv[a]);
        struct mod* m = cur.text ? loadMod(argv[a]) : NULL;
        if (!m) { printf("-- diagnostics\n"); continue; }
        TokenCtx tc = TokenizeFile(argv[a]);
        int cap = 1024;
        cur.toks = malloc(sizeof(struct token) * (size_t)cap);
        cur.nToks = 0;
        for (struct token t = TokenFeed(tc); t.type != TOK_NONE; t = TokenFeed(tc)) {
            if (cur.nToks == cap) { cap *= 2; cur.toks = realloc(cur.toks, sizeof(struct token) * (size_t)cap); }
            cur.toks[cur.nToks++] = t;
        }
        TokenSetCursor(tc, 0);
        struct syntaxModule sm = ParseSyntax(tc, m, knownType);
        for (int i = 0; i < sm.decls.len; i++) dump(ListGetIdx(&sm.decls, i));
        printf("-- diagnostics\n");
        fflush(stdout);
        ErrMsgFlush();
        fflush(stdout);
        free(cur.toks);
        free(cur.lines);
        free(cur.text);
    }
    return 0;
}
