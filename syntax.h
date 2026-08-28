#ifndef SYNTAX_H
#define SYNTAX_H

#include "list.h"
#include "token.h"
#include "util.h"

enum syntaxType {
    SNTX_TOP_DECL,
    SNTX_IMPORT,
    SNTX_NAME,
    SNTX_ARR_SFX,
    SNTX_TYPE_REF,
    SNTX_VOCAB_BODY,
    SNTX_STRUCT_MEMBR,
    SNTX_STRUCT_BODY,
    SNTX_TYPE_EXPR,
    SNTX_TYPE_DECL,
    SNTX_ERROR_DECL,
    SNTX_ERROR_LIST,
    SNTX_RET_TYPE,
    SNTX_PARAM,
    SNTX_PARAM_LIST,
    SNTX_FUNC_SIG,
    SNTX_FUNC_TYPE,
    SNTX_FUNC_DEF,
    SNTX_VAR_DECL,
    SNTX_ASSIGN_OP,
    SNTX_STMNT_ASSIGN,
    SNTX_STMNT_EXPR,
    SNTX_STMNT_IF,
    SNTX_FOR_INIT,
    SNTX_STMNT_FOR,
    SNTX_STMNT_DO,
    SNTX_STMNT_CASE,
    SNTX_STMNT_NOMATCH,
    SNTX_STMNT_MATCH,
    SNTX_STMNT_RET,
    SNTX_STMNT_EXIT,
    SNTX_STMNT,
    SNTX_BLOCK,
    SNTX_EXPR_ARGS,
    SNTX_EXPR_CALL,
    SNTX_EXPR_INDEX,
    SNTX_EXPR_MEMBR,
    SNTX_EXPR_PRIMARY,
    SNTX_EXPR_POSTFIX,
    SNTX_EXPR_UNARY_OP,
    SNTX_EXPR_UNARY,
    SNTX_EXPR_MUL,
    SNTX_EXPR_ADD,
    SNTX_EXPR_SHIFT,
    SNTX_EXPR_REL,
    SNTX_EXPR_EQ,
    SNTX_EXPR_BAND,
    SNTX_EXPR_BXOR,
    SNTX_EXPR_BOR,
    SNTX_EXPR_AND,
    SNTX_EXPR_XOR,
    SNTX_EXPR_OR,
    SNTX_EXPR,
    SNTX_NOT_FOUND
};

//a parse-tree node: pattern-matched shape identified by `type`, with the tokens/nested nodes it matched
struct syntax {
    enum syntaxType type;
    struct list parts; //list of struct syntaxPart
};

struct syntaxPart {
    bool isToken;
    struct token tok;    //valid when isToken
    struct syntax* sntx; //heap-allocated, valid when !isToken
};

//one parsed file: its token stream plus every top-level declaration (SNTX_TOP_DECL) found in it
struct syntaxModule {
    TokenCtx tc;
    struct list decls; //list of struct syntax
};

struct syntaxModule ParseSyntax(char* fileName);

#endif //SYNTAX_H
