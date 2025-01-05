#ifndef PARSER_H
#define PARSER_H

enum parseStatus {
    PARSE_SUCCESS = 0,
    PARSE_FAILURE
};

typedef struct parserContext* ParserCtx;
ParserCtx ParseFile(char* fileName);

#endif //PARSER_H
