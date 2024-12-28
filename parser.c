#include <stdlib.h>
#include <stdio.h>
#include "parser.h"
#include "token.h"
#include "error.h"

struct parserContext {
    TokenCtx tc; //contains fileName
};

void parseTypeDef(ParserCtx pc) {
    (void)pc; //TODO
}

void parserGlobalLevelSwitch(ParserCtx pc) {
    struct token tok = TokenFeed(pc->tc);
    switch (tok.type) {
        case TOKEN_TYPE: parseTypeDef(pc); break;
        default: SyntaxErrorInvalidToken(tok, NULL);
    }
}

ParserCtx ParseFile(char* fileName) {
    ParserCtx pc = calloc(sizeof(*pc), 1);
    CheckAllocPtr(pc);
    pc->tc = TokenizeFile(fileName);

    while (TokenPeek(pc->tc).type != TOKEN_EOF) {
        parserGlobalLevelSwitch(pc);
    }

    return pc;
}
