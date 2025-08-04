#include <stdlib.h>
#include <stdio.h>
#include <string.h>
#include "util.h"
#include "color.h"
#include "token.h"

static int nSyntaxErrors = 0;

void FinishCompilation() {
    if (nSyntaxErrors == 1) {
        printf(COLOR_FG_RED "compilation failed with 1 error\n" COLOR_RESET);
        exit(EXIT_FAILURE);
    }
    else if (nSyntaxErrors) {
        printf(COLOR_FG_RED "compilation failed with %d error(s)\n" COLOR_RESET, nSyntaxErrors);
        exit(EXIT_FAILURE);
    }
    puts(COLOR_FG_GREEN "compilation successful" COLOR_RESET);
    exit(EXIT_SUCCESS);
}

void errorFatal(char* errMsg) {
    nSyntaxErrors++;
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

void syntaxErrorHeader(int lineNr, struct str fileName, struct str errMsg) {
    nSyntaxErrors++;
    printf(COLOR_FG_GREEN "%d ", lineNr);
    StrPrint(fileName, stdout);
    fputs(COLOR_FG_RED " error: " COLOR_FG_YELLOW, stdout);
    StrPrint(errMsg, stdout);
    puts(COLOR_RESET);
}

void SyntaxErrorLastFedChar(TokenCtx tc, char* errMsg) {
    struct str err = StrFromCStr(errMsg);
    syntaxErrorHeader(TokenGetLineNrLastFedChar(tc), TokenGetFileName(tc), err);
    StrDestroy(err);
    printErrorLines(tc, TokenGetCharCursor(tc) -1, TokenGetCharCursor(tc) -1, printCharExpandSpaceNewLineEOF);
}

void SyntaxErrorInvalidToken(struct token tok, char* errMsg) {
    struct str fileName = TokenGetFileName(tok.owner);
    struct str err = StrFromCStr(errMsg);
    syntaxErrorHeader(tok.lineNr, fileName, err);
    StrDestroy(err);
    if (tok.type == TOKEN_EOF) {
        printLastLineEOFError(tok.owner);
        return;
    }
    printTokErrorLine(tok);
}

void SyntaxErrorOperandIncompatibleType(struct operand* o, struct type t) {
    struct str fileName = TokenGetFileName(o->tok.owner);
    struct str errMsg = StrFromCStr("operand can not be used as type \"");
    errMsg = StrMerge(errMsg, t.tok.str);
    StrAppendChar(&errMsg, '"');
    syntaxErrorHeader(o->tok.lineNr, fileName, errMsg);
    printTokErrorLine(o->tok);
}

void SyntaxErrorOperandsNotSameSize(struct operand* a, struct operand* b) {
    struct str fileName = TokenGetFileName(a->tok.owner);
    syntaxErrorHeader(a->tok.lineNr, fileName, StrFromCStr(OPERANDS_NOT_SAME_SIZE));
    printTokErrorLine(a->tok);
    printTokErrorLine(b->tok);
}

void SyntaxErrorOperandsNotSameType(struct operand* a, struct operand* b) {
    struct str fileName = TokenGetFileName(a->tok.owner);
    syntaxErrorHeader(a->tok.lineNr, fileName, StrFromCStr(OPERANDS_NOT_SAME_TYPE));
    printTokErrorLine(a->tok);
    printTokErrorLine(b->tok);
}
