#include <stdlib.h>
#include <stdio.h>
#include <string.h>
#include <limits.h>
#include <signal.h>
#include <unistd.h>
#include "util.h"
#include "errmsg.h"
#include "token.h"

static int nErrors = 0;
static int nSyntaxErrors = 0;
int ErrMsgGetNErrors() {
    return nErrors;
}
//a syntax error can hide a declaration (a main that did not parse), so checks that something is missing ask
int ErrMsgGetNSyntaxErrors() {
    return nSyntaxErrors;
}

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
static FILE* errNull;
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

static FILE* eo(void) {
    if (muteDepth) {
        if (!errNull) errNull = fopen("/dev/null", "w");
        return errNull;
    }
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

static void freeRecords(int from) {
    closeCur();
    for (int i = from; i < nRecs; i++) { free(recs[i]->text); free(recs[i]); }
    nRecs = from;
}

void ErrMsgFlush(void) {
    if (buffering) return; //held back until the attempt is kept or thrown away
    closeCur();
    for (int i = 0; i < nRecs; i++) {
        recs[i]->fileRank = i;
        for (int j = 0; j < i; j++) if (StrCmp(recs[j]->file, recs[i]->file)) { recs[i]->fileRank = recs[j]->fileRank; break; }
    }
    qsort(recs, nRecs, sizeof(*recs), recCmp);
    for (int i = 0; i < nRecs; i++) fwrite(recs[i]->text, 1, recs[i]->size, stdout);
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

static void onCrash(int sig) {
    //B3e: under -i an abort is the interpreted program's own - a check it guarantees failed, its message written
    if (interpreting && sig == SIGABRT) raise(sig);
    const char* what = sig == SIGSEGV ? "a segmentation fault" : sig == SIGBUS ? "a bus error"
                     : sig == SIGFPE ? "an arithmetic fault" : sig == SIGILL ? "an illegal instruction" : "an abort";
    static const char head[] = "olang: internal compiler error - the compiler crashed (";
    static const char tail[] = "). This is a bug in the compiler, not in the program.\n";
    //an extern function the interpreted program calls runs in this process too (B3e), so a crash under -i may be
    //the program's - a wrong prototype is undefined behaviour (X1a)
    static const char tailRun[] = ") while interpreting - in a foreign function the program calls, if its extern "
                                  "declaration is wrong (X1a), or else a bug in the compiler.\n";
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

//errors already found are still shown when the compiler exits early
static void ensureFlushHooks(void) {
    static bool done;
    if (done) return;
    done = true;
    atexit(flushAtExit);
}

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
    if (nErrors == 1) {
        printf(COLOR_FG_RED "compilation failed with 1 error\n" COLOR_RESET);
        exit(EXIT_FAILURE);
    }
    else if (nErrors) {
        printf(COLOR_FG_RED "compilation failed with %d error(s)\n" COLOR_RESET, nErrors);
        exit(EXIT_FAILURE);
    }
    puts(COLOR_FG_GREEN "compilation successful" COLOR_RESET);
    exit(EXIT_SUCCESS);
}

void ErrMsgFatal(char* errMsg) {
    flushAtExit(); //a fatal error ends the compilation: what is already certain is shown, and the reason
    nErrors++;
    fputs(COLOR_FG_RED "fatal error: " COLOR_FG_YELLOW, stdout);
    fputs(errMsg, stdout);
    { fputs(COLOR_RESET, stdout); fputc('\n', stdout); }
    ErrMsgFinishCompilation();
}

void pErrChar(char c) {
    if (c == '\t') fputs("\\t", eo());
    else if (c == '\n') fputs("\\n", eo());
    else if (c == '\r') fputs("\\r", eo());
    else if (c == '\0') fputs("\\0", eo());
    else fputc(c, eo());
}

#define MAX_CHARS_PER_LINE 80
void printErrorLine(TokenCtx tc, int errStart, int errEnd) {
    int linesStart = TokenGetLineStart(tc, errStart) +1;
    int linesEnd = TokenGetLineEnd(tc, errEnd);

    fputs(COLOR_FG_CYAN, eo());
    for (int i = linesStart; i < errStart; i++) fputc(TokenGetChar(tc, i), eo());
    fputs(COLOR_FG_RED, eo());
    for (int i = errStart; i <= errEnd; i++) pErrChar(TokenGetChar(tc, i));
    fputs(COLOR_FG_CYAN, eo());
    for (int i = errEnd +1; i < linesEnd; i++) fputc(TokenGetChar(tc, i), eo());
    { fputs("\n" COLOR_RESET, eo()); fputc('\n', eo()); }
}

void printTokErrorLineOneTok(struct token tok) {
    int startIndex = TokenGetStrStart(tok);
    printErrorLine(tok.owner, startIndex, startIndex + TokenGetStrLen(tok) -1);
}

#define NO_LINE_NR -1
void syntaxErrorHeader(int lineNr, struct str fileName, struct str errMsg) {
    nErrors++;
    ensureFlushHooks();
    if (!muteDepth) newRecord(fileName, lineNr == NO_LINE_NR ? INT_MAX : lineNr);
    fputs(COLOR_FG_GREEN, eo());
    if (lineNr != NO_LINE_NR) fprintf(eo(), "%d ", lineNr);
    StrPrint(fileName, eo());
    fputs(COLOR_FG_RED " error: " COLOR_FG_YELLOW, eo());
    StrPrint(errMsg, eo());
    { fputs(COLOR_RESET, eo()); fputc('\n', eo()); }
}


void ErrMsgUnableToOpenFile(struct str fileName) {
    char buf[fileName.len + 64];
    buf[0] = '\0';
    strcat(buf, "unable to open file \"");
    strncat(buf, fileName.ptr, fileName.len);
    strcat(buf, "\"");
    ErrMsgFatal(buf);
}

void ErrMsgNotARegularFile(struct str fileName) {
    char buf[fileName.len + 64];
    buf[0] = '\0';
    strcat(buf, "\"");
    strncat(buf, fileName.ptr, fileName.len);
    strcat(buf, "\": " NOT_A_REGULAR_FILE);
    ErrMsgFatal(buf);
}

void ErrMsgUnexpectedChar(TokenCtx tc, char* errMsg) {
    nSyntaxErrors++;
    struct str fileName = TokenGetFileName(tc);
    struct str err = StrFromCStr(errMsg);
    syntaxErrorHeader(TokenGetLineNr(tc), fileName, err);
    int idx = TokenGetCharCursor(tc) -1;
    printErrorLine(tc, idx, idx);
}

void ErrMsgFile(struct str fileName, char* errMsg) {
    struct str err = StrFromCStr(errMsg);
    syntaxErrorHeader(NO_LINE_NR, fileName, err);
}

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

void ErrMsgSemanticNote(struct token tok, char* msg);
void ErrMsgSemantic(struct token tok, char* errMsg) {
    struct str fileName = TokenGetFileName(tok.owner);
    struct str err = StrFromCStr(errMsg);
    syntaxErrorHeader(tok.lineNr, fileName, err);
    if (tok.type != TOK_NONE) printTokErrorLineOneTok(tok);
    int top = errContextDepth < ERR_CONTEXT_MAX ? errContextDepth : ERR_CONTEXT_MAX;
    for (int i = top - 1, shown = 0; i >= 0 && shown < ERR_CONTEXT_SHOWN; i--) {
        if (!errContexts[i].msg || errContexts[i].tok.type == TOK_NONE) continue;
        ErrMsgSemanticNote(errContexts[i].tok, errContexts[i].msg);
        shown++;
    }
}

//a note attached to the error just reported: not an error of its own, so it counts nothing
void ErrMsgSemanticNote(struct token tok, char* msg) {
    fputs(COLOR_FG_GREEN, eo());
    fprintf(eo(), "%d ", tok.lineNr);
    StrPrint(TokenGetFileName(tok.owner), eo());
    fputs(COLOR_FG_CYAN " note: " COLOR_FG_YELLOW, eo());
    fputs(msg, eo());
    { fputs(COLOR_RESET, eo()); fputc('\n', eo()); }
    printTokErrorLineOneTok(tok);
}

//a syntax error worded for what was probably meant, rather than as "unexpected X, expected Y"
void ErrMsgSyntax(struct token tok, char* errMsg) {
    nSyntaxErrors++;
    ErrMsgSemantic(tok, errMsg);
}

//a token named as it reads - a statement end is synthesized at a line's end (L18) and has no text of its own
void ErrMsgUnexpectedToken(struct token found, char* expected) {
    nSyntaxErrors++;
    struct str fileName = TokenGetFileName(found.owner);
    char* buf = NULL;
    size_t size = 0;
    FILE* f = open_memstream(&buf, &size);
    if (found.type == TOK_STMNT_END) fputs("unexpected end of line", f);
    else if (found.type == TOK_NONE) fputs("unexpected end of file", f);
    else fprintf(f, "unexpected token '%.*s'", found.str.len, found.str.ptr);
    fprintf(f, ", expected '%s'", expected);
    fclose(f);
    struct str err = StrFromCStr(buf);
    syntaxErrorHeader(found.lineNr, fileName, err);
    free(buf);
    if (found.type == TOK_NONE || !found.owner) return;
    if (found.type == TOK_STMNT_END) {
        //nothing to underline: the place just past the line's last token
        int at = TokenGetStrStart(found);
        printErrorLine(found.owner, at, at);
        return;
    }
    printTokErrorLineOneTok(found);
}
