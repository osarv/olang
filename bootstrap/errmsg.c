#include <stdlib.h>
#include <stdio.h>
#include <string.h>
#include <limits.h>
#include <signal.h>
#include <stdarg.h>
#include <ctype.h>
#include <unistd.h>
#include "util.h"
#include "errmsg.h"
#include "token.h"
#include "semantic.h"

void DiagSpellType(struct type t, char* buf, size_t n);

//each diagnostic's rule and message, by id (errmsg.h)
static const struct { const char* rule; const char* fmt; } diags[DIAG_COUNT] = {
    [DIAG_NONE] = { "", "" },
#define DIAG_ROW(id, rule, fmt) [id] = { rule, fmt },
    DIAGNOSTICS(DIAG_ROW)
#undef DIAG_ROW
};

static int nErrors = 0;
static int nSyntaxErrors = 0;
int ErrMsgGetNErrors() {
    return nErrors;
}
//a syntax error can hide a declaration (a main that did not parse), so checks that something is missing ask
int ErrMsgGetNSyntaxErrors() {
    return nSyntaxErrors;
}

// ---- colour ----

//B11: colour only where a person reads the diagnostics as they are written - a terminal, and not one that asked for
//none (NO_COLOR, TERM=dumb). Written to a file, a pipe or an agent they are plain text
static int colorState = -1;
static bool colorOn(void) {
    if (colorState < 0) {
        char* term = getenv("TERM");
        colorState = isatty(STDOUT_FILENO) && !getenv("NO_COLOR") && term && strcmp(term, "dumb") != 0;
    }
    return colorState;
}
const char* ErrMsgColor(const char* code) { return colorOn() ? code : ""; }

#define SGR_BOLD "\x1b[1m"
#define SGR_ERROR "\x1b[1;31m"
#define SGR_NOTE "\x1b[1;36m"
#define SGR_CARET "\x1b[1;32m"
#define SGR_RESET "\x1b[0m"

// ---- records ----

//Errors are reported in source order - by file (in the order files were first reported against), then line - not
//in the order the passes happen to find them, so a syntax error on line 5 never comes before an unknown type on
//line 1. Each error, with any note after it, is one record, written when the compilation finishes or exits.
struct errRecord {
    struct str file;
    int line;
    int seq;
    int fileRank;
    char* text;
    size_t size;
    bool dropped; //G16b: given way to the same error from another instantiation, which could spell the generic's types
    int col;      //B11: where an error is, and what it says - a second one the same at the same place is not written
    char* msg;
};
static struct errRecord** recs;
static int nRecs, capRecs;
static FILE* cur; //the stream of the record being written, or NULL

//K4: diagnostics can be held back - a compilation that will be redone with more of the program decided
//(deferred top-level conditions, B9c) reports nothing from the attempt that is thrown away.
static bool buffering;
static int recsAtBufStart;
static int errsAtBufStart;
static int syntaxAtBufStart;
static int muteDepth;
static int errsAtMute;
static int syntaxAtMute;

static void closeCur(void) {
    if (cur) { fclose(cur); cur = NULL; }
}

static void newRecord(struct str file, int line) {
    closeCur();
    if (nRecs == capRecs) {
        capRecs = capRecs ? capRecs * 2 : 16;
        recs = ReallocOrCrash(recs, sizeof(*recs) * capRecs);
    }
    struct errRecord* r = MallocOrCrash(sizeof(*r));
    *r = (struct errRecord){ .file = file, .line = line, .seq = nRecs };
    recs[nRecs++] = r;
    cur = open_memstream(&r->text, &r->size);
}

//the stream a note goes to: the record of the error before it
static FILE* eo(void) {
    if (!cur) newRecord((struct str){0}, INT_MAX);
    return cur;
}

static int recCmp(const void* a, const void* b) {
    const struct errRecord* x = *(struct errRecord* const*)a;
    const struct errRecord* y = *(struct errRecord* const*)b;
    if (x->fileRank != y->fileRank) return x->fileRank - y->fileRank;
    if (x->line != y->line) return x->line < y->line ? -1 : 1;
    return x->seq - y->seq;
}

//G16b/B11: an error about where something lives, met in a generic's body checked for one instantiation, is the same
//error for every instantiation, so it is written once - by the record of the first instantiation, unless its notes had
//to spell that instantiation's types (weak, ErrMsgWeakSpelling) and a later one could spell the generic's own
struct seenErr { struct str file; int line, col, metLine, metCol, d, rec; bool weak; };
static struct seenErr* seen;
static int nSeen, capSeen;
static int curSeen = -1;
void ErrMsgWeakSpelling(void) { if (curSeen >= 0 && curSeen < nSeen) seen[curSeen].weak = true; }

static void freeRecords(int from) {
    closeCur();
    for (int i = from; i < nRecs; i++) { free(recs[i]->text); free(recs[i]->msg); free(recs[i]); }
    nRecs = from;
    int k = 0;
    for (int i = 0; i < nSeen; i++) if (seen[i].rec < from) seen[k++] = seen[i];
    nSeen = k;
    curSeen = -1;
}

void ErrMsgFlush(void) {
    if (buffering) return; //held back until the attempt is kept or thrown away
    closeCur();
    for (int i = 0; i < nRecs; i++) {
        recs[i]->fileRank = i;
        for (int j = 0; j < i; j++) if (StrCmp(recs[j]->file, recs[i]->file)) { recs[i]->fileRank = recs[j]->fileRank; break; }
    }
    qsort(recs, nRecs, sizeof(*recs), recCmp);
    for (int i = 0; i < nRecs; i++) if (!recs[i]->dropped) fwrite(recs[i]->text, 1, recs[i]->size, stdout);
    fflush(stdout);
    freeRecords(0);
}

//the compiler is ending early - a fatal error, or an exit nothing else reported. An attempt whose diagnostics are still
//held back (K4, B9c) may have been about to be thrown away and redone with more of the program decided, so what it
//found is not shown: the reason for ending is the real output.
static void flushAtExit(void) {
    if (buffering) ErrMsgBufferDiscard();
    ErrMsgFlush();
}

//errors already found are still shown when the compiler exits early
static void ensureFlushHooks(void) {
    static bool done;
    if (done) return;
    done = true;
    atexit(flushAtExit);
}

// ---- the crash handler ----

static void writeAll(int fd, const char* p, size_t n) {
    while (n > 0) {
        ssize_t w = write(fd, p, n);
        if (w <= 0) return;
        p += w;
        n -= (size_t)w;
    }
}

//a crash in the compiler says so, always. A signal handler may do almost nothing safely - no stdio, no allocation, the
//heap possibly corrupt, and after a stack overflow no stack - so it runs on a stack of its own (ErrMsgInstallCrash
//Handler) and only writes: first the one line that must get out, then the diagnostics finished before the crash, as
//they are. The handler is reset before it runs, so a second fault while writing them ends the process quietly.
static volatile sig_atomic_t interpreting;
void ErrMsgSetInterpreting(bool on) { interpreting = on; }

//S2: the message an interpreted program gave os.OnCrash - written before anything else when the process crashes while
//interpreting, as the built program would write it
static char* volatile runCrashMsg;
static volatile size_t runCrashLen;
void ErrMsgSetRunCrashMessage(const char* msg, long long len) {
    size_t n = len > 0 ? (size_t)len : 0;
    char* copy = MallocOrCrash(n ? n : 1);
    memcpy(copy, msg, n);
    runCrashLen = 0;
    runCrashMsg = copy;
    runCrashLen = n;
}

static void onCrash(int sig) {
    if (interpreting && runCrashMsg) writeAll(2, runCrashMsg, runCrashLen);
    //B3e: under -i an abort is the interpreted program's own - a check it guarantees failed, its message written
    if (interpreting && sig == SIGABRT) raise(sig);
    const char* what = sig == SIGSEGV ? "a segmentation fault" : sig == SIGBUS ? "a bus error"
                     : sig == SIGFPE ? "an arithmetic fault" : sig == SIGILL ? "an illegal instruction" : "an abort";
    static const char head[] = "olang: internal compiler error: the compiler crashed (";
    static const char tail[] = ") - a bug in the compiler, not in the program\n";
    //an extern function the interpreted program calls runs in this process too (B3e), so a crash under -i may be
    //the program's - a wrong prototype is undefined behaviour (X1a)
    static const char tailRun[] = ") while interpreting - in a foreign function the program calls, if its extern "
                                  "declaration is wrong (X1a), or else a bug in the compiler\n";
    writeAll(2, head, sizeof(head) - 1);
    writeAll(2, what, strlen(what));
    if (interpreting) writeAll(2, tailRun, sizeof(tailRun) - 1);
    else writeAll(2, tail, sizeof(tail) - 1);
    for (int i = 0; i < nRecs - (cur ? 1 : 0); i++) writeAll(1, recs[i]->text, recs[i]->size);
    raise(sig);
}

void ErrMsgInstallCrashHandler(void) {
    size_t size = 1 << 16;
    stack_t ss = { .ss_sp = MallocOrCrash(size), .ss_size = size, .ss_flags = 0 }; //one per thread, kept for its life
    sigaltstack(&ss, NULL);
    struct sigaction sa;
    memset(&sa, 0, sizeof(sa));
    sa.sa_handler = onCrash;
    sa.sa_flags = SA_ONSTACK | SA_RESETHAND | SA_NODEFER;
    sigemptyset(&sa.sa_mask);
    int sigs[] = { SIGSEGV, SIGBUS, SIGFPE, SIGILL, SIGABRT };
    for (size_t i = 0; i < sizeof(sigs) / sizeof(sigs[0]); i++) sigaction(sigs[i], &sa, NULL);
}

// ---- muting and holding back ----

//K4: nothing between these is reported, and the count they leave is the count they found - for checking
//something speculatively (a condition in a context it may not fully belong to) where only "did it check"
//matters
void ErrMsgMuteStart(void) { if (muteDepth++ == 0) { errsAtMute = nErrors; syntaxAtMute = nSyntaxErrors; } }
void ErrMsgMuteEnd(void) { if (--muteDepth == 0) { nErrors = errsAtMute; nSyntaxErrors = syntaxAtMute; } }
bool ErrMsgMuted(void) { return muteDepth > 0; }

void ErrMsgBufferStart(void) {
    if (buffering) return;
    closeCur();
    buffering = true;
    recsAtBufStart = nRecs;
    errsAtBufStart = nErrors;
    syntaxAtBufStart = nSyntaxErrors;
}

void ErrMsgBufferFlush(void) {
    buffering = false;
}

void ErrMsgBufferDiscard(void) {
    if (!buffering) return;
    buffering = false;
    freeRecords(recsAtBufStart);
    nErrors = errsAtBufStart;
    nSyntaxErrors = syntaxAtBufStart;
}

void ErrMsgFinishCompilation() {
    flushAtExit();
    if (nErrors) {
        printf("%scompilation failed with %d error%s%s\n", ErrMsgColor(SGR_ERROR), nErrors, nErrors == 1 ? "" : "s",
               ErrMsgColor(SGR_RESET));
        exit(EXIT_FAILURE);
    }
    printf("%scompilation successful%s\n", ErrMsgColor(SGR_BOLD), ErrMsgColor(SGR_RESET));
    exit(EXIT_SUCCESS);
}

// ---- a message ----

//a byte as a message shows it: itself where it prints, else escaped
static void putChar(FILE* f, unsigned char c) {
    if (c == '\t') fputs("\\t", f);
    else if (c == '\n') fputs("\\n", f);
    else if (c == '\r') fputs("\\r", f);
    else if (c == '\0') fputs("\\0", f);
    else if (c < 0x20 || c >= 0x7f) fprintf(f, "\\x%02x", c);
    else fputc(c, f);
}

//a token as a reader sees it (%n)
static void putToken(FILE* f, struct token t) {
    if (t.type == TOK_STMNT_END) { fputs("end of line", f); return; }
    if (t.type == TOK_NONE) { fputs("end of file", f); return; }
    fputc('\'', f);
    for (int i = 0; i < t.str.len; i++) putChar(f, (unsigned char)t.str.ptr[i]);
    fputc('\'', f);
}

//writes fmt with its directives (errmsg.h) replaced by the arguments in ap
static void putMessage(FILE* f, const char* fmt, va_list ap) {
    for (const char* p = fmt; *p; p++) {
        if (*p != '%') { fputc(*p, f); continue; }
        switch (*++p) {
            case 's': { const char* s = va_arg(ap, char*); fputs(s ? s : "", f); break; }
            case 'S': { struct str s = va_arg(ap, struct str); fwrite(s.ptr, 1, (size_t)s.len, f); break; }
            case 'n': putToken(f, va_arg(ap, struct token)); break;
            case 't': {
                struct type* t = va_arg(ap, struct type*);
                char buf[512];
                if (t) DiagSpellType(*t, buf, sizeof(buf));
                fputs(t ? buf : "no type", f);
                break;
            }
            case 'd': fprintf(f, "%d", va_arg(ap, int)); break;
            case 'l': fprintf(f, "%lld", va_arg(ap, long long)); break;
            case 'c': putChar(f, (unsigned char)va_arg(ap, int)); break;
            case '%': fputc('%', f); break;
            default: //a directive this table does not have: shown, so the mistake is seen rather than read past
                fputc('%', f);
                if (!*p) return;
                fputc(*p, f);
        }
    }
}

// ---- where ----

//what a diagnostic is about: a span of a file's text, or a whole file, or nothing
struct where {
    struct str file;
    TokenCtx tc;   //NULL: no position in the file
    int start, len;
    int line;
};

static struct where whereOf(struct token t) {
    struct where w = { .file = TokenGetFileName(t.owner) };
    if (!t.owner) return w;
    w.line = t.lineNr;
    w.start = TokenGetStrStart(t);
    //a token made by the compiler, whose text is no part of the file: its line is all that is known of where it is
    if (w.start < 0 || w.start >= TokenGetCharCount(t.owner)) return w;
    w.tc = t.owner;
    w.len = t.type == TOK_STMNT_END || t.type == TOK_NONE ? 0 : TokenGetStrLen(t);
    if (t.type == TOK_NONE) {
        //the end of the file: just past its last character, on that character's line, rather than on a line after it
        while (w.start > 0) {
            char c = TokenGetChar(w.tc, w.start - 1);
            if (c != '\n' && c != ' ' && c != '\t' && c != '\r' && c != '\0') break;
            if (c == '\n') w.line--;
            w.start--;
        }
        if (w.line < 1) w.line = 1;
    }
    return w;
}

static int columnOf(struct where w) {
    return w.start - (TokenGetLineStart(w.tc, w.start) + 1) + 1;
}

//"path:line:col: " - or as much of it as is known
static void putLocation(FILE* f, struct where w) {
    fputs(ErrMsgColor(SGR_BOLD), f);
    if (w.file.len) {
        StrPrint(w.file, f);
        if (w.tc) fprintf(f, ":%d:%d", w.line, columnOf(w));
        else if (w.line > 0) fprintf(f, ":%d", w.line);
        fputs(": ", f);
    } else {
        fputs("olang: ", f);
    }
    fputs(ErrMsgColor(SGR_RESET), f);
}

//a source byte in an excerpt: a tab stays a tab, so the caret line below it lines up; any other control byte, which a
//terminal would act on, is shown as '?'
static void putSourceByte(FILE* f, unsigned char c) {
    fputc(c == '\t' || c >= 0x20 ? (c == 0x7f ? '?' : c) : '?', f);
}

//the source line w is on, and a caret under w: "  12 | x I32 = 1.5" then "     |         ^~~". A line too long to
//read is shown as a window around w
#define EXCERPT_MAX 160
#define EXCERPT_AROUND 70
static void putExcerpt(FILE* f, struct where w) {
    if (!w.tc) return;
    int lineStart = TokenGetLineStart(w.tc, w.start) + 1;
    int lineEnd = TokenGetLineEnd(w.tc, w.start);
    bool blank = true;
    for (int i = lineStart; i < lineEnd && blank; i++) {
        char c = TokenGetChar(w.tc, i);
        blank = c == ' ' || c == '\t' || c == '\r';
    }
    if (blank) return;
    int spanEnd = w.start + (w.len > 0 ? w.len : 1);
    int from = lineStart, to = lineEnd;
    if (lineEnd - lineStart > EXCERPT_MAX) {
        if (w.start - EXCERPT_AROUND > from) from = w.start - EXCERPT_AROUND;
        int end = (spanEnd < w.start + EXCERPT_AROUND ? spanEnd : w.start + EXCERPT_AROUND) + EXCERPT_AROUND;
        if (end < to) to = end;
    }
    fprintf(f, "%5d | %s", w.line, from > lineStart ? "..." : "");
    for (int i = from; i < to; i++) putSourceByte(f, (unsigned char)TokenGetChar(w.tc, i));
    fprintf(f, "%s\n      | %s", to < lineEnd ? "..." : "", from > lineStart ? "   " : "");
    for (int i = from; i < w.start && i < to; i++) {
        unsigned char c = (unsigned char)TokenGetChar(w.tc, i);
        if (c >= 0x80 && c < 0xc0) continue; //a UTF-8 continuation byte: part of the character before it
        fputc(c == '\t' ? '\t' : ' ', f);
    }
    fputs(ErrMsgColor(SGR_CARET), f);
    fputc('^', f);
    for (int i = w.start + 1; i < spanEnd && i < to; i++) {
        unsigned char c = (unsigned char)TokenGetChar(w.tc, i);
        if (c >= 0x80 && c < 0xc0) continue;
        fputc('~', f);
    }
    fputs(ErrMsgColor(SGR_RESET), f);
    fputc('\n', f);
}

// ---- reporting ----

static void noteText(struct where w, const char* text);

//what an error is reported inside - a generic's body checked for one instantiation (G16): every error reported while a
//context is open carries a note pointing at it, innermost first, so an error in shared generic code says which use
//of it was being checked
#define ERR_CONTEXT_MAX 32
#define ERR_CONTEXT_SHOWN 3
static struct { struct token tok; char* msg; } errContexts[ERR_CONTEXT_MAX];
static int errContextDepth;
void ErrMsgPushContext(struct token tok, char* msg) {
    if (errContextDepth < ERR_CONTEXT_MAX) {
        errContexts[errContextDepth].tok = tok;
        errContexts[errContextDepth].msg = msg;
    }
    errContextDepth++;
}
void ErrMsgPopContext(void) { if (errContextDepth > 0) errContextDepth--; }

//G27: the contexts open now, kept to report an error found later - once the program has checked - as found inside them
struct errContextSaved { int n; struct token toks[ERR_CONTEXT_MAX]; char* msgs[ERR_CONTEXT_MAX]; };
struct errContextSaved* ErrMsgSaveContext(void) {
    if (!errContextDepth) return NULL;
    struct errContextSaved* s = MallocOrCrash(sizeof(*s));
    s->n = errContextDepth < ERR_CONTEXT_MAX ? errContextDepth : ERR_CONTEXT_MAX;
    for (int i = 0; i < s->n; i++) { s->toks[i] = errContexts[i].tok; s->msgs[i] = errContexts[i].msg; }
    return s;
}
void ErrMsgPushSaved(struct errContextSaved* s) {
    for (int i = 0; s && i < s->n; i++) ErrMsgPushContext(s->toks[i], s->msgs[i]);
}
void ErrMsgPopSaved(struct errContextSaved* s) {
    for (int i = 0; s && i < s->n; i++) ErrMsgPopContext();
}

static bool (*libraryFile)(struct str file);
void ErrMsgSetLibraryTest(bool (*isLibrary)(struct str file)) { libraryFile = isLibrary; }
static bool inLibrary(struct where w) { return libraryFile && w.file.len && libraryFile(w.file); }

//B11: when w is in the standard library, the innermost open context in the program's own files - the use of the
//library's code that w was met for - or -1. The library cannot be changed where it is used; the program's types can
static int programUse(struct where w) {
    if (!inLibrary(w)) return -1;
    int top = errContextDepth < ERR_CONTEXT_MAX ? errContextDepth : ERR_CONTEXT_MAX;
    for (int i = top - 1; i >= 0; i--) {
        if (!errContexts[i].msg || errContexts[i].tok.type == TOK_NONE) continue;
        if (!inLibrary(whereOf(errContexts[i].tok))) return i;
    }
    return -1;
}

bool ErrMsgProgramUse(struct token at, struct token* use) {
    int i = programUse(whereOf(at));
    if (i < 0) return false;
    *use = errContexts[i].tok;
    return true;
}

//counts an error, and says whether it is to be written (it is not while muted)
static bool countError(bool syntax) {
    nErrors++;
    if (syntax) nSyntaxErrors++;
    return muteDepth == 0;
}

//"path:line:col: error[RULE]: " - the start of an error's record
static FILE* startError(struct where w, const char* rule) {
    ensureFlushHooks();
    newRecord(w.file, w.line > 0 ? w.line : INT_MAX);
    FILE* f = eo();
    putLocation(f, w);
    fputs(ErrMsgColor(SGR_ERROR), f);
    fputs("error", f);
    if (rule && *rule) fprintf(f, "[%s]", rule);
    fputs(":", f);
    fputs(ErrMsgColor(SGR_RESET), f);
    fputc(' ', f);
    return f;
}

//the end of an error's record: its source, and the notes saying what it was reported inside. An error met in the
//library and reported at the program's use of it (programUse, the context `use`) says where it was met, and only the
//contexts from that use outward
static void endError(FILE* f, struct where w, int use, struct where met) {
    fputc('\n', f);
    putExcerpt(f, w);
    int top = errContextDepth < ERR_CONTEXT_MAX ? errContextDepth : ERR_CONTEXT_MAX;
    if (use >= 0) {
        noteText(met, diags[NOTE_IN_LIBRARY].fmt);
        if (use < top) top = use + 1;
    }
    //the innermost contexts, and always the outermost - the program's own use that began the chain (G16b) - which a cap
    //on the innermost alone dropped from a long one (an instantiation asking for the next, N times)
    int outer = -1, valid = 0;
    for (int i = 0; i < top; i++) {
        if (!errContexts[i].msg || errContexts[i].tok.type == TOK_NONE) continue;
        if (outer < 0) outer = i;
        valid++;
    }
    int inner = valid > ERR_CONTEXT_SHOWN ? ERR_CONTEXT_SHOWN - 1 : ERR_CONTEXT_SHOWN;
    for (int i = top - 1, shown = 0; i >= 0 && shown < inner; i--) {
        if (!errContexts[i].msg || errContexts[i].tok.type == TOK_NONE) continue;
        if (i == outer && valid > ERR_CONTEXT_SHOWN) break;
        noteText(whereOf(errContexts[i].tok), errContexts[i].msg);
        shown++;
    }
    if (valid > ERR_CONTEXT_SHOWN) noteText(whereOf(errContexts[outer].tok), errContexts[outer].msg);
}

//B11: a statement reports one error about where something lives - a rule of §8 (O...), C2d's or T17c's: a scope found
//wrong is wrong for every check that reads it after, and the first one says what to change. A later one, and its notes,
//is dropped. Groups nest - a statement in a catch block, or a lambda's, is one of its own
static bool scopeGroupOn, scopeGroupSeen, lastDropped;
int ErrMsgScopeGroupStart(void) {
    int saved = (scopeGroupOn ? 1 : 0) | (scopeGroupSeen ? 2 : 0);
    scopeGroupOn = true;
    scopeGroupSeen = false;
    return saved;
}
void ErrMsgScopeGroupEnd(int saved) {
    scopeGroupOn = saved & 1;
    scopeGroupSeen = saved & 2;
}
static bool isScopeRule(const char* rule) {
    return (rule[0] == 'O' && rule[1] >= '0' && rule[1] <= '9') || !strncmp(rule, "C2d", 3) || !strncmp(rule, "T17c", 4);
}

static void errorV(struct where w, bool syntax, enum diag d, va_list ap) {
    lastDropped = false;
    curSeen = -1;
    if (scopeGroupOn && !muteDepth && isScopeRule(diags[d].rule)) {
        if (scopeGroupSeen) { lastDropped = true; return; }
        scopeGroupSeen = true;
    }
    int use = programUse(w);
    struct where met = w;
    if (use >= 0) w = whereOf(errContexts[use].tok);
    //B11: one error per cause - the same message at the same place again (two checks reaching one fault: a declaration
    //judging where a scope argument puts its instance, then the statement storing it there) is not written twice
    char* msg = NULL;
    size_t msgSize = 0;
    int col = columnOf(w);
    if (!muteDepth) {
        FILE* mf = open_memstream(&msg, &msgSize);
        va_list ap2;
        va_copy(ap2, ap);
        putMessage(mf, diags[d].fmt, ap2);
        va_end(ap2);
        fclose(mf);
    }
    if (errContextDepth > 0 && !muteDepth && isScopeRule(diags[d].rule)) { //G16b: once for every instantiation
        int metCol = columnOf(met);
        int i = 0;
        while (i < nSeen && !(seen[i].d == (int)d && seen[i].line == w.line && seen[i].col == col
                              && seen[i].metLine == met.line && seen[i].metCol == metCol
                              && StrCmp(seen[i].file, w.file))) i++;
        if (i < nSeen) {
            if (!seen[i].weak || seen[i].rec >= nRecs) { free(msg); lastDropped = true; return; }
            closeCur();
            recs[seen[i].rec]->dropped = true; //this one is written instead, and counted already
            seen[i].rec = nRecs;
            seen[i].weak = false;
            curSeen = i;
            FILE* f = startError(w, diags[d].rule);
            recs[nRecs - 1]->col = col;
            recs[nRecs - 1]->msg = msg;
            putMessage(f, diags[d].fmt, ap);
            endError(f, w, use, met);
            return;
        }
        if (nSeen == capSeen) {
            capSeen = capSeen ? capSeen * 2 : 16;
            seen = ReallocOrCrash(seen, sizeof(*seen) * capSeen);
        }
        seen[nSeen] = (struct seenErr){ .file = w.file, .line = w.line, .col = col, .metLine = met.line, .metCol = metCol,
                                        .d = (int)d, .rec = nRecs };
        curSeen = nSeen++;
    }
    //(after G16b's own bookkeeping, which lets a later instantiation's spelling replace an earlier one's: undone here)
    for (int i = 0; msg && i < nRecs; i++) {
        struct errRecord* r = recs[i];
        if (r->msg && !r->dropped && r->line == (w.line > 0 ? w.line : INT_MAX) && r->col == col && StrCmp(r->file, w.file)
                && !strcmp(r->msg, msg)) {
            if (curSeen >= 0 && curSeen == nSeen - 1 && seen[curSeen].rec == nRecs) nSeen--;
            curSeen = -1;
            free(msg);
            lastDropped = true;
            return;
        }
    }
    if (!countError(syntax)) { free(msg); return; }
    FILE* f = startError(w, diags[d].rule);
    recs[nRecs - 1]->col = col;
    recs[nRecs - 1]->msg = msg;
    putMessage(f, diags[d].fmt, ap);
    endError(f, w, use, met);
}

void Err(struct token at, enum diag d, ...) {
    va_list ap;
    va_start(ap, d);
    errorV(whereOf(at), false, d, ap);
    va_end(ap);
}

void ErrSyntax(struct token at, enum diag d, ...) {
    va_list ap;
    va_start(ap, d);
    errorV(whereOf(at), true, d, ap);
    va_end(ap);
}

void ErrFile(struct str file, enum diag d, ...) {
    va_list ap;
    va_start(ap, d);
    errorV((struct where){ .file = file }, false, d, ap);
    va_end(ap);
}

//"path:line:col: note: ..." and its source - a note is no error of its own, so it counts nothing
static void startNote(FILE* f, struct where w) {
    putLocation(f, w);
    fprintf(f, "%snote:%s ", ErrMsgColor(SGR_NOTE), ErrMsgColor(SGR_RESET));
}

static void noteText(struct where w, const char* text) {
    if (muteDepth) return;
    FILE* f = eo();
    startNote(f, w);
    fputs(text, f);
    fputc('\n', f);
    putExcerpt(f, w);
}

void Note(struct token at, enum diag d, ...) {
    if (muteDepth || lastDropped) return;
    struct where w = whereOf(at);
    FILE* f = eo();
    startNote(f, w);
    va_list ap;
    va_start(ap, d);
    putMessage(f, diags[d].fmt, ap);
    va_end(ap);
    fputc('\n', f);
    putExcerpt(f, w);
}

static void fatalStart(void) {
    flushAtExit(); //a fatal error ends the compilation: what is already certain is shown, and the reason
    nErrors++;
}

//"path: error[RULE]: message", or "olang: ..." with no file, written straight out
static void putFatal(struct str file, enum diag d, va_list ap) {
    putLocation(stdout, (struct where){ .file = file });
    printf("%serror", ErrMsgColor(SGR_ERROR));
    if (*diags[d].rule) printf("[%s]", diags[d].rule);
    printf(":%s ", ErrMsgColor(SGR_RESET));
    putMessage(stdout, diags[d].fmt, ap);
    putchar('\n');
}

void ErrFatal(struct str file, enum diag d, ...) {
    fatalStart();
    va_list ap;
    va_start(ap, d);
    putFatal(file, d, ap);
    va_end(ap);
    ErrMsgFinishCompilation();
}

void ErrUsage(enum diag d, ...) {
    va_list ap;
    va_start(ap, d);
    putFatal((struct str){0}, d, ap);
    va_end(ap);
    fflush(stdout);
    exit(EXIT_FAILURE);
}

// ---- B11a: a rule's text ----

//SPEC.md, beside the standard library: both are found from where the compiler itself is (B3)
static char* specPath(void) {
    static char buf[PATH_MAX];
    ssize_t n = readlink("/proc/self/exe", buf, sizeof(buf) - 16);
    if (n <= 0) return "SPEC.md";
    buf[n] = '\0';
    char* slash = strrchr(buf, '/');
    if (slash) *slash = '\0';
    strcat(buf, "/../SPEC.md");
    return buf;
}

//a line defining a rule: "**B1.**", "- **O25a.**", "**T6b (a title).**" - the rule's id, or 0 chars when it is none
static int ruleIdAt(const char* line, const char** id) {
    if (!strncmp(line, "- ", 2)) line += 2;
    if (strncmp(line, "**", 2) || !isupper((unsigned char)line[2]) || !isdigit((unsigned char)line[3])) return 0;
    const char* p = line + 3;
    while (isdigit((unsigned char)*p)) p++;
    while (islower((unsigned char)*p)) p++;
    if (strncmp(p, ".**", 3) && strncmp(p, " (", 2)) return 0;
    *id = line + 2;
    return (int)(p - (line + 2));
}

int ErrMsgExplain(char* rule) {
    char want[64];
    snprintf(want, sizeof(want), "%s", rule);
    want[0] = (char)toupper((unsigned char)want[0]);
    char* path = specPath();
    FILE* f = fopen(path, "r");
    if (!f) ErrUsage(ERR_NO_SPEC, path);
    char* line = NULL;
    size_t cap = 0;
    char* heading = NULL;
    bool in = false, found = false;
    int blanks = 0;
    while (getline(&line, &cap, f) > 0) {
        const char* id = ""; //set by ruleIdAt only where it finds a rule
        int idLen = ruleIdAt(line, &id);
        bool head = line[0] == '#';
        if (in && (idLen || head)) break;
        if (head) { free(heading); heading = strdup(line); continue; }
        if (!in && idLen == (int)strlen(want) && !strncmp(id, want, (size_t)idLen)) {
            in = found = true;
            //"### 10.1 Compilation modes" is "§10.1 Compilation modes"
            char* h = heading;
            while (h && (*h == '#' || *h == ' ')) h++;
            if (h) printf("%s%s\n", isdigit((unsigned char)*h) ? "\u00a7" : "", h);
        }
        if (!in) continue;
        if (line[0] == '\n') { blanks++; continue; } //written only if more of the rule follows
        for (; blanks; blanks--) putchar('\n');
        fputs(line, stdout);
    }
    free(line);
    free(heading);
    fclose(f);
    if (!found) ErrUsage(ERR_NO_RULE, want);
    return 0;
}

