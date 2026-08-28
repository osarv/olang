#include <stdlib.h>
#include <stdio.h>
#include <stdbool.h>
#include <string.h>
#include "util.h"
#include "list.h"
#include "token.h"
#include "syntax.h"
#include "type.h"
#include "var.h"
#include "operation.h"
#include "statement.h"
#include "errmsg.h"
#include "semantic.h"

struct semaImport {
    struct str alias;
    struct semaModule* mod;
};

struct semaModule {
    struct str fileName;
    struct syntaxModule syn;
    struct list types;   //list of struct type
    struct list vars;    //list of struct var: globals and functions share one namespace
    struct list imports; //list of struct semaImport
};

static struct list allModules; //list of struct semaModule*
static struct semaModule* rootModule;

// ---- parse tree walking helpers ----

struct syntaxPart* partAt(struct syntax* s, int i) {
    return ListGetIdx(&s->parts, i);
}

struct syntax* partSntx(struct syntax* s, int i) {
    return partAt(s, i)->sntx;
}

struct syntax* firstPartOfType(struct syntax* s, enum syntaxType t) {
    for (int i = 0; i < s->parts.len; i++) {
        struct syntaxPart* p = partAt(s, i);
        if (!p->isToken && p->sntx->type == t) return p->sntx;
    }
    return NULL;
}

struct list allPartsOfType(struct syntax* s, enum syntaxType t) {
    struct list result = ListInit(sizeof(struct syntax*));
    for (int i = 0; i < s->parts.len; i++) {
        struct syntaxPart* p = partAt(s, i);
        if (!p->isToken && p->sntx->type == t) ListAdd(&result, &p->sntx);
    }
    return result;
}

bool hasTokOfType(struct syntax* s, enum tokenType t) {
    for (int i = 0; i < s->parts.len; i++) {
        struct syntaxPart* p = partAt(s, i);
        if (p->isToken && p->tok.type == t) return true;
    }
    return false;
}

struct token firstTokOfType(struct syntax* s, enum tokenType t) {
    for (int i = 0; i < s->parts.len; i++) {
        struct syntaxPart* p = partAt(s, i);
        if (p->isToken && p->tok.type == t) return p->tok;
    }
    ErrorBugFound();
    return (struct token){0};
}

struct list allTokOfType(struct syntax* s, enum tokenType t) {
    struct list result = ListInit(sizeof(struct token));
    for (int i = 0; i < s->parts.len; i++) {
        struct syntaxPart* p = partAt(s, i);
        if (p->isToken && p->tok.type == t) ListAdd(&result, &p->tok);
    }
    return result;
}

struct str strFromTok(struct token tok) {
    return Str(tok.str.ptr, tok.str.len);
}

// ---- visibility ----

bool isPublic(struct str name) {
    if (name.len <= 0) ErrorBugFound();
    char c = name.ptr[0];
    return c >= 'A' && c <= 'Z';
}

// ---- module loading ----

bool semaModuleCmpForList(void* name, void* elem) {
    struct str searchName = *(struct str*)name;
    struct semaModule* m = *(struct semaModule**)elem;
    return StrCmp(searchName, m->fileName);
}

struct semaModule* findLoadedModule(struct str fileName) {
    struct semaModule** slot = ListGetCmp(&allModules, &fileName, semaModuleCmpForList);
    return slot ? *slot : NULL;
}

struct semaModule* semaLoadModule(struct str fileName) {
    struct semaModule* existing = findLoadedModule(fileName);
    if (existing) return existing;

    struct semaModule* mod = MallocOrCrash(sizeof(struct semaModule));
    *mod = (struct semaModule){0};
    mod->fileName = fileName;
    mod->types = ListInit(sizeof(struct type));
    mod->vars = ListInit(sizeof(struct var));
    mod->imports = ListInit(sizeof(struct semaImport));
    ListAdd(&allModules, &mod); //register before recursing, to break import cycles

    //heap-allocated, not a stack buffer: TokenizeFile/StrFromCStr alias this pointer for the whole
    //compilation (used later whenever an error is reported), they don't copy it
    char* buf = MallocOrCrash((size_t)fileName.len +1);
    StrToCStr(fileName, buf);
    mod->syn = ParseSyntax(buf);

    for (int i = 0; i < mod->syn.decls.len; i++) {
        struct syntax* decl = ListGetIdx(&mod->syn.decls, i);
        struct syntax* actual = partSntx(decl, 0);
        if (actual->type != SNTX_IMPORT) continue;

        struct token aliasTok = firstTokOfType(actual, TOK_IDEN);
        struct token pathTok = firstTokOfType(actual, TOK_STR_LIT);
        struct str path = Str(pathTok.str.ptr +1, pathTok.str.len -2);
        struct semaModule* target = semaLoadModule(path);

        struct semaImport imp = {0};
        imp.alias = strFromTok(aliasTok);
        imp.mod = target;
        ListAdd(&mod->imports, &imp);
    }
    return mod;
}

struct semaModule* findImport(struct semaModule* mod, struct str alias) {
    for (int i = 0; i < mod->imports.len; i++) {
        struct semaImport* imp = ListGetIdx(&mod->imports, i);
        if (StrCmp(imp->alias, alias)) return imp->mod;
    }
    return NULL;
}

// ---- pass 1: collect top-level names ----

void collectType(struct semaModule* mod, struct token nameTok, enum baseType bType) {
    struct str name = strFromTok(nameTok);
    if (TypeGetList(&mod->types, name)) { ErrMsgSemantic(nameTok, TYPE_NAME_IN_USE); return; }
    struct type t = (struct type){0};
    t.owner = mod;
    t.bType = bType;
    t.name = name;
    t.tok = nameTok;
    t.placeholder = true;
    ListAdd(&mod->types, &t);
}

void collectVar(struct semaModule* mod, struct token nameTok, bool mut) {
    struct str name = strFromTok(nameTok);
    if (VarGetList(&mod->vars, name)) { ErrMsgSemantic(nameTok, VAR_NAME_IN_USE); return; }
    struct var v = (struct var){0};
    v.name = name;
    v.tok = nameTok;
    v.mut = mut;
    v.type.placeholder = true;
    ListAdd(&mod->vars, &v);
}

void semaCollectNames(struct semaModule* mod) {
    for (int i = 0; i < mod->syn.decls.len; i++) {
        struct syntax* decl = ListGetIdx(&mod->syn.decls, i);
        struct syntax* actual = partSntx(decl, 0);
        switch (actual->type) {
            case SNTX_TYPE_DECL:
                collectType(mod, firstTokOfType(actual, TOK_IDEN), BASETYPE_VOID);
                break;
            case SNTX_ERROR_DECL:
                collectType(mod, firstTokOfType(actual, TOK_IDEN), BASETYPE_ERROR);
                break;
            case SNTX_FUNC_DEF:
                collectVar(mod, firstTokOfType(actual, TOK_IDEN), false);
                break;
            case SNTX_VAR_DECL:
                collectVar(mod, firstTokOfType(actual, TOK_IDEN), hasTokOfType(actual, TOK_MUT));
                break;
            case SNTX_IMPORT:
                break;
            default:
                ErrorBugFound();
        }
    }
}

// ---- pass 2: resolve type shapes and function signatures ----

struct type resolveTypeExpr(struct semaModule* mod, struct syntax* typeExprNode);
void resolveTypeDecl(struct type* t);

//base type a name resolves to, before any array suffixes on the reference are applied
struct type resolveTypeRefBase(struct semaModule* mod, struct syntax* refNode) {
    struct syntax* nameNode = firstPartOfType(refNode, SNTX_NAME);
    struct list idens = allTokOfType(nameNode, TOK_IDEN);
    struct token nameTok;
    struct type* found;

    if (idens.len == 1) {
        nameTok = *(struct token*)ListGetIdx(&idens, 0);
        struct str name = strFromTok(nameTok);
        found = TypeGetList(&mod->types, name);
        if (!found) {
            switch (name.len) {
                case 4:
                    if (!strncmp(name.ptr, "bool", 4)) { struct type v = TypeVanilla(BASETYPE_BOOL); v.tok = nameTok; return v; }
                    break;
                case 5:
                    if (!strncmp(name.ptr, "int32", 5)) { struct type v = TypeVanilla(BASETYPE_INT32); v.tok = nameTok; return v; }
                    if (!strncmp(name.ptr, "int64", 5)) { struct type v = TypeVanilla(BASETYPE_INT64); v.tok = nameTok; return v; }
                    break;
                default: break;
            }
            if (StrCmp(name, StrFromCStr("byte"))) { struct type v = TypeVanilla(BASETYPE_BYTE); v.tok = nameTok; return v; }
            if (StrCmp(name, StrFromCStr("float32"))) { struct type v = TypeVanilla(BASETYPE_FLOAT32); v.tok = nameTok; return v; }
            if (StrCmp(name, StrFromCStr("float64"))) { struct type v = TypeVanilla(BASETYPE_FLOAT64); v.tok = nameTok; return v; }
            ErrMsgSemantic(nameTok, UNKNOWN_TYPE);
            return TypeVanilla(BASETYPE_INT32);
        }
    } else {
        struct token aliasTok = *(struct token*)ListGetIdx(&idens, 0);
        nameTok = *(struct token*)ListGetIdx(&idens, 1);
        struct semaModule* target = findImport(mod, strFromTok(aliasTok));
        if (!target) { ErrMsgSemantic(aliasTok, UNKNOWN_NAMESPACE); return TypeVanilla(BASETYPE_INT32); }
        struct str name = strFromTok(nameTok);
        found = TypeGetList(&target->types, name);
        if (!found) { ErrMsgSemantic(nameTok, UNKNOWN_TYPE); return TypeVanilla(BASETYPE_INT32); }
        if (!isPublic(name)) { ErrMsgSemantic(nameTok, TYPE_IS_PRIVATE); return TypeVanilla(BASETYPE_INT32); }
    }

    bool malloced = hasTokOfType(refNode, TOK_CURLY_O);
    //a "{}"-indirect reference is a pointer, not an embedding - it must not force full resolution of
    //the referenced type, since that's exactly what lets two structs recursively embed each other
    if (!malloced) resolveTypeDecl(found);
    struct type result = *found;
    result.structMAlloc = malloced;
    return result;
}

struct type resolveTypeRef(struct semaModule* mod, struct syntax* refNode) {
    struct type result = resolveTypeRefBase(mod, refNode);

    struct list sfx = allPartsOfType(refNode, SNTX_ARR_SFX);
    for (int i = 0; i < sfx.len; i++) {
        struct syntax* s = *(struct syntax**)ListGetIdx(&sfx, i);
        struct type wrapped = (struct type){0};
        wrapped.bType = BASETYPE_ARRAY;
        wrapped.arrElem = MallocOrCrash(sizeof(struct type));
        *wrapped.arrElem = result;
        struct syntax* sizeExprNode = firstPartOfType(s, SNTX_EXPR);
        wrapped.arrMalloc = (sizeExprNode == NULL);
        result = wrapped;
    }
    return result;
}

struct type resolveVocabBody(struct semaModule* mod, struct token nameTok, struct syntax* bodyNode) {
    (void)mod;
    struct type t = (struct type){0};
    t.bType = BASETYPE_VOCAB;
    t.tok = nameTok;
    t.words = allTokOfType(bodyNode, TOK_IDEN);
    for (int i = 0; i < t.words.len; i++) {
        struct token w = *(struct token*)ListGetIdx(&t.words, i);
        for (int j = 0; j < i; j++) {
            struct token other = *(struct token*)ListGetIdx(&t.words, j);
            if (StrCmp(strFromTok(w), strFromTok(other))) { ErrMsgSemantic(w, VOCAB_WORD_ALREADY_IN_USE); break; }
        }
    }
    return t;
}

struct type resolveStructBody(struct semaModule* mod, struct token nameTok, struct syntax* bodyNode) {
    struct type t = (struct type){0};
    t.bType = BASETYPE_STRUCT;
    t.tok = nameTok;
    t.vars = ListInit(sizeof(struct var));

    struct list members = allPartsOfType(bodyNode, SNTX_STRUCT_MEMBR);
    for (int i = 0; i < members.len; i++) {
        struct syntax* m = *(struct syntax**)ListGetIdx(&members, i);
        struct token memberTok = firstTokOfType(m, TOK_IDEN);
        struct str memberName = strFromTok(memberTok);
        if (VarGetList(&t.vars, memberName)) { ErrMsgSemantic(memberTok, VAR_NAME_IN_USE); continue; }
        struct syntax* typeExprNode = firstPartOfType(m, SNTX_TYPE_EXPR);
        struct var v = (struct var){0};
        v.name = memberName;
        v.tok = memberTok;
        v.mut = true;
        v.type = resolveTypeExpr(mod, typeExprNode);
        ListAdd(&t.vars, &v);
    }
    return t;
}

void resolveParamList(struct semaModule* mod, struct syntax* paramListNode, struct list* out) {
    *out = ListInit(sizeof(struct var));
    struct list params = allPartsOfType(paramListNode, SNTX_PARAM);
    for (int i = 0; i < params.len; i++) {
        struct syntax* p = *(struct syntax**)ListGetIdx(&params, i);
        struct token nameTok = firstTokOfType(p, TOK_IDEN);
        struct str name = strFromTok(nameTok);
        if (VarGetList(out, name)) { ErrMsgSemantic(nameTok, VAR_NAME_IN_USE); continue; }
        struct var v = (struct var){0};
        v.name = name;
        v.tok = nameTok;
        v.mut = hasTokOfType(p, TOK_MUT);
        v.type = resolveTypeExpr(mod, firstPartOfType(p, SNTX_TYPE_EXPR));
        ListAdd(out, &v);
    }
}

struct type resolveFuncSig(struct semaModule* mod, struct syntax* sigNode) {
    struct type t = (struct type){0};
    t.bType = BASETYPE_FUNC;
    resolveParamList(mod, firstPartOfType(sigNode, SNTX_PARAM_LIST), &t.vars);

    t.errors = ListInit(sizeof(struct type*));
    struct syntax* errListNode = firstPartOfType(sigNode, SNTX_ERROR_LIST);
    if (errListNode) {
        struct list names = allTokOfType(errListNode, TOK_IDEN);
        for (int i = 0; i < names.len; i++) {
            struct token nameTok = *(struct token*)ListGetIdx(&names, i);
            struct type* errType = TypeGetList(&mod->types, strFromTok(nameTok));
            if (!errType || errType->bType != BASETYPE_ERROR) { ErrMsgSemantic(nameTok, UNKNOWN_ERROR); continue; }
            resolveTypeDecl(errType);
            ListAdd(&t.errors, &errType);
        }
    }

    struct syntax* retTypeNode = firstPartOfType(sigNode, SNTX_RET_TYPE);
    if (retTypeNode) {
        t.hasRetType = true;
        t.retType = MallocOrCrash(sizeof(struct type));
        *t.retType = resolveTypeExpr(mod, firstPartOfType(retTypeNode, SNTX_TYPE_EXPR));
    }
    return t;
}

struct type resolveTypeExpr(struct semaModule* mod, struct syntax* typeExprNode) {
    struct syntax* actual = partSntx(typeExprNode, 0);
    switch (actual->type) {
        case SNTX_VOCAB_BODY: return resolveVocabBody(mod, (struct token){0}, actual);
        case SNTX_STRUCT_BODY: return resolveStructBody(mod, (struct token){0}, actual);
        case SNTX_FUNC_TYPE: return resolveFuncSig(mod, firstPartOfType(actual, SNTX_FUNC_SIG));
        case SNTX_TYPE_REF: return resolveTypeRef(mod, actual);
        default: ErrorBugFound(); return TypeVanilla(BASETYPE_INT32);
    }
}

void resolveTypeDecl(struct type* t) {
    if (!t->placeholder) return;
    if (t->resolving) {
        ErrMsgSemantic(t->tok, STRUCT_NOT_YET_DEFINED);
        t->placeholder = false;
        return;
    }
    t->resolving = true;

    if (t->bType == BASETYPE_ERROR) {
        struct semaModule* owner = t->owner;
        //find the SNTX_ERROR_DECL that declared this type, by matching the name token
        for (int i = 0; i < owner->syn.decls.len; i++) {
            struct syntax* decl = ListGetIdx(&owner->syn.decls, i);
            struct syntax* actual = partSntx(decl, 0);
            if (actual->type != SNTX_ERROR_DECL) continue;
            struct list idens = allTokOfType(actual, TOK_IDEN);
            struct token declNameTok = *(struct token*)ListGetIdx(&idens, 0);
            if (!StrCmp(strFromTok(declNameTok), t->name)) continue;

            t->words = ListInit(sizeof(struct token));
            for (int j = 1; j < idens.len; j++) {
                struct token w = *(struct token*)ListGetIdx(&idens, j);
                for (int k = 1; k < j; k++) {
                    struct token other = *(struct token*)ListGetIdx(&idens, k);
                    if (StrCmp(strFromTok(w), strFromTok(other))) { ErrMsgSemantic(w, ERROR_WORD_ALREADY_IN_USE); break; }
                }
                ListAdd(&t->words, &w);
            }
            break;
        }
        t->placeholder = false;
        t->resolving = false;
        return;
    }

    //find the SNTX_TYPE_DECL that declared this named type
    struct semaModule* owner = t->owner;
    for (int i = 0; i < owner->syn.decls.len; i++) {
        struct syntax* decl = ListGetIdx(&owner->syn.decls, i);
        struct syntax* actual = partSntx(decl, 0);
        if (actual->type != SNTX_TYPE_DECL) continue;
        struct token declNameTok = firstTokOfType(actual, TOK_IDEN);
        if (!StrCmp(strFromTok(declNameTok), t->name)) continue;

        struct syntax* typeExprNode = firstPartOfType(actual, SNTX_TYPE_EXPR);
        struct type resolved = resolveTypeExpr(owner, typeExprNode);
        struct str name = t->name;
        struct token tok = t->tok;
        struct semaModule* ownerSave = t->owner;
        *t = resolved;
        t->name = name;
        t->tok = tok;
        t->owner = ownerSave;
        break;
    }
    t->placeholder = false;
    t->resolving = false;
}

void semaResolveModule(struct semaModule* mod) {
    for (int i = 0; i < mod->types.len; i++) {
        struct type* t = ListGetIdx(&mod->types, i);
        resolveTypeDecl(t);
    }

    for (int i = 0; i < mod->syn.decls.len; i++) {
        struct syntax* decl = ListGetIdx(&mod->syn.decls, i);
        struct syntax* actual = partSntx(decl, 0);

        if (actual->type == SNTX_FUNC_DEF) {
            struct token nameTok = firstTokOfType(actual, TOK_IDEN);
            struct var* v = VarGetList(&mod->vars, strFromTok(nameTok));
            struct syntax* sigNode = firstPartOfType(actual, SNTX_FUNC_SIG);
            v->type = resolveFuncSig(mod, sigNode);
            v->type.owner = mod;
            v->type.tok = nameTok;
        } else if (actual->type == SNTX_VAR_DECL) {
            struct token nameTok = firstTokOfType(actual, TOK_IDEN);
            struct var* v = VarGetList(&mod->vars, strFromTok(nameTok));
            v->type = resolveTypeExpr(mod, firstPartOfType(actual, SNTX_TYPE_EXPR));
        }
    }
}

// ---- pass 3: check function bodies and global initializers ----

struct scope {
    struct list localPtrs; //list of struct var*
    struct scope* parent;
};

struct checkCtx {
    struct semaModule* mod;
    struct scope* scope;
    struct var* func; //current function (for return-type checking); NULL for global initializers
};

struct scope scopePush(struct scope* parent) {
    struct scope s = {0};
    s.localPtrs = ListInit(sizeof(struct var*));
    s.parent = parent;
    return s;
}

struct var* scopeFindLocal(struct scope* sc, struct str name) {
    for (; sc; sc = sc->parent) {
        for (int i = 0; i < sc->localPtrs.len; i++) {
            struct var* v = *(struct var**)ListGetIdx(&sc->localPtrs, i);
            if (StrCmp(v->name, name)) return v;
        }
    }
    return NULL;
}

struct var* scopeDeclare(struct scope* sc, struct str name, struct token tok, struct type type, bool mut) {
    if (scopeFindLocal(sc, name)) ErrMsgSemantic(tok, VAR_NAME_IN_USE);
    struct var* v = VarAllocSetOrigin();
    v->name = name;
    v->tok = tok;
    v->type = type;
    v->mut = mut;
    v->mayBeInitialized = true;
    ListAdd(&sc->localPtrs, &v);
    return v;
}

struct var* lookupVar(struct checkCtx* ctx, struct token tok) {
    struct str name = strFromTok(tok);
    struct var* v = scopeFindLocal(ctx->scope, name);
    if (v) return v;
    v = VarGetList(&ctx->mod->vars, name);
    if (!v) { ErrMsgSemantic(tok, UNKNOWN_VAR); return NULL; }
    return v;
}

// ---- expressions ----

enum operation opFromTokType(enum tokenType t) {
    switch (t) {
        case TOK_MUL: return OPERATION_MUL;
        case TOK_DIV: return OPERATION_DIV;
        case TOK_MOD: return OPERATION_MOD;
        case TOK_ADD: return OPERATION_ADD;
        case TOK_SUB: return OPERATION_SUB;
        case TOK_BTSFT_L: return OPERATION_BTSFT_L;
        case TOK_BTSFT_R: return OPERATION_BTSFT_R;
        case TOK_LST: return OPERATION_LST;
        case TOK_LSE: return OPERATION_LSE;
        case TOK_GRT: return OPERATION_GRT;
        case TOK_GRE: return OPERATION_GRE;
        case TOK_EQ: return OPERATION_EQ;
        case TOK_NEQ: return OPERATION_NEQ;
        case TOK_BTWSE_AND: return OPERATION_BTWSE_AND;
        case TOK_BTWSE_XOR: return OPERATION_BTWSE_XOR;
        case TOK_BTWSE_OR: return OPERATION_BTWSE_OR;
        case TOK_AND: return OPERATION_AND;
        case TOK_XOR: return OPERATION_XOR;
        case TOK_OR: return OPERATION_OR;
        default: ErrorBugFound(); return OPERATION_NONE;
    }
}

enum operation prefixOpFromTok(enum tokenType t) {
    switch (t) {
        case TOK_NOT: return OPERATION_NOT;
        case TOK_SUB: return OPERATION_MINUS;
        case TOK_BTWSE_INV: return OPERATION_BTWSE_INV;
        case TOK_INC: return OPERATION_PREFIX_INC;
        case TOK_DEC: return OPERATION_PREFIX_DEC;
        default: ErrorBugFound(); return OPERATION_NONE;
    }
}

struct operand* buildExprFromSyntax(struct checkCtx* ctx, struct syntax* s);

struct operand* buildBinChain(struct checkCtx* ctx, struct syntax* s) {
    struct operand* result = buildExprFromSyntax(ctx, partSntx(s, 0));
    for (int i = 1; i < s->parts.len; i += 2) {
        struct token opTok = partAt(s, i)->tok;
        struct operand* rhs = buildExprFromSyntax(ctx, partSntx(s, i +1));
        result = OperandBinary(result, rhs, opFromTokType(opTok.type), opTok);
    }
    return result;
}

struct operand* buildUnary(struct checkCtx* ctx, struct syntax* s) {
    int n = s->parts.len;
    struct operand* result = buildExprFromSyntax(ctx, partSntx(s, n -1)); //last part is EXPR_POSTFIX
    for (int i = n -2; i >= 0; i--) {
        struct syntax* opNode = partSntx(s, i); //SNTX_EXPR_UNARY_OP
        struct token opTok = partAt(opNode, 0)->tok;
        result = OperandUnary(result, prefixOpFromTok(opTok.type), opTok);
    }
    return result;
}

struct operand* buildPostfix(struct checkCtx* ctx, struct syntax* s) {
    struct operand* result = buildExprFromSyntax(ctx, partSntx(s, 0));
    for (int i = 1; i < s->parts.len; i++) {
        struct syntaxPart* p = partAt(s, i);
        if (p->isToken) {
            if (p->tok.type == TOK_INC) result = OperandUnary(result, OPERATION_POSTFIX_INC, p->tok);
            else result = OperandUnary(result, OPERATION_POSTFIX_DEC, p->tok);
        } else if (p->sntx->type == SNTX_EXPR_INDEX) {
            struct syntax* idxExprNode = firstPartOfType(p->sntx, SNTX_EXPR);
            struct operand* idx = buildExprFromSyntax(ctx, idxExprNode);
            result = OperandIndex(result, idx, firstTokOfType(p->sntx, TOK_SQUARE_O));
        } else { //SNTX_EXPR_MEMBR
            struct token memberTok = firstTokOfType(p->sntx, TOK_IDEN);
            result = OperandMember(result, strFromTok(memberTok), memberTok);
        }
    }
    return result;
}

struct list buildArgs(struct checkCtx* ctx, struct syntax* argsNode) {
    struct list result = ListInit(sizeof(struct operand*));
    struct list exprs = allPartsOfType(argsNode, SNTX_EXPR);
    for (int i = 0; i < exprs.len; i++) {
        struct syntax* e = *(struct syntax**)ListGetIdx(&exprs, i);
        struct operand* op = buildExprFromSyntax(ctx, e);
        ListAdd(&result, &op);
    }
    return result;
}

struct operand* buildPrimary(struct checkCtx* ctx, struct syntax* s) {
    if (s->parts.len == 1 && partAt(s, 0)->isToken) {
        struct token tok = partAt(s, 0)->tok;
        switch (tok.type) {
            case TOK_BOOL_LIT: return OperandBoolLiteral(tok);
            case TOK_INT_LIT: return OperandIntLiteral(tok);
            case TOK_FLOAT_LIT: return OperandFloatLiteral(tok);
            case TOK_CHAR_LIT: return OperandCharLiteral(tok);
            case TOK_STR_LIT: return OperandStringLiteral(tok);
            case TOK_IDEN: {
                struct var* v = lookupVar(ctx, tok);
                if (!v) return OperandIntLiteral(tok); //placeholder, keeps checking the rest of the file
                return OperandReadVar(v, tok);
            }
            default: ErrorBugFound(); return NULL;
        }
    }
    if (s->parts.len == 2) { //TOK_IDEN SNTX_EXPR_CALL
        struct token nameTok = partAt(s, 0)->tok;
        struct syntax* callNode = partSntx(s, 1);
        struct var* func = lookupVar(ctx, nameTok);
        struct list args = buildArgs(ctx, firstPartOfType(callNode, SNTX_EXPR_ARGS));
        if (!func) return OperandIntLiteral(nameTok);
        if (func->type.bType != BASETYPE_FUNC) { ErrMsgSemantic(nameTok, INVALID_VAR); return OperandIntLiteral(nameTok); }
        return OperandFuncCall(func, args, nameTok);
    }
    //parenthesized sub-expression: TOK_PAREN_O SNTX_EXPR TOK_PAREN_C
    return buildExprFromSyntax(ctx, firstPartOfType(s, SNTX_EXPR));
}

struct operand* buildExprFromSyntax(struct checkCtx* ctx, struct syntax* s) {
    switch (s->type) {
        case SNTX_EXPR: case SNTX_EXPR_OR: case SNTX_EXPR_XOR: case SNTX_EXPR_AND:
        case SNTX_EXPR_BOR: case SNTX_EXPR_BXOR: case SNTX_EXPR_BAND:
        case SNTX_EXPR_EQ: case SNTX_EXPR_REL: case SNTX_EXPR_SHIFT:
        case SNTX_EXPR_ADD: case SNTX_EXPR_MUL:
            return buildBinChain(ctx, s);
        case SNTX_EXPR_UNARY: return buildUnary(ctx, s);
        case SNTX_EXPR_POSTFIX: return buildPostfix(ctx, s);
        case SNTX_EXPR_PRIMARY: return buildPrimary(ctx, s);
        default: ErrorBugFound(); return NULL;
    }
}

// ---- statements ----

struct statement buildStatement(struct checkCtx* ctx, struct syntax* s);

struct list buildBlock(struct checkCtx* ctx, struct syntax* blockNode) {
    struct scope inner = scopePush(ctx->scope);
    struct checkCtx innerCtx = *ctx;
    innerCtx.scope = &inner;

    struct list result = ListInit(sizeof(struct statement));
    struct list stmts = allPartsOfType(blockNode, SNTX_STMNT);
    for (int i = 0; i < stmts.len; i++) {
        struct syntax* s = *(struct syntax**)ListGetIdx(&stmts, i);
        struct statement stmt = buildStatement(&innerCtx, s);
        ListAdd(&result, &stmt);
    }
    return result;
}

struct statement buildVarDeclStmnt(struct checkCtx* ctx, struct syntax* s) {
    struct token nameTok = firstTokOfType(s, TOK_IDEN);
    bool mut = true; //local variables are mutable by default; "mut" is only meaningful on globals
    struct type declType = resolveTypeExpr(ctx->mod, firstPartOfType(s, SNTX_TYPE_EXPR));
    struct operand* rhs = buildExprFromSyntax(ctx, firstPartOfType(s, SNTX_EXPR));
    if (!OperandFitsType(rhs, declType)) ErrMsgSemantic(rhs->tok, OPERANDS_NOT_SAME_TYPE);

    struct var* v = scopeDeclare(ctx->scope, strFromTok(nameTok), nameTok, declType, mut);
    struct statement stmt = (struct statement){0};
    stmt.sType = STATEMENT_VAR_DECL;
    stmt.var = *v;
    stmt.op = rhs;
    return stmt;
}

enum operation compoundOpFromAssignTok(enum tokenType t, bool* isCompound) {
    *isCompound = true;
    switch (t) {
        case TOK_ASS: *isCompound = false; return OPERATION_NONE;
        case TOK_ASS_ADD: return OPERATION_ADD;
        case TOK_ASS_SUB: return OPERATION_SUB;
        case TOK_ASS_MUL: return OPERATION_MUL;
        case TOK_ASS_DIV: return OPERATION_DIV;
        case TOK_ASS_MOD: return OPERATION_MOD;
        case TOK_ASS_AND: return OPERATION_AND;
        case TOK_ASS_OR: return OPERATION_OR;
        case TOK_ASS_XOR: return OPERATION_XOR;
        case TOK_ASS_BTSFT_L: return OPERATION_BTSFT_L;
        case TOK_ASS_BTSFT_R: return OPERATION_BTSFT_R;
        case TOK_ASS_BTWSE_AND: return OPERATION_BTWSE_AND;
        case TOK_ASS_BTWSE_OR: return OPERATION_BTWSE_OR;
        case TOK_ASS_BTWSE_XOR: return OPERATION_BTWSE_XOR;
        default: ErrorBugFound(); return OPERATION_NONE;
    }
}

struct statement buildAssignStmnt(struct checkCtx* ctx, struct syntax* s) {
    struct syntax* lhsNode = firstPartOfType(s, SNTX_EXPR_POSTFIX);
    struct operand* target = buildExprFromSyntax(ctx, lhsNode);
    struct syntax* opNode = firstPartOfType(s, SNTX_ASSIGN_OP);
    struct token opTok = partAt(opNode, 0)->tok;
    struct operand* rhs = buildExprFromSyntax(ctx, firstPartOfType(s, SNTX_EXPR));

    if (!OperandIsLvalue(target)) ErrMsgSemantic(target->tok, INVALID_VAR);
    else if (!OperandIsMutableLvalue(target)) ErrMsgSemantic(target->tok, VAR_IMMUTABLE);

    bool isCompound;
    enum operation compoundOp = compoundOpFromAssignTok(opTok.type, &isCompound);
    struct operand* value = rhs;
    if (isCompound) value = OperandBinary(target, rhs, compoundOp, opTok);
    else if (!OperandFitsType(rhs, target->type)) ErrMsgSemantic(opTok, OPERANDS_NOT_SAME_TYPE);

    struct statement stmt = (struct statement){0};
    stmt.sType = STATEMENT_ASSIGN;
    stmt.target = target;
    stmt.op = value;
    return stmt;
}

struct statement buildExprStmnt(struct checkCtx* ctx, struct syntax* s) {
    struct operand* op = buildExprFromSyntax(ctx, firstPartOfType(s, SNTX_EXPR));
    struct statement stmt = (struct statement){0};
    stmt.sType = STATEMENT_EXPR;
    stmt.op = op;
    return stmt;
}

struct statement buildIfStmnt(struct checkCtx* ctx, struct syntax* s) {
    struct operand* cond = buildExprFromSyntax(ctx, firstPartOfType(s, SNTX_EXPR));
    if (!OperandIsBool(cond)) ErrMsgSemantic(cond->tok, OPERATION_REQUIRES_BOOL);

    struct list blocks = allPartsOfType(s, SNTX_BLOCK);
    struct syntax* thenBlockNode = *(struct syntax**)ListGetIdx(&blocks, 0);

    struct statement stmt = (struct statement){0};
    stmt.sType = STATEMENT_IF;
    stmt.op = cond;
    stmt.block = buildBlock(ctx, thenBlockNode);

    struct syntax* elseIfNode = firstPartOfType(s, SNTX_STMNT_IF);
    if (blocks.len == 2) {
        struct syntax* elseBlockNode = *(struct syntax**)ListGetIdx(&blocks, 1);
        stmt.elseStmnt = MallocOrCrash(sizeof(struct statement));
        *stmt.elseStmnt = (struct statement){0};
        stmt.elseStmnt->sType = STATEMENT_IF; //bare-block wrapper, condition unused
        stmt.elseStmnt->block = buildBlock(ctx, elseBlockNode);
        stmt.elseIsBlock = true;
    } else if (elseIfNode) {
        stmt.elseStmnt = MallocOrCrash(sizeof(struct statement));
        *stmt.elseStmnt = buildIfStmnt(ctx, elseIfNode);
    }
    return stmt;
}

struct statement buildForStmnt(struct checkCtx* ctx, struct syntax* s) {
    struct scope inner = scopePush(ctx->scope);
    struct checkCtx innerCtx = *ctx;
    innerCtx.scope = &inner;

    struct syntax* initNode = firstPartOfType(s, SNTX_FOR_INIT);
    struct token nameTok = firstTokOfType(initNode, TOK_IDEN);
    bool mut = true; //local variables are mutable by default
    struct type declType = resolveTypeExpr(ctx->mod, firstPartOfType(initNode, SNTX_TYPE_EXPR));
    struct operand* initVal = buildExprFromSyntax(&innerCtx, firstPartOfType(initNode, SNTX_EXPR));
    if (!OperandFitsType(initVal, declType)) ErrMsgSemantic(initVal->tok, OPERANDS_NOT_SAME_TYPE);
    struct var* loopVar = scopeDeclare(innerCtx.scope, strFromTok(nameTok), nameTok, declType, mut);

    struct list exprs = allPartsOfType(s, SNTX_EXPR);
    struct operand* cond = buildExprFromSyntax(&innerCtx, *(struct syntax**)ListGetIdx(&exprs, 0));
    struct operand* post = buildExprFromSyntax(&innerCtx, *(struct syntax**)ListGetIdx(&exprs, 1));
    if (!OperandIsBool(cond)) ErrMsgSemantic(cond->tok, OPERATION_REQUIRES_BOOL);

    struct statement stmt = (struct statement){0};
    stmt.sType = STATEMENT_FOR;
    stmt.var = *loopVar;
    stmt.op = cond;
    stmt.forPost = post;
    stmt.block = buildBlock(&innerCtx, firstPartOfType(s, SNTX_BLOCK));
    return stmt;
}

struct statement buildDoStmnt(struct checkCtx* ctx, struct syntax* s) {
    struct statement stmt = (struct statement){0};
    stmt.sType = STATEMENT_DO;
    stmt.block = buildBlock(ctx, firstPartOfType(s, SNTX_BLOCK));
    stmt.op = buildExprFromSyntax(ctx, firstPartOfType(s, SNTX_EXPR));
    if (!OperandIsBool(stmt.op)) ErrMsgSemantic(stmt.op->tok, OPERATION_REQUIRES_BOOL);
    return stmt;
}

struct statement buildCaseStmnt(struct checkCtx* ctx, struct syntax* s, struct type matchedType) {
    struct operand* val = buildExprFromSyntax(ctx, firstPartOfType(s, SNTX_EXPR));
    if (!TypeIsSame(val->type, matchedType)) ErrMsgSemantic(val->tok, OPERANDS_NOT_SAME_TYPE);
    struct statement stmt = (struct statement){0};
    stmt.sType = STATEMENT_CASE;
    stmt.op = val;
    stmt.block = buildBlock(ctx, firstPartOfType(s, SNTX_BLOCK));
    return stmt;
}

struct statement buildMatchStmnt(struct checkCtx* ctx, struct syntax* s) {
    struct operand* matched = buildExprFromSyntax(ctx, firstPartOfType(s, SNTX_EXPR));
    struct statement stmt = (struct statement){0};
    stmt.sType = STATEMENT_MATCH;
    stmt.op = matched;

    stmt.matchCases = ListInit(sizeof(struct statement));
    struct list cases = allPartsOfType(s, SNTX_STMNT_CASE);
    for (int i = 0; i < cases.len; i++) {
        struct syntax* c = *(struct syntax**)ListGetIdx(&cases, i);
        struct statement caseStmt = buildCaseStmnt(ctx, c, matched->type);
        ListAdd(&stmt.matchCases, &caseStmt);
    }

    struct syntax* nomatchNode = firstPartOfType(s, SNTX_STMNT_NOMATCH);
    if (nomatchNode) {
        stmt.hasNomatch = true;
        stmt.nomatchBlock = buildBlock(ctx, firstPartOfType(nomatchNode, SNTX_BLOCK));
    }
    return stmt;
}

struct statement buildRetStmnt(struct checkCtx* ctx, struct syntax* s) {
    struct syntax* exprNode = firstPartOfType(s, SNTX_EXPR);
    struct operand* val = exprNode ? buildExprFromSyntax(ctx, exprNode) : NULL;
    struct token tok = firstTokOfType(s, TOK_RET);

    if (val && ctx->func && !ctx->func->type.hasRetType) ErrMsgSemantic(tok, INVALID_RETURN_TYPE);
    else if (!val && ctx->func && ctx->func->type.hasRetType) ErrMsgSemantic(tok, INVALID_RETURN_TYPE);
    else if (val && ctx->func && ctx->func->type.hasRetType && !OperandFitsType(val, *ctx->func->type.retType)) {
        ErrMsgSemantic(val->tok, INVALID_RETURN_TYPE);
    }

    struct statement stmt = (struct statement){0};
    stmt.sType = STATEMENT_RET;
    stmt.op = val;
    return stmt;
}

struct statement buildExitStmnt(struct checkCtx* ctx, struct syntax* s) {
    struct syntax* exprNode = firstPartOfType(s, SNTX_EXPR);
    struct operand* val = exprNode ? buildExprFromSyntax(ctx, exprNode) : NULL;
    struct statement stmt = (struct statement){0};
    stmt.sType = STATEMENT_EXIT;
    stmt.op = val;
    return stmt;
}

struct statement buildStatement(struct checkCtx* ctx, struct syntax* s) {
    struct syntax* actual = partSntx(s, 0);
    switch (actual->type) {
        case SNTX_VAR_DECL: return buildVarDeclStmnt(ctx, actual);
        case SNTX_STMNT_ASSIGN: return buildAssignStmnt(ctx, actual);
        case SNTX_STMNT_IF: return buildIfStmnt(ctx, actual);
        case SNTX_STMNT_FOR: return buildForStmnt(ctx, actual);
        case SNTX_STMNT_DO: return buildDoStmnt(ctx, actual);
        case SNTX_STMNT_MATCH: return buildMatchStmnt(ctx, actual);
        case SNTX_STMNT_RET: return buildRetStmnt(ctx, actual);
        case SNTX_STMNT_EXIT: return buildExitStmnt(ctx, actual);
        case SNTX_STMNT_EXPR: return buildExprStmnt(ctx, actual);
        default: ErrorBugFound(); return (struct statement){0};
    }
}

void semaCheckBodies(struct semaModule* mod) {
    for (int i = 0; i < mod->syn.decls.len; i++) {
        struct syntax* decl = ListGetIdx(&mod->syn.decls, i);
        struct syntax* actual = partSntx(decl, 0);

        if (actual->type == SNTX_VAR_DECL) {
            struct token nameTok = firstTokOfType(actual, TOK_IDEN);
            struct var* v = VarGetList(&mod->vars, strFromTok(nameTok));
            struct checkCtx ctx = {0};
            ctx.mod = mod;
            struct operand* rhs = buildExprFromSyntax(&ctx, firstPartOfType(actual, SNTX_EXPR));
            if (!OperandFitsType(rhs, v->type)) ErrMsgSemantic(rhs->tok, OPERANDS_NOT_SAME_TYPE);
            continue;
        }
        if (actual->type != SNTX_FUNC_DEF) continue;

        struct token nameTok = firstTokOfType(actual, TOK_IDEN);
        struct var* func = VarGetList(&mod->vars, strFromTok(nameTok));

        struct scope fnScope = scopePush(NULL);
        for (int p = 0; p < func->type.vars.len; p++) {
            struct var* param = ListGetIdx(&func->type.vars, p);
            struct var* local = VarAllocSetOrigin();
            *local = *param;
            local->mayBeInitialized = true;
            local->mut = true; //local variables (including parameters) are mutable by default
            ListAdd(&fnScope.localPtrs, &local);
        }

        struct checkCtx ctx = {0};
        ctx.mod = mod;
        ctx.scope = &fnScope;
        ctx.func = func;
        func->codeBlock = buildBlock(&ctx, firstPartOfType(actual, SNTX_BLOCK));
    }
}

// ---- entry point ----

void SemanticAnalyzeFile(char* fileName) {
    allModules = ListInit(sizeof(struct semaModule*));
    rootModule = semaLoadModule(StrFromCStr(fileName));

    for (int i = 0; i < allModules.len; i++) semaCollectNames(*(struct semaModule**)ListGetIdx(&allModules, i));
    for (int i = 0; i < allModules.len; i++) semaResolveModule(*(struct semaModule**)ListGetIdx(&allModules, i));
    for (int i = 0; i < allModules.len; i++) semaCheckBodies(*(struct semaModule**)ListGetIdx(&allModules, i));

    struct var* mainFunc = VarGetList(&rootModule->vars, StrFromCStr("main"));
    if (!mainFunc || mainFunc->type.bType != BASETYPE_FUNC) ErrMsgFile(rootModule->fileName, MAIN_FUNC_NOT_FOUND);
}
