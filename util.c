#include <stdlib.h>
#include <stdio.h>
#include <string.h>
#include "util.h"
#include "color.h"
#include "token.h"

struct str Str(char* ptr, int len) {
    struct str s;
    s.ptr = ptr;
    s.len = len;
    return s;
}

struct str StrFromCStr(char* cStr) {
    struct str s;
    s.ptr = cStr;
    s.len = strlen(cStr);
    return s;
}

void* MallocOrCrash(size_t size) {
    void* ptr = malloc(size);
    if (!ptr) {
        fputs(COLOR_RED "ERROR: " COLOR_RESET "memory allocation failed\n", stderr);
        exit(EXIT_FAILURE);
    }
    return ptr;
}

void* CallocOrCrash(size_t size) {
    void* ptr = calloc(size, 1);
    if (!ptr) {
        fputs(COLOR_RED "ERROR: " COLOR_RESET "memory allocation failed\n", stderr);
        exit(EXIT_FAILURE);
    }
    return ptr;
}

void* ReallocOrCrash(void* oldPtr, size_t size) {
    void* ptr = realloc(oldPtr, size);
    if (!ptr) {
        fputs(COLOR_RED "ERROR: " COLOR_RESET "memory allocation failed\n", stderr);
        exit(EXIT_FAILURE);
    }
    return ptr;
}

void ErrorBugFound() {
    fputs(COLOR_RED "ERROR: bug found\n" COLOR_RESET, stderr);
    exit(EXIT_FAILURE);
}

/*
void ErrorUnableToOpenFile(char* fileName) {
    char errMsg[strlen(fileName) + 100];
    errMsg[0] = '\0';

    strcat(errMsg, COLOR_FG_YELLOW "unable to open file \"" COLOR_FG_RED);
    strcat(errMsg, fileName);
    strcat(errMsg, COLOR_FG_YELLOW "\"" COLOR_RESET "\n");

    ErrorFatal(errMsg);
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

void printTokErrorLineOneTok(struct token tok) {
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

#define NO_LINE_NR -1
void syntaxErrorHeader(int lineNr, struct str fileName, struct str errMsg) {
    nSyntaxErrors++;
    fputs(COLOR_FG_GREEN, stdout);
    if (lineNr != NO_LINE_NR) printf("%d ", lineNr);
    StrPrint(fileName, stdout);
    fputs(COLOR_FG_RED " error: " COLOR_FG_YELLOW, stdout);
    StrPrint(errMsg, stdout);
    puts(COLOR_RESET);
}

void SyntaxErrorInfo(TokenCtx tc, char* errMsg) {
    struct str err = StrFromCStr(errMsg);
    syntaxErrorHeader(NO_LINE_NR, TokenGetFileName(tc), err);
    StrDestroy(err);
}

void SyntaxErrorLastFedChar(TokenCtx tc, char* errMsg) {
    struct str err = StrFromCStr(errMsg);
    syntaxErrorHeader(TokenGetLineNrLastFedChar(tc), TokenGetFileName(tc), err);
    StrDestroy(err);
    printErrorLines(tc, TokenGetCharCursor(tc) -1, TokenGetCharCursor(tc) -1, printCharExpandSpaceNewLineEOF);
}

void SyntaxErrorOperandIncompatibleType(struct operand* o, struct type t) {
    struct str fileName = TokenGetFileName(o->tok.owner);
    struct str errMsg = StrFromCStr("operand can not be used as type \"");
    errMsg = StrMerge(errMsg, t.tok.str);
    StrAppendChar(&errMsg, '"');
    syntaxErrorHeader(o->tok.lineNr, fileName, errMsg);
    printTokErrorLineOneTok(o->tok);
}

void printTokErrorLineTwoTok(struct token tokA, struct token tokB) { //assumes tokA preceeds tokB
    TokenCtx tc = tokA.owner; 
    int aStart =  TokenGetStrStart(tc, tokA.str);
    int bStart =  TokenGetStrStart(tc, tokB.str);
    int linesStart = TokenGetPrevNewline(tc, aStart) +1;
    int linesEnd = TokenGetNextOrThisNewline(tc, bStart + tokB.str.len);

    int i = linesStart;
    fputs(COLOR_FG_CYAN, stdout);
    for (; i < aStart; i++) putchar(TokenGetChar(tc, i));
    fputs(COLOR_FG_RED, stdout);
    for (; i <= aStart + tokA.str.len; i++) printCharExpandNewLineEOF(TokenGetChar(tc, i));
    fputs(COLOR_FG_CYAN, stdout);
    for (; i < bStart; i++) putchar(TokenGetChar(tc, i));
    fputs(COLOR_FG_RED, stdout);
    for (; i <= bStart + tokB.str.len; i++) printCharExpandNewLineEOF(TokenGetChar(tc, i));
    fputs(COLOR_FG_CYAN, stdout);
    for (; i < linesEnd; i++) putchar(TokenGetChar(tc, i));
    puts("\n" COLOR_RESET);
}

void SyntaxErrorOperandsNotSameSize(struct operand* a, struct operand* b) {
    struct str fileName = TokenGetFileName(a->tok.owner);
    syntaxErrorHeader(a->tok.lineNr, fileName, StrFromCStr(OPERANDS_NOT_SAME_SIZE));
    printTokErrorLineOneTok(b->tok);
}

void SyntaxErrorOperandsNotSameType(struct operand* a, struct operand* b) { //assumes tokA preceeds tokB
    struct str fileName = TokenGetFileName(a->tok.owner);
    syntaxErrorHeader(a->tok.lineNr, fileName, StrFromCStr(OPERANDS_NOT_SAME_TYPE));
    printTokErrorLineTwoTok(a->tok, b->tok);
}
*/
