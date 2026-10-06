#include <stdlib.h>
#include <stdio.h>
#include <string.h>
#include "util.h"
#include "errmsg.h"
#include "token.h"

static int nErrors = 0;
int ErrMsgGetNErrors() {
    return nErrors;
}

//K4: diagnostics can be held back - a compilation that will be redone with more of the program decided
//(deferred top-level conditions, B9c) reports nothing from the attempt that is thrown away. Everything goes
//through eo(), which is the buffer while one is open.
static FILE* errBuf;
static char* errBufPtr;
static size_t errBufSize;
static int errsAtBufStart;
static FILE* errNull;
static int muteDepth;
static int errsAtMute;
static FILE* eo(void) {
    if (muteDepth) {
        if (!errNull) errNull = fopen("/dev/null", "w");
        return errNull;
    }
    return errBuf ? errBuf : stdout;
}

//K4: nothing between these is reported, and the count they leave is the count they found - for checking
//something speculatively (a condition in a context it may not fully belong to) where only "did it check"
//matters
void ErrMsgMuteStart(void) { if (muteDepth++ == 0) errsAtMute = nErrors; }
void ErrMsgMuteEnd(void) { if (--muteDepth == 0) nErrors = errsAtMute; }

void ErrMsgBufferStart(void) {
    if (errBuf) return;
    errBuf = open_memstream(&errBufPtr, &errBufSize);
    errsAtBufStart = nErrors;
}

void ErrMsgBufferFlush(void) {
    if (!errBuf) return;
    fclose(errBuf);
    errBuf = NULL;
    fwrite(errBufPtr, 1, errBufSize, stdout);
    free(errBufPtr);
}

void ErrMsgBufferDiscard(void) {
    if (!errBuf) return;
    fclose(errBuf);
    errBuf = NULL;
    free(errBufPtr);
    nErrors = errsAtBufStart;
}

void ErrMsgFinishCompilation() {
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
    ErrMsgBufferFlush(); //a fatal error ends the compilation, so whatever was held back is the real output
    nErrors++;
    fputs(COLOR_FG_RED "fatal error: " COLOR_FG_YELLOW, eo());
    fputs(errMsg, eo());
    { fputs(COLOR_RESET, eo()); fputc('\n', eo()); }
    ErrMsgFinishCompilation();
}

void pErrChar(char c) {
    if (c == '\t') fputs("\\t", eo());
    else if (c == '\n') fputs("\\n", eo());
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
    printErrorLine(tok.owner, startIndex, startIndex + tok.str.len -1);
}

#define NO_LINE_NR -1
void syntaxErrorHeader(int lineNr, struct str fileName, struct str errMsg) {
    nErrors++;
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

void ErrMsgSemantic(struct token tok, char* errMsg) {
    struct str fileName = TokenGetFileName(tok.owner);
    struct str err = StrFromCStr(errMsg);
    syntaxErrorHeader(tok.lineNr, fileName, err);
    if (tok.type == TOK_NONE) return;
    printTokErrorLineOneTok(tok);
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

void ErrMsgUnexpectedToken(struct token found, char* expected) {
    struct str fileName = TokenGetFileName(found.owner);
    char buf[found.str.len + (int)strlen(expected) + 64];
    buf[0] = '\0';
    strcat(buf, "unexpected token '");
    strncat(buf, found.str.ptr, found.str.len);
    strcat(buf, "' expected '");
    strcat(buf, expected);
    strcat(buf, "'");
    struct str err = StrFromCStr(buf);
    syntaxErrorHeader(found.lineNr, fileName, err);
    if (found.type == TOK_NONE) return;
    printTokErrorLineOneTok(found);
}
