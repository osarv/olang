#ifndef ERROR_H
#define ERROR_H

#include "token.h"

void FinishCompilation();
void CheckAllocPtr(void* ptr);
void ErrorBugFound();
void ErrorUnableToOpenFile(char* fileName);
void SyntaxErrorLastFedChar(TokenCtx tc, char* errMsg);

#endif //ERROR_H
