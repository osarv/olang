#include <stdlib.h>
#include <stdio.h>
#include <string.h>
#include "error.h"
#include "color.h"
#include "token.h"

static int nErrors = 0;

void FinishCompilation() {
    if (nErrors) {
        printf(COLOR_FG_RED "compilation failed with %d error(s)\n" COLOR_RESET, nErrors);
        exit(EXIT_FAILURE);
    }
    puts(COLOR_FG_GREEN "compilation succeeded" COLOR_RESET);
    exit(EXIT_SUCCESS);
}

void errorFatal(char* errMsg) {
    nErrors++;
    fputs(COLOR_FG_RED "fatal error: " COLOR_FG_YELLOW, stdout);
    fputs(errMsg, stdout);
    puts(COLOR_RESET);
    FinishCompilation();
}

void CheckAllocPtr(void* ptr) {
    if (!ptr) errorFatal("memory allocation failed");
}

void ErrorBugFound() {
    errorFatal("bug found");
}

void ErrorUnableToOpenFile(char* fileName) {
    char errMsg[strlen(fileName) + 100];
    errMsg[0] = '\0';

    strcat(errMsg, COLOR_FG_YELLOW "unable to open file \"" COLOR_FG_RED);
    strcat(errMsg, fileName);
    strcat(errMsg, COLOR_FG_YELLOW "\"" COLOR_RESET "\n");

    errorFatal(errMsg);
    FinishCompilation();
}

void printCharExpandNewLineEOF(char c) {
    if (c == '\n') fputs("\\n", stdout);
    else if (c == '\0') fputs("EOF", stdout);
    else putchar(c);
}

void printCharExpandSpaceNewLineEOF(char c) {
    if (c == ' ') fputs(COLOR_BG_RED " " COLOR_BG_RESET, stdout);
    else if (c == '\n') fputs("\\n", stdout);
    else if (c == '\0') fputs("EOF", stdout);
    else putchar(c);
}

#define MAX_CHARS_PER_LINE 80
void printErrorLines(TokenCtx tc, int errStart, int errEnd, void(*pErrChars)(char c)) {
    int linesStart = TokenGetPrevNewline(tc, errStart) +1;
    int linesEnd = TokenGetNextOrThisNewline(tc, errEnd);

    fputs(COLOR_FG_CYAN, stdout);
    for (int i = linesStart; i < errStart; i++) putchar(TokenGetChar(tc, i));
    fputs(COLOR_FG_RED, stdout);
    for (int i = errStart; i <= errEnd; i++) pErrChars(TokenGetChar(tc, i));
    fputs(COLOR_FG_CYAN, stdout);
    for (int i = errEnd +1; i < linesEnd; i++) putchar(TokenGetChar(tc, i));
    puts("\n" COLOR_RESET);
}

void printLastLineEOFError(TokenCtx tc) {
    int idx = TokenGetEOFIndex(tc);
    if (idx > 0) idx--;
    int lineStart = TokenGetPrevNewline(tc, idx) +1;

    fputs(COLOR_FG_CYAN, stdout);
    for (int i = lineStart; i < idx; i++) putchar(TokenGetChar(tc, i));
    fputs(COLOR_FG_RED, stdout);
    fputs("EOF", stdout);
    puts("\n" COLOR_RESET);
}

void syntaxErrorHeader(int lineNr, char* fileName, char* errMsg) { //NULL errMsg is defined
    nErrors++;
    printf(COLOR_FG_GREEN "%d %s ", lineNr, fileName);
    fputs(COLOR_FG_RED "error: " COLOR_FG_YELLOW, stdout);
    if (errMsg) fputs(errMsg, stdout);
    puts(COLOR_RESET);
}

void SyntaxErrorLastFedChar(TokenCtx tc, char* errMsg) { //NULL errMsg is defined
    syntaxErrorHeader(TokenGetLineNrLastFedChar(tc), TokenGetFileName(tc), errMsg);
    printErrorLines(tc, TokenGetCharCursor(tc) -1, TokenGetCharCursor(tc) -1, printCharExpandSpaceNewLineEOF);
}

static TokenCtx lastTokenErrorContext = NULL;
static int lastTokenErrorIndex = 0;

void SyntaxErrorInvalidToken(struct token tok, char* errMsg) { //NULL errMsg is defined
    if (lastTokenErrorContext != NULL && lastTokenErrorContext == tok.owner &&
            lastTokenErrorIndex == tok.tokListIdx) return;
    syntaxErrorHeader(tok.lineNr, TokenGetFileName(tok.owner), errMsg);
    if (tok.type == TOKEN_EOF) {
        printLastLineEOFError(tok.owner);
        return;
    }
    int startIndex =  TokenGetStrStart(tok.owner, tok.str);
    printErrorLines(tok.owner, startIndex, startIndex + tok.str.len -1, printCharExpandNewLineEOF);
    lastTokenErrorContext = tok.owner;
    lastTokenErrorIndex = tok.tokListIdx;
}
