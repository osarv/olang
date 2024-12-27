#include <stdlib.h>
#include <stdio.h>
#include <string.h>
#include "error.h"
#include "color.h"
#include "token.h"

static int nErrors = 0;

void FinishCompilation() {
    if (nErrors) {
        printf(COLOR_RED "compilation failed with %d error(s)\n" COLOR_RESET, nErrors);
        exit(EXIT_FAILURE);
    }
    puts(COLOR_GREEN "compilation succeeded" COLOR_RESET);
    exit(EXIT_SUCCESS);
}

void errorFatal(char* errMsg) {
    nErrors++;
    fputs(COLOR_RED "error: " COLOR_YELLOW, stdout);
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
    char* errMsgStart = COLOR_YELLOW "unable to open file \"" COLOR_RED;
    char* errMsgEnd = COLOR_YELLOW "\"" COLOR_RESET "\n";
    char errMsg[strlen(errMsgStart) + strlen(fileName) + strlen(errMsgEnd)];

    strcpy(errMsg, errMsgStart);
    strcpy(errMsg + strlen(errMsgStart), fileName);
    strcpy(errMsg + strlen(errMsgStart) + strlen(fileName), errMsgEnd);
    errMsg[strlen(errMsgStart) + strlen(fileName) + strlen(errMsgEnd) + 1] = '\0';

    errorFatal(errMsg);
    FinishCompilation();
}

void printCharNewlinesEOFSilent(char c) {
    if (c == '\n');
    else if (c == EOF);
    else putchar(c);
}

#define MAX_CHARS_PER_LINE 80
void printLine(TokenCtx tc, int errStart, int errEnd) {
    fputs(COLOR_BLUE, stdout);
    int start = GetPrevNewline(tc, errStart) +1;
    int end = GetNextNewline(tc, errEnd);
    for (int i = start; i < end; i++) {
        printCharNewlinesEOFSilent(TokenGetCharArray(tc)[i]);
    }
    fputs(COLOR_RESET, stdout);
}

void printCharExpanded(char c) {
    if (c == '\n') fputs("NEWLINE", stdout);
    else if (c == EOF) fputs("EOF", stdout);
    else putchar(c);
}

void printLastFedCharExpanded(TokenCtx tc) {
    printCharExpanded(TokenGetCharArray(tc)[TokenGetCharCursor(tc) -1]);
}

void SyntaxErrorLastFedChar(TokenCtx tc, char* errMsg) {
    nErrors++;
    fputs(COLOR_RED "error: \"", stdout);
    printLastFedCharExpanded(tc);
    puts("\"" COLOR_YELLOW);
    puts(errMsg);
    fputs(COLOR_RED, stdout);
    printLine(tc, TokenGetCharCursor(tc) -1, TokenGetCharCursor(tc) -1);
    puts("\n" COLOR_RESET);
}
