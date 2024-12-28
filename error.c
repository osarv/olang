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
    char* errMsgStart = COLOR_FG_YELLOW "unable to open file \"" COLOR_FG_RED;
    char* errMsgEnd = COLOR_FG_YELLOW "\"" COLOR_RESET "\n";
    char errMsg[strlen(errMsgStart) + strlen(fileName) + strlen(errMsgEnd)];

    strcpy(errMsg, errMsgStart);
    strcpy(errMsg + strlen(errMsgStart), fileName);
    strcpy(errMsg + strlen(errMsgStart) + strlen(fileName), errMsgEnd);
    errMsg[strlen(errMsgStart) + strlen(fileName) + strlen(errMsgEnd) + 1] = '\0';

    errorFatal(errMsg);
    FinishCompilation();
}

void printCharExpandSilent(char c) {
    if (c == ' ') fputs(COLOR_BG_RED " " COLOR_BG_RESET, stdout);
    else if (c == '\n') fputs("\\n", stdout);
    else if (c == EOF) fputs("EOF", stdout);
    else putchar(c);
}

#define MAX_CHARS_PER_LINE 80
void printErrorLines(TokenCtx tc, int errStart, int errEnd) {
    int linesStart = TokenGetPrevNewline(tc, errStart) +1;
    int linesEnd = TokenGetNextOrThisNewline(tc, errEnd);

    fputs(COLOR_FG_BLUE, stdout);
    for (int i = linesStart; i < errStart; i++) putchar(TokenGetChar(tc, i));
    fputs(COLOR_FG_RED, stdout);
    for (int i = errStart; i <= errEnd; i++) printCharExpandSilent(TokenGetChar(tc, i));
    fputs(COLOR_FG_BLUE, stdout);
    for (int i = errEnd +1; i < linesEnd; i++) putchar(TokenGetChar(tc, i));
    puts("\n" COLOR_RESET);
}

void printLastFedCharExpanded(TokenCtx tc) {
    printCharExpandSilent(TokenGetChar(tc, TokenGetCharCursor(tc) -1));
}

void syntaxErrorHeader(int lineNr, char* fileName, char* errMsg) {
    nErrors++;
    printf(COLOR_FG_GREEN "%d %s ", lineNr, fileName);
    fputs(COLOR_FG_RED "error: " COLOR_FG_YELLOW, stdout);
    fputs(errMsg, stdout);
    puts(COLOR_RESET);
}

void SyntaxErrorLastFedChar(TokenCtx tc, char* errMsg) {
    syntaxErrorHeader(TokenGetLineNrLastFedChar(tc), TokenGetFileName(tc), errMsg);
    printErrorLines(tc, TokenGetCharCursor(tc) -1, TokenGetCharCursor(tc) -1);
}
