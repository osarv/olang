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
    nErrors++;
    fputs(COLOR_FG_RED "fatal error: " COLOR_FG_YELLOW, stdout);
    fputs(errMsg, stdout);
    puts(COLOR_RESET);
    ErrMsgFinishCompilation();
}

void pErrChar(char c) {
    if (c == '\t') fputs("\\t", stdout);
    else if (c == '\n') fputs("\\n", stdout);
    else putchar(c);
}

#define MAX_CHARS_PER_LINE 80
void printErrorLine(TokenCtx tc, int errStart, int errEnd) {
    int linesStart = TokenGetLineStart(tc, errStart) +1;
    int linesEnd = TokenGetLineEnd(tc, errEnd);

    fputs(COLOR_FG_CYAN, stdout);
    for (int i = linesStart; i < errStart; i++) putchar(TokenGetChar(tc, i));
    fputs(COLOR_FG_RED, stdout);
    for (int i = errStart; i <= errEnd; i++) pErrChar(TokenGetChar(tc, i));
    fputs(COLOR_FG_CYAN, stdout);
    for (int i = errEnd +1; i < linesEnd; i++) putchar(TokenGetChar(tc, i));
    puts("\n" COLOR_RESET);
}

void printTokErrorLineOneTok(struct token tok) {
    int startIndex = TokenGetStrStart(tok);
    printErrorLine(tok.owner, startIndex, startIndex + tok.str.len -1);
}

#define NO_LINE_NR -1
void syntaxErrorHeader(int lineNr, struct str fileName, struct str errMsg) {
    nErrors++;
    fputs(COLOR_FG_GREEN, stdout);
    if (lineNr != NO_LINE_NR) printf("%d ", lineNr);
    StrPrint(fileName, stdout);
    fputs(COLOR_FG_RED " error: " COLOR_FG_YELLOW, stdout);
    StrPrint(errMsg, stdout);
    puts(COLOR_RESET);
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
