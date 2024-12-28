#ifndef ERROR_H
#define ERROR_H

#include "token.h"
#include "parser.h"

void FinishCompilation();
void CheckAllocPtr(void* ptr);
void ErrorBugFound();
void ErrorUnableToOpenFile(char* fileName);
void SyntaxErrorLastFedChar(TokenCtx tc, char* errMsg); //NULL errMsg is defined
void SyntaxErrorInvalidToken(struct token tok, char* errMsg); //NULL errMsg is defined

#endif //ERROR_H
