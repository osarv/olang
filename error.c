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
    puts(COLOR_FG_GREEN "compilation successful" COLOR_RESET);
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
    errorFatal("compiler bug found");
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

void printTokErrorLine(struct token tok) {
    int startIndex =  TokenGetStrStart(tok.owner, tok.str);
    printErrorLines(tok.owner, startIndex, startIndex + tok.str.len -1, printCharExpandNewLineEOF);
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
    struct str fileName = TokenGetFileName(tc);
    char buffer[fileName.len + 1];
    StrGetAsCStr(fileName, buffer);
    syntaxErrorHeader(TokenGetLineNrLastFedChar(tc), buffer, errMsg);
    printErrorLines(tc, TokenGetCharCursor(tc) -1, TokenGetCharCursor(tc) -1, printCharExpandSpaceNewLineEOF);
}

static int lastErrTokenId = -1;

void SyntaxErrorInvalidToken(struct token tok, char* errMsg) { //NULL errMsg is defined
    if (lastErrTokenId == tok.tokId) return;

    struct str fileName = TokenGetFileName(tok.owner);
    char buffer[fileName.len + 1];
    StrGetAsCStr(fileName, buffer);

    syntaxErrorHeader(tok.lineNr, buffer, errMsg);
    if (tok.type == TOKEN_EOF) {
        printLastLineEOFError(tok.owner);
        return;
    }
    printTokErrorLine(tok);
    lastErrTokenId = tok.tokId;
}

void SyntaxErrorOperandIncompatibleType(struct operand* o, char* errMsg) {
    struct str fileName = TokenGetFileName(o->tok.owner);
    char buffer[fileName.len + 1];
    StrGetAsCStr(fileName, buffer);
    syntaxErrorHeader(o->tok.lineNr, buffer, errMsg);
    printTokErrorLine(o->tok);
}

void SyntaxErrorOperandsNotSameSize(struct operand* a, struct operand* b) {
    struct str fileName = TokenGetFileName(a->tok.owner);
    char buffer[fileName.len + 1];
    StrGetAsCStr(fileName, buffer);
    syntaxErrorHeader(a->tok.lineNr, buffer, OPERANDS_NOT_SAME_SIZE);
    printTokErrorLine(a->tok);
    printTokErrorLine(b->tok);
}

void SyntaxErrorOperandsNotSameType(struct operand* a, struct operand* b) {
    struct str fileName = TokenGetFileName(a->tok.owner);
    char buffer[fileName.len + 1];
    StrGetAsCStr(fileName, buffer);
    syntaxErrorHeader(a->tok.lineNr, buffer, OPERANDS_NOT_SAME_TYPE);
    printTokErrorLine(a->tok);
    printTokErrorLine(b->tok);
}
