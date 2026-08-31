#include <stdlib.h>
#include <stdio.h>
#include <stdbool.h>
#include <string.h>
#include "util.h"
#include "token.h"
#include "syntax.h"
#include "errmsg.h"
#include "semantic.h"

static struct list allModules; //list of struct semaModule*
static struct semaModule* rootModule;

struct list* SemanticAllModules(void) {
    return &allModules;
}

// ---- struct type ----

#define PTR_SIZE 8 //4 for 32bit
#define VOCAB_SIZE 4
#define ERROR_SIZE 4

long long TypeGetSize(struct type t);

long long getArraySize(struct type t) {
    if (t.arrMalloc) return PTR_SIZE;
    long long n = t.arrLen ? t.arrLen->intLiteralVal : 0;
    return TypeGetSize(*t.arrElem) * n;
}

long long getStructSize(struct type t) {
    if (t.structMAlloc) return PTR_SIZE;
    long long size = 0;
    for (int i = 0; i < t.vars.len; i++) {
        size += TypeGetSize((*(struct var*)ListGetIdx(&t.vars, i)).type);
    }
    return size;
}

long long TypeGetSize(struct type t) {
    switch (t.bType) {
        case BASETYPE_VOID: return 0;
        case BASETYPE_BOOL: return 1;
        case BASETYPE_BYTE: return 1;
        case BASETYPE_INT32: return 4;
        case BASETYPE_INT64: return 8;
        case BASETYPE_FLOAT32: return 4;
        case BASETYPE_FLOAT64: return 8;
        case BASETYPE_ARRAY: return getArraySize(t);
        case BASETYPE_STRUCT: return getStructSize(t);
        case BASETYPE_VOCAB: return VOCAB_SIZE;
        case BASETYPE_FUNC: return PTR_SIZE;
        case BASETYPE_ERROR: return ERROR_SIZE;
        case BASETYPE_SCOPE: return PTR_SIZE;
    }
    return 0; //unreachable
}

static char* typeVanillaBoolStr = "bool";
static char* typeVanillaByteStr = "byte";
static char* typeVanillaInt32Str = "int32";
static char* typeVanillaInt64Str = "int64";
static char* typeVanillaFloat32Str = "float32";
static char* typeVanillaFloat64Str = "float64";

struct type TypeVanilla(enum baseType bType) {
    struct type t = (struct type){0};
    switch (bType) {
        case BASETYPE_VOID: t.bType = BASETYPE_VOID; return t;
        case BASETYPE_BOOL: t.name.ptr = typeVanillaBoolStr; break;
        case BASETYPE_BYTE: t.name.ptr = typeVanillaByteStr; break;
        case BASETYPE_INT32: t.name.ptr = typeVanillaInt32Str; break;
        case BASETYPE_INT64: t.name.ptr = typeVanillaInt64Str; break;
        case BASETYPE_FLOAT32: t.name.ptr = typeVanillaFloat32Str; break;
        case BASETYPE_FLOAT64: t.name.ptr = typeVanillaFloat64Str; break;
        default: ErrorBugFound();
    }
    t.name.len = (int)strlen(t.name.ptr);
    t.bType = bType;
    return t;
}

bool isTypeVanilla(enum baseType bType) {
    switch (bType) {
        case BASETYPE_BOOL: return true;
        case BASETYPE_BYTE: return true;
        case BASETYPE_INT32: return true;
        case BASETYPE_INT64: return true;
        case BASETYPE_FLOAT32: return true;
        case BASETYPE_FLOAT64: return true;
        default: return false;
    }
}

struct type TypeFromType(struct str name, struct token tok, struct type tFrom) {
    tFrom.name = name;
    tFrom.tok = tok;
    return tFrom;
}

bool TypeIsByteArray(struct type t) {
    if (t.bType != BASETYPE_ARRAY) return false;
    if (t.arrElem->bType != BASETYPE_BYTE) return false;
    return true;
}

bool typeCmpForList(void* name, void* elem) {
    struct str searchName = *(struct str*)name;
    struct str elemName = ((struct type*)elem)->name;
    return StrCmp(searchName, elemName);
}

struct type* TypeGetList(struct list* l, struct str name) {
    return ListGetCmp(l, &name, typeCmpForList);
}

bool TypeIsNumeric(struct type t) {
    switch (t.bType) {
        case BASETYPE_BYTE: case BASETYPE_INT32: case BASETYPE_INT64:
        case BASETYPE_FLOAT32: case BASETYPE_FLOAT64:
            return true;
        default: return false;
    }
}

bool TypeIsInt(struct type t) {
    switch (t.bType) {
        case BASETYPE_BYTE: case BASETYPE_INT32: case BASETYPE_INT64: return true;
        default: return false;
    }
}

bool TypeIsFloat(struct type t) {
    switch (t.bType) {
        case BASETYPE_FLOAT32: case BASETYPE_FLOAT64: return true;
        default: return false;
    }
}

bool TypeIsSame(struct type a, struct type b) {
    if (a.bType != b.bType) return false;
    if (isTypeVanilla(a.bType)) return true;
    switch (a.bType) {
        case BASETYPE_ARRAY:
            if (a.arrMalloc != b.arrMalloc) return false;
            return TypeIsSame(*a.arrElem, *b.arrElem);
        case BASETYPE_FUNC: {
            if (a.vars.len != b.vars.len) return false;
            for (int i = 0; i < a.vars.len; i++) {
                struct type ta = (*(struct var*)ListGetIdx(&a.vars, i)).type;
                struct type tb = (*(struct var*)ListGetIdx(&b.vars, i)).type;
                if (!TypeIsSame(ta, tb)) return false;
            }
            if (a.hasRetType != b.hasRetType) return false;
            if (a.hasRetType && !TypeIsSame(*a.retType, *b.retType)) return false;
            return true;
        }
        //struct/vocab/error are always named declarations - identity is owner+name
        default:
            if (a.owner != b.owner) return false;
            return StrCmp(a.name, b.name);
    }
}

char* TypeDescribe(struct type t) {
    static char buf[256];
    if (t.name.len > 0 && t.name.len < (int)sizeof(buf)) {
        memcpy(buf, t.name.ptr, (size_t)t.name.len);
        buf[t.name.len] = '\0';
        return buf;
    }
    switch (t.bType) {
        case BASETYPE_ARRAY: return "array type";
        case BASETYPE_STRUCT: return "struct type";
        case BASETYPE_VOCAB: return "vocab type";
        case BASETYPE_FUNC: return "func type";
        case BASETYPE_ERROR: return "error type";
        case BASETYPE_SCOPE: return "scope";
        default: return "type";
    }
}

// ---- struct var ----

struct var* VarAllocSetOrigin() {
    struct var* v = MallocOrCrash(sizeof(struct var));
    v->origin = v;
    return v;
}

bool varCmpForList(void* name, void* elem) {
    struct str searchName = *(struct str*)name;
    struct str elemName = ((struct var*)elem)->name;
    return StrCmp(searchName, elemName);
}

struct var* VarGetList(struct list* l, struct str name) {
    return ListGetCmp(l, &name, varCmpForList);
}

void VarListAddSetOrigin(struct list* l, struct var v) {
    ListAdd(l, &v);
    struct var* vPtr = ListGetIdx(l, l->len -1);
    vPtr->origin = vPtr;
}

// ---- struct statement ----

void StatementAdd(struct list* codeBlock, struct statement s) {
    ListAdd(codeBlock, &s);
}

//true if every word of errType is covered by matches: either a whole-type match ("catch MyError") or,
//word by word, a specific-word match for each one ("catch MyError.A || MyError.B" when A/B are all of
//them). Shared below (which errors need declaring in the enclosing signature) and by codegen.c (whether
//a try/catch statement's propagate path is even reachable).
bool StatementCatchCoversType(struct list* matches, struct type errType) {
    for (int i = 0; i < matches->len; i++) {
        struct catchMatch* cm = ListGetIdx(matches, i);
        if (!cm->hasWord && TypeIsSame(cm->errType, errType)) return true;
    }
    for (int w = 0; w < errType.words.len; w++) {
        bool covered = false;
        for (int i = 0; i < matches->len; i++) {
            struct catchMatch* cm = ListGetIdx(matches, i);
            if (cm->hasWord && cm->wordOrdinal == w && TypeIsSame(cm->errType, errType)) { covered = true; break; }
        }
        if (!covered) return false;
    }
    return true;
}

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

//compiler intrinsics available in every module without an import - currently just assert(cond bool)
void registerBuiltins(struct semaModule* mod) {
    struct var param = (struct var){0};
    param.name = StrFromCStr("cond");
    param.type = TypeVanilla(BASETYPE_BOOL);
    param.mut = false;

    struct var assertVar = (struct var){0};
    assertVar.name = StrFromCStr("assert");
    assertVar.type.bType = BASETYPE_FUNC;
    assertVar.type.vars = ListInit(sizeof(struct var));
    ListAdd(&assertVar.type.vars, &param);
    assertVar.type.errors = ListInit(sizeof(struct type*));
    assertVar.isBuiltin = true;
    VarListAddSetOrigin(&mod->vars, assertVar);
}

struct semaModule* findImport(struct semaModule* mod, struct str alias);

//consulted by the parser (see TypeNameLookup in syntax.h) only to tell "Type{values}" (a struct literal)
//apart from "condition { block }" - never authoritative, semantic analysis proper (below) still does the
//real name resolution/visibility checks. Safe to call mid-parse because declaredTypeNames is fully
//populated for this module *and* every module it imports before ParseSyntax ever runs - see
//semaLoadModule: each module scans its own top-level names before recursing into its imports, so even a
//cyclic import pair has both sides' names ready by the time either one's real parse starts.
bool isKnownTypeForParsing(void* ctxPtr, struct str alias, struct str name) {
    struct semaModule* mod = ctxPtr;
    struct semaModule* target = mod;
    if (alias.len > 0) {
        target = findImport(mod, alias);
        if (!target) return false;
    }
    for (int i = 0; i < target->declaredTypeNames.len; i++) {
        struct str* n = ListGetIdx(&target->declaredTypeNames, i);
        if (StrCmp(*n, name)) return true;
    }
    return false;
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
    mod->tests = ListInit(sizeof(struct semaTest));
    registerBuiltins(mod);
    ListAdd(&allModules, &mod); //register before recursing, to break import cycles

    //heap-allocated, not a stack buffer: TokenizeFile/StrToCStr alias this pointer for the whole
    //compilation (used later whenever an error is reported), they don't copy it
    char* buf = MallocOrCrash((size_t)fileName.len +1);
    StrToCStr(fileName, buf);
    TokenCtx tc = TokenizeFile(buf);

    //declare this module's own top-level names *before* recursing into its imports (see
    //isKnownTypeForParsing's comment - this ordering is exactly what makes cyclic imports work)
    struct scanResult scan = ScanTopLevelDecls(tc);
    mod->declaredTypeNames = scan.typeNames;

    for (int i = 0; i < scan.imports.len; i++) {
        struct scannedImport* si = ListGetIdx(&scan.imports, i);
        struct semaModule* target = semaLoadModule(si->path);
        struct semaImport imp = {0};
        imp.alias = si->alias;
        imp.mod = target;
        ListAdd(&mod->imports, &imp);
    }

    mod->syn = ParseSyntax(tc, mod, isKnownTypeForParsing);
    return mod;
}

struct semaModule* findImport(struct semaModule* mod, struct str alias) {
    for (int i = 0; i < mod->imports.len; i++) {
        struct semaImport* imp = ListGetIdx(&mod->imports, i);
        if (StrCmp(imp->alias, alias)) return imp->mod;
    }
    return NULL;
}

void resolveTypeDecl(struct type* t);

//resolves a possibly-namespaced error-type name node ("MyError" or "alias.MyError", from SNTX_NAME) to
//its declared error type - shared by function-signature error lists and (via its own disambiguation,
//see StatementCatchCoversType's caller) catch clauses. Reports its own errors and returns NULL on failure.
struct type* resolveErrorTypeName(struct semaModule* mod, struct syntax* nameNode) {
    struct list idens = allTokOfType(nameNode, TOK_IDEN);
    if (idens.len == 1) {
        struct token nameTok = *(struct token*)ListGetIdx(&idens, 0);
        struct type* errType = TypeGetList(&mod->types, strFromTok(nameTok));
        if (!errType || errType->bType != BASETYPE_ERROR) { ErrMsgSemantic(nameTok, UNKNOWN_ERROR); return NULL; }
        resolveTypeDecl(errType);
        return errType;
    }
    struct token aliasTok = *(struct token*)ListGetIdx(&idens, 0);
    struct token nameTok = *(struct token*)ListGetIdx(&idens, 1);
    struct semaModule* target = findImport(mod, strFromTok(aliasTok));
    if (!target) { ErrMsgSemantic(aliasTok, UNKNOWN_NAMESPACE); return NULL; }
    struct str name = strFromTok(nameTok);
    struct type* errType = TypeGetList(&target->types, name);
    if (!errType || errType->bType != BASETYPE_ERROR) { ErrMsgSemantic(nameTok, UNKNOWN_ERROR); return NULL; }
    if (!isPublic(name)) { ErrMsgSemantic(nameTok, TYPE_IS_PRIVATE); return NULL; }
    resolveTypeDecl(errType);
    return errType;
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
    v.owner = mod;
    v.name = name;
    v.tok = nameTok;
    v.mut = mut;
    v.type.placeholder = true;
    ListAdd(&mod->vars, &v);
}

//internal names for a constructor-bearing type's synthetic constructor/destructor "functions" - "$" is
//never producible by the tokenizer's identifier rule, so these can never collide with (or be typed as) a
//real user name, same idea as the mangled "@m0_name" global symbols codegen already produces
struct str internalCtorName(struct token typeNameTok) {
    char* buf = MallocOrCrash((size_t)typeNameTok.str.len + 8);
    int n = snprintf(buf, (size_t)typeNameTok.str.len + 8, "%.*s$ctor", typeNameTok.str.len, typeNameTok.str.ptr);
    return Str(buf, n);
}
struct str internalDtorName(struct token typeNameTok) {
    char* buf = MallocOrCrash((size_t)typeNameTok.str.len + 8);
    int n = snprintf(buf, (size_t)typeNameTok.str.len + 8, "%.*s$dtor", typeNameTok.str.len, typeNameTok.str.ptr);
    return Str(buf, n);
}

void semaCollectNames(struct semaModule* mod) {
    for (int i = 0; i < mod->syn.decls.len; i++) {
        struct syntax* decl = ListGetIdx(&mod->syn.decls, i);
        struct syntax* actual = partSntx(decl, 0);
        switch (actual->type) {
            case SNTX_TYPE_DECL: {
                struct token nameTok = firstTokOfType(actual, TOK_IDEN);
                collectType(mod, nameTok, BASETYPE_VOID);
                //a constructor-bearing struct also needs its own synthetic constructor/destructor "var"
                //entries registered *now* (pass 1), while mod->vars can still safely grow - pass 2/3 take
                //stable pointers into this same list (via VarGetList) that a later ListAdd could otherwise
                //invalidate on reallocation. See the report.
                struct syntax* ctorNode = firstPartOfType(actual, SNTX_STRUCT_CTOR);
                if (ctorNode) {
                    struct var ctorV = (struct var){0};
                    ctorV.owner = mod;
                    ctorV.name = internalCtorName(nameTok);
                    ctorV.tok = nameTok;
                    ctorV.type.placeholder = true;
                    ListAdd(&mod->vars, &ctorV);
                    if (firstPartOfType(ctorNode, SNTX_DESTRUCT)) {
                        struct var dtorV = (struct var){0};
                        dtorV.owner = mod;
                        dtorV.name = internalDtorName(nameTok);
                        dtorV.tok = nameTok;
                        dtorV.type.placeholder = true;
                        ListAdd(&mod->vars, &dtorV);
                    }
                }
                break;
            }
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
            case SNTX_TEST_DECL:
                break;
            default:
                ErrorBugFound();
        }
    }
}

// ---- pass 2: resolve type shapes and function signatures ----

struct type resolveTypeExpr(struct semaModule* mod, struct syntax* typeExprNode, struct list* scopeParams);
void resolveTypeDecl(struct type* t);

//resolves a "{name}" heap-indirection tag's optional scope name against scopeParams (the function
//parameters visible at this point in the signature/body being resolved, or NULL where none are - struct
//fields and globals, which have no such context; see the report). Bare "{}" (no name token at all) is
//left as scopeParam == NULL, meaning "this value's own private/local scope".
struct var* resolveScopeTag(struct syntax* refNode, struct list* scopeParams) {
    struct list nameToks = allTokOfType(refNode, TOK_IDEN);
    if (nameToks.len == 0) return NULL;
    struct token nameTok = *(struct token*)ListGetIdx(&nameToks, 0);
    struct var* found = scopeParams ? VarGetList(scopeParams, strFromTok(nameTok)) : NULL;
    if (!found) { ErrMsgSemantic(nameTok, UNKNOWN_SCOPE); return NULL; }
    if (found->type.bType != BASETYPE_SCOPE) { ErrMsgSemantic(nameTok, NOT_A_SCOPE); return NULL; }
    return found;
}

//base type a name resolves to, before any array suffixes on the reference are applied
struct type resolveTypeRefBase(struct semaModule* mod, struct syntax* refNode, struct list* scopeParams) {
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
    if (malloced) result.scopeParam = resolveScopeTag(refNode, scopeParams);
    //a {}-indirect reference may be grabbed while its target is still mid-resolution (that's the whole
    //point - see the comment above); its placeholder bType (still BASETYPE_VOID at that point) must not
    //leak through, since {} syntax only ever refers to a struct
    if (malloced) result.bType = BASETYPE_STRUCT;
    return result;
}

//attempts to evaluate exprNode as a compile-time-constant integer literal (a bare TOK_INT_LIT, optionally
//negated by a single leading unary '-') - used for fixed array sizes, which must be known at compile time
bool tryEvalConstIntExpr(struct syntax* s, long long* out) {
    bool negate = false;
    while (true) {
        if (s->type == SNTX_EXPR_PRIMARY) {
            if (s->parts.len != 1 || !partAt(s, 0)->isToken || partAt(s, 0)->tok.type != TOK_INT_LIT) return false;
            struct token tok = partAt(s, 0)->tok;
            char buf[tok.str.len +1];
            memcpy(buf, tok.str.ptr, (size_t)tok.str.len);
            buf[tok.str.len] = '\0';
            *out = strtoll(buf, NULL, 10);
            if (negate) *out = -*out;
            return true;
        }
        if (s->type == SNTX_EXPR_UNARY && s->parts.len == 2) {
            struct syntax* opNode = partSntx(s, 0);
            struct token opTok = partAt(opNode, 0)->tok;
            if (opTok.type != TOK_SUB || negate) return false; //only a single leading '-' is supported
            negate = true;
            s = partSntx(s, 1);
            continue;
        }
        if (s->parts.len != 1 || partAt(s, 0)->isToken) return false;
        s = partSntx(s, 0);
    }
}

//wraps `base` in one array level per SNTX_ARR_SFX child of `node` (fixed size from a compile-time-const
//int expr, or dynamic if the brackets are empty) - shared by type references and literal expressions,
//which both spell array suffixes the same way ("T[3]", "T[]")
struct type applyArraySuffixes(struct type base, struct syntax* node) {
    struct list sfx = allPartsOfType(node, SNTX_ARR_SFX);
    for (int i = 0; i < sfx.len; i++) {
        struct syntax* s = *(struct syntax**)ListGetIdx(&sfx, i);
        struct type wrapped = (struct type){0};
        wrapped.bType = BASETYPE_ARRAY;
        wrapped.arrElem = MallocOrCrash(sizeof(struct type));
        *wrapped.arrElem = base;
        struct syntax* sizeExprNode = firstPartOfType(s, SNTX_EXPR);
        wrapped.arrMalloc = (sizeExprNode == NULL);
        if (sizeExprNode) {
            long long size;
            if (!tryEvalConstIntExpr(sizeExprNode, &size) || size < 0) {
                ErrMsgSemantic(firstTokOfType(s, TOK_SQUARE_O), INVALID_ARRAY_SIZE);
                size = 0;
            }
            struct operand* lenOp = MallocOrCrash(sizeof(struct operand));
            *lenOp = (struct operand){0};
            lenOp->type = TypeVanilla(BASETYPE_INT64);
            lenOp->isLiteral = true;
            lenOp->intLiteralVal = size;
            wrapped.arrLen = lenOp;
        }
        base = wrapped;
    }
    return base;
}

struct type resolveTypeRef(struct semaModule* mod, struct syntax* refNode, struct list* scopeParams) {
    return applyArraySuffixes(resolveTypeRefBase(mod, refNode, scopeParams), refNode);
}

//resolves a literal's base type name node ("MyError" or "alias.MyError", from SNTX_NAME) - the same
//lookup as resolveTypeRefBase, minus the "{}" heap-indirect handling: a literal's own trailing "{...}"
//holds values, not the (always-empty) heap-indirection marker, and constructing a value always requires
//the type to be fully resolved (never the "grab it mid-resolution" trick {} exists for)
struct type resolveLiteralBaseType(struct semaModule* mod, struct syntax* nameNode) {
    struct list idens = allTokOfType(nameNode, TOK_IDEN);
    struct type* found;

    if (idens.len == 1) {
        struct token nameTok = *(struct token*)ListGetIdx(&idens, 0);
        struct str name = strFromTok(nameTok);
        found = TypeGetList(&mod->types, name);
        if (!found) {
            switch (name.len) {
                case 4:
                    if (!strncmp(name.ptr, "bool", 4)) return TypeVanilla(BASETYPE_BOOL);
                    break;
                case 5:
                    if (!strncmp(name.ptr, "int32", 5)) return TypeVanilla(BASETYPE_INT32);
                    if (!strncmp(name.ptr, "int64", 5)) return TypeVanilla(BASETYPE_INT64);
                    break;
                default: break;
            }
            if (StrCmp(name, StrFromCStr("byte"))) return TypeVanilla(BASETYPE_BYTE);
            if (StrCmp(name, StrFromCStr("float32"))) return TypeVanilla(BASETYPE_FLOAT32);
            if (StrCmp(name, StrFromCStr("float64"))) return TypeVanilla(BASETYPE_FLOAT64);
            ErrMsgSemantic(nameTok, UNKNOWN_TYPE);
            return TypeVanilla(BASETYPE_INT32);
        }
    } else {
        struct token aliasTok = *(struct token*)ListGetIdx(&idens, 0);
        struct token nameTok = *(struct token*)ListGetIdx(&idens, 1);
        struct semaModule* target = findImport(mod, strFromTok(aliasTok));
        if (!target) { ErrMsgSemantic(aliasTok, UNKNOWN_NAMESPACE); return TypeVanilla(BASETYPE_INT32); }
        struct str name = strFromTok(nameTok);
        found = TypeGetList(&target->types, name);
        if (!found) { ErrMsgSemantic(nameTok, UNKNOWN_TYPE); return TypeVanilla(BASETYPE_INT32); }
        if (!isPublic(name)) { ErrMsgSemantic(nameTok, TYPE_IS_PRIVATE); return TypeVanilla(BASETYPE_INT32); }
    }
    resolveTypeDecl(found);
    return *found;
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
        //NULL: a struct field can't reference a scope parameter - that needs the type itself to be
        //generic over a scope, which olang has no mechanism for yet (see the report). A bare "{}" field
        //still works fine (structMAlloc, private/local scope); an explicit "{name}" field correctly fails
        //with UNKNOWN_SCOPE until that generics mechanism exists.
        v.type = resolveTypeExpr(mod, typeExprNode, NULL);
        ListAdd(&t.vars, &v);
    }
    return t;
}

//"struct(params) errorList? { fields } destruct?" - mutates *t IN PLACE rather than building-then-copying
//(the way resolveStructBody/resolveVocabBody do, via resolveTypeDecl's generic "*t = resolved" step)
//specifically so t->ctorFunc/t->destructFunc's own retType/self-param can point at t directly (the stable
//slot inside mod->types) instead of a temporary that's about to be overwritten - see the report.
void resolveParamList(struct semaModule* mod, struct syntax* paramListNode, struct list* out);

void resolveStructCtorInto(struct semaModule* mod, struct type* t, struct syntax* ctorNode) {
    t->bType = BASETYPE_STRUCT;
    t->hasCtor = true;

    struct list ctorParams;
    resolveParamList(mod, firstPartOfType(ctorNode, SNTX_PARAM_LIST), &ctorParams);

    struct list ctorErrors = ListInit(sizeof(struct type*));
    struct syntax* errListNode = firstPartOfType(ctorNode, SNTX_ERROR_LIST);
    if (errListNode) {
        struct list names = allPartsOfType(errListNode, SNTX_NAME);
        for (int i = 0; i < names.len; i++) {
            struct syntax* nameNode = *(struct syntax**)ListGetIdx(&names, i);
            struct type* errType = resolveErrorTypeName(mod, nameNode);
            if (!errType) continue;
            ListAdd(&ctorErrors, &errType);
        }
    }

    t->vars = ListInit(sizeof(struct var));
    t->ctorFieldSyntax = ListInit(sizeof(struct syntax*));
    struct syntax* fieldListNode = firstPartOfType(ctorNode, SNTX_CTOR_FIELD_LIST);
    struct list fieldNodes = allPartsOfType(fieldListNode, SNTX_CTOR_FIELD);
    for (int i = 0; i < fieldNodes.len; i++) {
        struct syntax* f = *(struct syntax**)ListGetIdx(&fieldNodes, i);
        struct token fieldNameTok = firstTokOfType(f, TOK_IDEN);
        struct str fieldName = strFromTok(fieldNameTok);
        if (VarGetList(&t->vars, fieldName)) { ErrMsgSemantic(fieldNameTok, VAR_NAME_IN_USE); continue; }

        struct syntax* typeExprNode = firstPartOfType(f, SNTX_TYPE_EXPR);
        struct var v = (struct var){0};
        v.name = fieldName;
        v.tok = fieldNameTok;
        v.mut = hasTokOfType(f, TOK_MUT);

        if (typeExprNode) {
            //explicit type - "= expr"/":= expr" is checked for real in pass 3 (needs ctor params in
            //scope); a type with no initializer at all never has anywhere to get a value from
            v.type = resolveTypeExpr(mod, typeExprNode, &ctorParams);
            if (!hasTokOfType(f, TOK_ASS)) ErrMsgSemantic(fieldNameTok, CTOR_FIELD_NOT_INITIALIZED);
        } else if (hasTokOfType(f, TOK_ASS_INFER)) {
            //":=" - type read off the (required-to-be-literal) rhs in pass 3, same as a global ":=" var
            v.type = (struct type){0};
        } else {
            //bare pun - must match one of the constructor's own parameters by name
            struct var* param = VarGetList(&ctorParams, fieldName);
            if (!param) { ErrMsgSemantic(fieldNameTok, CTOR_FIELD_NOT_INITIALIZED); continue; }
            v.type = param->type;
        }
        ListAdd(&t->vars, &v);
        ListAdd(&t->ctorFieldSyntax, &f);
    }

    struct var* ctorFuncVar = VarGetList(&mod->vars, internalCtorName(t->tok));
    ctorFuncVar->owner = mod;
    ctorFuncVar->type.bType = BASETYPE_FUNC;
    ctorFuncVar->type.vars = ctorParams;
    ctorFuncVar->type.errors = ctorErrors;
    ctorFuncVar->type.hasRetType = true;
    ctorFuncVar->type.retType = t; //the same stable slot resolveTypeDecl was called with - never a copy
    ctorFuncVar->type.placeholder = false;
    t->ctorFunc = ctorFuncVar;

    struct syntax* destructNode = firstPartOfType(ctorNode, SNTX_DESTRUCT);
    if (destructNode) {
        t->hasDestruct = true;
        t->destructBlockSyntax = firstPartOfType(destructNode, SNTX_BLOCK);
        struct var* dtorFuncVar = VarGetList(&mod->vars, internalDtorName(t->tok));
        dtorFuncVar->owner = mod;
        dtorFuncVar->type.bType = BASETYPE_FUNC;
        dtorFuncVar->type.vars = ListInit(sizeof(struct var));
        dtorFuncVar->type.errors = ListInit(sizeof(struct type*));
        dtorFuncVar->type.placeholder = false;
        t->destructFunc = dtorFuncVar; //set before the snapshot below, not after - selfParam.type.destructFunc
                                        //must be this same var, so codegen can recognize ".self" as "the
                                        //instance this very destructor is already running on" and skip
                                        //re-destructing it (see cgRunLocalDestructors)
        struct var selfParam = (struct var){0};
        selfParam.name = StrFromCStr(".self");
        selfParam.tok = t->tok;
        selfParam.mut = false;
        selfParam.type = *t; //by-value snapshot - safe: bType/vars/name/owner/tok/hasDestruct/destructFunc
                              //are all already final on *t at this point
        ListAdd(&dtorFuncVar->type.vars, &selfParam);
    }
}

//true iff typeExprNode is a bare, unsuffixed "scope" name - no array suffix, no "{}"/"{name}" tag, no
//namespace. "scope" is deliberately never registered as a real type (unlike int32/bool/etc in
//resolveTypeRefBase) - it only ever resolves here, in a parameter's type position, so it structurally
//can't appear as a struct field, return type, or ordinary variable's type, mirroring how error types are
//restricted to their own dedicated grammar slots rather than being usable as a general type.
static char* typeScopeStr = "scope";

struct type TypeScope(void) {
    struct type t = (struct type){0};
    t.bType = BASETYPE_SCOPE;
    t.name = StrFromCStr(typeScopeStr);
    return t;
}

bool isScopeTypeRef(struct syntax* typeExprNode) {
    struct syntax* actual = partSntx(typeExprNode, 0);
    if (actual->type != SNTX_TYPE_REF) return false;
    if (hasTokOfType(actual, TOK_CURLY_O)) return false;
    if (allPartsOfType(actual, SNTX_ARR_SFX).len != 0) return false;
    struct list idens = allTokOfType(firstPartOfType(actual, SNTX_NAME), TOK_IDEN);
    if (idens.len != 1) return false;
    return StrCmp(strFromTok(*(struct token*)ListGetIdx(&idens, 0)), StrFromCStr("scope"));
}

void resolveParamList(struct semaModule* mod, struct syntax* paramListNode, struct list* out) {
    *out = ListInit(sizeof(struct var));
    struct list params = allPartsOfType(paramListNode, SNTX_PARAM);
    for (int i = 0; i < params.len; i++) {
        struct syntax* p = *(struct syntax**)ListGetIdx(&params, i);
        struct token nameTok = firstTokOfType(p, TOK_IDEN);
        struct str name = strFromTok(nameTok);
        if (VarGetList(out, name)) { ErrMsgSemantic(nameTok, VAR_NAME_IN_USE); continue; }
        struct syntax* typeExprNode = firstPartOfType(p, SNTX_TYPE_EXPR);
        struct var v = (struct var){0};
        v.name = name;
        v.tok = nameTok;
        v.mut = hasTokOfType(p, TOK_MUT);
        //"out" doubles as this param list's growing scopeParams: an earlier param's name is visible to a
        //later param's "{name}" tag (e.g. "func f(s scope, n Node{s})"), not the other way around
        v.type = isScopeTypeRef(typeExprNode) ? TypeScope() : resolveTypeExpr(mod, typeExprNode, out);
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
        struct list names = allPartsOfType(errListNode, SNTX_NAME);
        for (int i = 0; i < names.len; i++) {
            struct syntax* nameNode = *(struct syntax**)ListGetIdx(&names, i);
            struct type* errType = resolveErrorTypeName(mod, nameNode);
            if (!errType) continue;
            ListAdd(&t.errors, &errType);
        }
    }

    struct syntax* retTypeNode = firstPartOfType(sigNode, SNTX_RET_TYPE);
    if (retTypeNode) {
        t.hasRetType = true;
        t.retType = MallocOrCrash(sizeof(struct type));
        //full param list (t.vars) is already built above, so a return type may reference any of them,
        //e.g. "func makeNode(v int32, s scope) Node{s}"
        *t.retType = resolveTypeExpr(mod, firstPartOfType(retTypeNode, SNTX_TYPE_EXPR), &t.vars);
        //a bare "{}" return type is always wrong, not just sometimes: the function's own private scope
        //closes at the exact point it returns (see cgCloseOwnScope in codegen.c), so a value tagged to it
        //would already be dangling before the caller ever sees it - catching this once, here, covers
        //every return statement in the function (single, multiple, implicit fallthrough, error
        //propagation) without needing to inspect each one individually. Doesn't catch a bare "{}" field
        //nested inside a plain (non-heap-indirect) returned struct - that's the same still-open
        //scope-generics gap as struct fields generally (see the report), not attempted here.
        if (t.retType->bType == BASETYPE_STRUCT && t.retType->structMAlloc && !t.retType->scopeParam) {
            ErrMsgSemantic(firstTokOfType(retTypeNode, TOK_QSNTMRK), BARE_SCOPE_RETURN_TYPE);
        }
    }
    return t;
}

struct type resolveTypeExpr(struct semaModule* mod, struct syntax* typeExprNode, struct list* scopeParams) {
    struct syntax* actual = partSntx(typeExprNode, 0);
    switch (actual->type) {
        case SNTX_VOCAB_BODY: return resolveVocabBody(mod, (struct token){0}, actual);
        case SNTX_STRUCT_BODY: return resolveStructBody(mod, (struct token){0}, actual);
        //a func-type's own signature builds its own independent parameter list, so it gets no scopeParams
        //from the surrounding context - nothing outside it could resolve a scope tag against it anyway
        case SNTX_FUNC_TYPE: return resolveFuncSig(mod, firstPartOfType(actual, SNTX_FUNC_SIG));
        case SNTX_TYPE_REF: return resolveTypeRef(mod, actual, scopeParams);
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

        struct syntax* ctorNode = firstPartOfType(actual, SNTX_STRUCT_CTOR);
        if (ctorNode) {
            //mutates *t in place - see resolveStructCtorInto for why this can't go through the generic
            //build-then-copy path below
            resolveStructCtorInto(owner, t, ctorNode);
            break;
        }

        struct syntax* typeExprNode = firstPartOfType(actual, SNTX_TYPE_EXPR);
        struct type resolved = resolveTypeExpr(owner, typeExprNode, NULL); //module-level, no function context
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
            struct syntax* typeExprNode = firstPartOfType(actual, SNTX_TYPE_EXPR);
            //":=" (no type node) is resolved later in semaCheckBodies instead, once the initializer
            //operand that its type gets read off exists
            if (typeExprNode) v->type = resolveTypeExpr(mod, typeExprNode, NULL); //global, no function context
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
    struct var* func; //current function (for return-type checking); NULL for global initializers AND for
                       //test { } blocks (which have no error union/return type of their own either)
    bool hasOwnScope; //true inside a function body or a test { } block - both are "own"'s valid range,
                       //even though only the former also sets func (see the field above); false for a
                       //global initializer, which has no enclosing scope at all
    bool allowFallibleCall; //true only while building the one primary node directly under a `try` -
                             //see buildTryExpr/buildTryCatchStmnt and buildPrimary's call branch
    struct var* destructSelfVar; //non-NULL only while checking a destruct{} body: a bare identifier that
                                  //isn't a real local but does name one of this var's own type's fields
                                  //resolves to member access on it instead of UNKNOWN_VAR - see buildPrimary
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

//resolves a possibly-namespaced call-target name node ("func" or "alias.func", from SNTX_NAME) to a var -
//the 1-identifier case is just lookupVar; the namespaced case looks up the target module directly and
//requires public visibility, mirroring resolveErrorTypeName
struct var* resolveCallTarget(struct checkCtx* ctx, struct syntax* nameNode) {
    struct list idens = allTokOfType(nameNode, TOK_IDEN);
    if (idens.len == 1) {
        struct token tok = *(struct token*)ListGetIdx(&idens, 0);
        struct str name = strFromTok(tok);
        struct var* v = scopeFindLocal(ctx->scope, name);
        if (v) return v;
        v = VarGetList(&ctx->mod->vars, name);
        if (v) return v;
        //not a var at all - "Type(args)" is legal exactly when Type declares a constructor; the synthetic
        //ctorFunc reuses every bit of ordinary call-site machinery from here on (arg checking, try/catch
        //coverage, codegen) with no dedicated call path of its own - see the report
        struct type* t = TypeGetList(&ctx->mod->types, name);
        if (t) {
            resolveTypeDecl(t);
            if (t->bType == BASETYPE_STRUCT && t->hasCtor) return t->ctorFunc;
        }
        ErrMsgSemantic(tok, UNKNOWN_VAR);
        return NULL;
    }

    struct token aliasTok = *(struct token*)ListGetIdx(&idens, 0);
    struct token nameTok = *(struct token*)ListGetIdx(&idens, 1);
    struct semaModule* target = findImport(ctx->mod, strFromTok(aliasTok));
    if (!target) { ErrMsgSemantic(aliasTok, UNKNOWN_NAMESPACE); return NULL; }
    struct str name = strFromTok(nameTok);
    struct var* v = VarGetList(&target->vars, name);
    if (v) {
        if (!isPublic(name)) { ErrMsgSemantic(nameTok, VAR_IS_PRIVATE); return NULL; }
        return v;
    }
    struct type* t = TypeGetList(&target->types, name);
    if (t) {
        resolveTypeDecl(t);
        if (t->bType == BASETYPE_STRUCT && t->hasCtor) {
            if (!isPublic(name)) { ErrMsgSemantic(nameTok, TYPE_IS_PRIVATE); return NULL; }
            return t->ctorFunc;
        }
    }
    ErrMsgSemantic(nameTok, UNKNOWN_VAR);
    return NULL;
}

// ---- operand construction & type checking ----
//
// unary/binary operators are dispatched through the two small tables below - one line per operator,
// the same "rules as data" idea as token.c's token table and syntax.c's grammar table, instead of a
// scattered switch/if chain. Everything else here (literals, calls, indexing, member access) doesn't
// have that repetitive one-of-many-operators shape, so it stays as plain, single-purpose functions.

struct operand* operandNew(struct token tok, enum operation opType, struct type type) {
    struct operand* op = MallocOrCrash(sizeof(struct operand));
    *op = (struct operand){0};
    op->tok = tok;
    op->opType = opType;
    op->type = type;
    op->args = ListInit(sizeof(struct operand*));
    return op;
}

bool OperandIsInt(struct operand* op) {
    return TypeIsInt(op->type);
}

bool OperandIsBool(struct operand* op) {
    return op->type.bType == BASETYPE_BOOL;
}

bool OperandIsNumeric(struct operand* op) {
    return TypeIsNumeric(op->type);
}

//can op flow into a target-typed slot (assignment, initialization, argument passing)? an int literal
//widens into a float slot since it carries no fixed width of its own yet; anything else must match
//exactly - general implicit numeric conversion (e.g. int32->int64, or non-literal int->float) is
//undecided language design, not implemented here
bool OperandFitsType(struct operand* op, struct type target) {
    if (TypeIsSame(target, op->type)) return true;
    if (op->isLiteral && TypeIsInt(op->type) && TypeIsFloat(target)) {
        op->type = target;
        return true;
    }
    return false;
}

bool OperandIsLvalue(struct operand* op) {
    return op->opType == OPERATION_READ_VAR || op->opType == OPERATION_INDEX || op->opType == OPERATION_MEMBER;
}

bool OperandIsMutableLvalue(struct operand* op) {
    switch (op->opType) {
        case OPERATION_READ_VAR: return op->readVar->mut;
        case OPERATION_INDEX: return OperandIsMutableLvalue(*(struct operand**)ListGetIdx(&op->args, 0));
        case OPERATION_MEMBER: return OperandIsMutableLvalue(*(struct operand**)ListGetIdx(&op->args, 0));
        default: return false;
    }
}

struct operand* OperandReadVar(struct var* v, struct token tok) {
    struct operand* op = operandNew(tok, OPERATION_READ_VAR, v->type);
    op->readVar = v;
    return op;
}

struct operand* OperandFuncCall(struct var* func, struct list args, struct token tok) {
    struct type ret = func->type.hasRetType ? *func->type.retType : TypeVanilla(BASETYPE_VOID);
    struct operand* op = operandNew(tok, OPERATION_FUNCCALL, ret);
    op->readVar = func;
    op->args = args;

    if (args.len != func->type.vars.len) {
        ErrMsgSemantic(tok, WRONG_ARG_COUNT);
        return op;
    }
    for (int i = 0; i < args.len; i++) {
        struct operand* arg = *(struct operand**)ListGetIdx(&args, i);
        struct type paramType = (*(struct var*)ListGetIdx(&func->type.vars, i)).type;
        if (!OperandFitsType(arg, paramType)) ErrMsgSemantic(arg->tok, VALUE_TYPE_MISMATCH);
    }
    return op;
}

struct operand* OperandIndex(struct operand* base, struct operand* index, struct token tok) {
    if (base->type.bType != BASETYPE_ARRAY) {
        ErrMsgSemantic(tok, NOT_AN_ARRAY);
        return operandNew(tok, OPERATION_INDEX, TypeVanilla(BASETYPE_INT32));
    }
    if (!TypeIsInt(index->type)) ErrMsgSemantic(index->tok, OPERATION_REQUIRES_INT);

    struct operand* op = operandNew(tok, OPERATION_INDEX, *base->type.arrElem);
    ListAdd(&op->args, &base);
    ListAdd(&op->args, &index);
    return op;
}

struct operand* OperandMember(struct operand* base, struct str member, struct token tok) {
    if (base->type.bType != BASETYPE_STRUCT) {
        ErrMsgSemantic(tok, UNKNOWN_STRUCT_MEMBER);
        return operandNew(tok, OPERATION_MEMBER, TypeVanilla(BASETYPE_INT32));
    }
    struct var* memberVar = VarGetList(&base->type.vars, member);
    if (!memberVar) {
        ErrMsgSemantic(tok, UNKNOWN_STRUCT_MEMBER);
        return operandNew(tok, OPERATION_MEMBER, TypeVanilla(BASETYPE_INT32));
    }
    struct operand* op = operandNew(tok, OPERATION_MEMBER, memberVar->type);
    op->memberName = member;
    ListAdd(&op->args, &base);
    return op;
}

struct operand* incDec(struct operand* in, enum operation opType, struct token tok) {
    struct operand* op = operandNew(tok, opType, in->type);
    ListAdd(&op->args, &in);
    if (!OperandIsLvalue(in)) {
        ErrMsgSemantic(tok, NOT_AN_LVALUE);
        return op;
    }
    if (!OperandIsNumeric(in)) ErrMsgSemantic(tok, OPERATION_REQUIRES_NUMBER);
    if (!OperandIsMutableLvalue(in)) ErrMsgSemantic(tok, VAR_IMMUTABLE);
    return op;
}

//what kind of operand an operator requires, beyond "must be the same type as the other side" - REQ_NONE
//means no kind restriction at all (only EQ/NEQ: any type is comparable, structs/arrays included - see
//cgDeepEq in codegen.c)
enum operandReq { REQ_NONE, REQ_BOOL, REQ_INT, REQ_NUMERIC };

bool operandMeetsReq(struct operand* op, enum operandReq req) {
    switch (req) {
        case REQ_BOOL: return OperandIsBool(op);
        case REQ_INT: return OperandIsInt(op);
        case REQ_NUMERIC: return OperandIsNumeric(op);
        default: return true; //REQ_NONE
    }
}

char* operandReqErrMsg(enum operandReq req) {
    switch (req) {
        case REQ_BOOL: return OPERATION_REQUIRES_BOOL;
        case REQ_INT: return OPERATION_REQUIRES_INT;
        case REQ_NUMERIC: return OPERATION_REQUIRES_NUMBER;
        default: ErrorBugFound(); return NULL; //REQ_NONE never fails a check, so never needs a message
    }
}

//unary operators: what kind of operand is required, and whether the result is bool (versus the operand's
//own type). Prefix/postfix INC/DEC aren't listed here - they additionally require a mutable lvalue, which
//doesn't fit this shape, so they stay handled by incDec() above.
struct unOpRule { enum operandReq require; bool resultBool; };
struct unOpRule unOpRules[] = {
    [OPERATION_NOT]       = {REQ_BOOL,    true},
    [OPERATION_BTWSE_INV] = {REQ_INT,     false},
    [OPERATION_MINUS]     = {REQ_NUMERIC, false},
};

struct operand* OperandUnary(struct operand* in, enum operation opType, struct token tok) {
    switch (opType) {
        case OPERATION_PREFIX_INC: case OPERATION_PREFIX_DEC:
        case OPERATION_POSTFIX_INC: case OPERATION_POSTFIX_DEC:
            return incDec(in, opType, tok);
        case OPERATION_NOT: case OPERATION_BTWSE_INV: case OPERATION_MINUS: {
            struct unOpRule rule = unOpRules[opType];
            struct operand* op = operandNew(tok, opType, rule.resultBool ? TypeVanilla(BASETYPE_BOOL) : in->type);
            ListAdd(&op->args, &in);
            if (!operandMeetsReq(in, rule.require)) ErrMsgSemantic(tok, operandReqErrMsg(rule.require));
            return op;
        }
        default:
            ErrorBugFound();
            return NULL;
    }
}

//binary operators: what kind each operand must be, whether both sides must additionally be the same
//type, and whether the result is bool (versus operand a's own type - every arithmetic/bitwise/shift
//result follows a's type)
struct binOpRule { enum operandReq require; bool sameType; bool resultBool; };
struct binOpRule binOpRules[] = {
    [OPERATION_AND]       = {REQ_BOOL,    false, true},
    [OPERATION_OR]        = {REQ_BOOL,    false, true},
    [OPERATION_XOR]       = {REQ_BOOL,    false, true},
    [OPERATION_LST]       = {REQ_NUMERIC, true,  true},
    [OPERATION_LSE]       = {REQ_NUMERIC, true,  true},
    [OPERATION_GRT]       = {REQ_NUMERIC, true,  true},
    [OPERATION_GRE]       = {REQ_NUMERIC, true,  true},
    [OPERATION_EQ]        = {REQ_NONE,    true,  true},
    [OPERATION_NEQ]       = {REQ_NONE,    true,  true},
    [OPERATION_BTSFT_L]   = {REQ_INT,     false, false}, //shift amount doesn't need to match the shifted type
    [OPERATION_BTSFT_R]   = {REQ_INT,     false, false},
    [OPERATION_BTWSE_AND] = {REQ_INT,     true,  false},
    [OPERATION_BTWSE_OR]  = {REQ_INT,     true,  false},
    [OPERATION_BTWSE_XOR] = {REQ_INT,     true,  false},
    [OPERATION_MOD]       = {REQ_INT,     true,  false},
    [OPERATION_ADD]       = {REQ_NUMERIC, true,  false},
    [OPERATION_SUB]       = {REQ_NUMERIC, true,  false},
    [OPERATION_MUL]       = {REQ_NUMERIC, true,  false},
    [OPERATION_DIV]       = {REQ_NUMERIC, true,  false},
};

struct operand* OperandBinary(struct operand* a, struct operand* b, enum operation opType, struct token tok) {
    struct binOpRule rule = binOpRules[opType];
    struct operand* op = operandNew(tok, opType, rule.resultBool ? TypeVanilla(BASETYPE_BOOL) : a->type);
    ListAdd(&op->args, &a);
    ListAdd(&op->args, &b);

    bool aOk = operandMeetsReq(a, rule.require);
    bool bOk = operandMeetsReq(b, rule.require);
    if (!aOk) ErrMsgSemantic(a->tok, operandReqErrMsg(rule.require));
    if (!bOk) ErrMsgSemantic(b->tok, operandReqErrMsg(rule.require));
    if (rule.sameType && aOk && bOk && !TypeIsSame(a->type, b->type)) ErrMsgSemantic(tok, OPERANDS_NOT_SAME_TYPE);
    return op;
}

struct operand* OperandBoolLiteral(struct token tok) {
    struct operand* op = operandNew(tok, OPERATION_NONE, TypeVanilla(BASETYPE_BOOL));
    op->isLiteral = true;
    op->intLiteralVal = !strncmp(tok.str.ptr, "true", (size_t)tok.str.len) ? 1 : 0;
    return op;
}

long long decodeCharBody(char* ptr, int len) {
    if (len == 0) return 0;
    if (ptr[0] != '\\') return ptr[0];
    if (len < 2) return 0;
    switch (ptr[1]) {
        case 'n': return '\n';
        case 't': return '\t';
        case '\\': return '\\';
        case '\'': return '\'';
        case '"': return '"';
        default: return ptr[1];
    }
}

struct operand* OperandCharLiteral(struct token tok) {
    struct operand* op = operandNew(tok, OPERATION_NONE, TypeVanilla(BASETYPE_BYTE));
    op->isLiteral = true;
    op->intLiteralVal = decodeCharBody(tok.str.ptr +1, tok.str.len -2);
    return op;
}

struct operand* OperandIntLiteral(struct token tok) {
    struct operand* op = operandNew(tok, OPERATION_NONE, TypeVanilla(BASETYPE_INT32));
    op->isLiteral = true;
    char buf[tok.str.len +1];
    memcpy(buf, tok.str.ptr, (size_t)tok.str.len);
    buf[tok.str.len] = '\0';
    op->intLiteralVal = strtoll(buf, NULL, 10);
    return op;
}

struct operand* OperandFloatLiteral(struct token tok) {
    struct operand* op = operandNew(tok, OPERATION_NONE, TypeVanilla(BASETYPE_FLOAT32));
    op->isLiteral = true;
    char buf[tok.str.len +1];
    memcpy(buf, tok.str.ptr, (size_t)tok.str.len);
    buf[tok.str.len] = '\0';
    op->floatLiteralVal = strtod(buf, NULL);
    return op;
}

//counts decoded bytes in a string literal body (each "\X" escape pair collapses to one byte)
long long decodeStringLen(char* ptr, int len) {
    long long n = 0;
    for (int i = 0; i < len; i++) {
        if (ptr[i] == '\\') i++;
        n++;
    }
    return n;
}

struct operand* OperandStringLiteral(struct token tok) {
    struct type t = (struct type){0};
    t.bType = BASETYPE_ARRAY;
    t.arrElem = MallocOrCrash(sizeof(struct type));
    *t.arrElem = TypeVanilla(BASETYPE_BYTE);
    t.arrMalloc = false;

    struct operand* lenOp = MallocOrCrash(sizeof(struct operand));
    *lenOp = (struct operand){0};
    lenOp->type = TypeVanilla(BASETYPE_INT64);
    lenOp->isLiteral = true;
    lenOp->intLiteralVal = decodeStringLen(tok.str.ptr +1, tok.str.len -2);
    t.arrLen = lenOp;

    struct operand* op = operandNew(tok, OPERATION_NONE, t);
    op->isLiteral = true;
    return op;
}

//"MyError.someWord" - errType must already be resolved (its words list populated); wordTok is checked
//against those words here since the grammar can't tell a valid member from a typo
struct operand* OperandErrorLiteral(struct type errType, struct token wordTok) {
    struct operand* op = operandNew(wordTok, OPERATION_NONE, errType);
    op->isLiteral = true;
    for (int i = 0; i < errType.words.len; i++) {
        struct token w = *(struct token*)ListGetIdx(&errType.words, i);
        if (StrCmp(w.str, wordTok.str)) {
            op->intLiteralVal = i;
            op->memberName = wordTok.str;
            return op;
        }
    }
    ErrMsgSemantic(wordTok, EXPECTED_ERROR_WORD);
    return op;
}

//"Type.WORD" - a vocab value. intLiteralVal is the word's declared ordinal, same representation an error
//word already uses above - vocab types communicate a fixed set and a selection from it, not a C-enum-
//style number: TypeIsNumeric/TypeIsInt (used to gate arithmetic/ordering operators) don't include
//BASETYPE_VOCAB, so those are already rejected for free once a value of this type exists at all -
//equality/inequality (REQ_NONE) and match/case (structural cgDeepEq, type-agnostic) already work
//generically for any type, including this one, with no vocab-specific code needed there either.
struct operand* OperandVocabLiteral(struct type vocabType, struct token wordTok) {
    struct operand* op = operandNew(wordTok, OPERATION_NONE, vocabType);
    op->isLiteral = true;
    for (int i = 0; i < vocabType.words.len; i++) {
        struct token w = *(struct token*)ListGetIdx(&vocabType.words, i);
        if (StrCmp(w.str, wordTok.str)) {
            op->intLiteralVal = i;
            op->memberName = wordTok.str;
            return op;
        }
    }
    ErrMsgSemantic(wordTok, UNKNOWN_VOCAB_WORD);
    return op;
}

//"Point[1, 2]" - positional, in member-declaration order, each value checked the same way an assignment
//would check it. args becomes op->args (codegen reads the field values straight from there).
struct operand* OperandStructLiteral(struct type t, struct list args, struct token tok) {
    struct operand* op = operandNew(tok, OPERATION_NONE, t);
    op->isLiteral = true;
    op->args = args;
    if (args.len != t.vars.len) { ErrMsgSemantic(tok, WRONG_ARG_COUNT); return op; }
    for (int i = 0; i < args.len; i++) {
        struct operand* arg = *(struct operand**)ListGetIdx(&args, i);
        struct type memberType = (*(struct var*)ListGetIdx(&t.vars, i)).type;
        if (!OperandFitsType(arg, memberType)) ErrMsgSemantic(arg->tok, VALUE_TYPE_MISMATCH);
    }
    return op;
}

//"int32[3][1, 2, 3]" (fixed - value count must match the declared size exactly) or "int32[][1, 2, 3]"
//(dynamic - mallocd at runtime, see cgAggregateLiteral; size is just however many values are given)
struct operand* OperandArrayLiteral(struct type t, struct list args, struct token tok) {
    struct operand* op = operandNew(tok, OPERATION_NONE, t);
    op->isLiteral = true;
    op->args = args;
    if (!t.arrMalloc && args.len != t.arrLen->intLiteralVal) { ErrMsgSemantic(tok, WRONG_ARG_COUNT); return op; }
    for (int i = 0; i < args.len; i++) {
        struct operand* arg = *(struct operand**)ListGetIdx(&args, i);
        if (!OperandFitsType(arg, *t.arrElem)) ErrMsgSemantic(arg->tok, VALUE_TYPE_MISMATCH);
    }
    return op;
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

//every error type a `try`'d call can produce must appear in the enclosing function's own declared error
//list, so an unhandled/uncaught error always has somewhere valid to propagate to. Required even for error
//types a catch clause fully handles, not just the ones that actually escape - see the report, this is a
//deliberate simplification (checking only the escaping subset would need catch-exhaustiveness analysis)
void checkTrySuperset(struct checkCtx* ctx, struct token tok, struct type calleeType) {
    if (!ctx->func) { ErrMsgSemantic(tok, TRY_OUTSIDE_FUNC); return; }
    for (int i = 0; i < calleeType.errors.len; i++) {
        struct type* e = *(struct type**)ListGetIdx(&calleeType.errors, i);
        bool found = false;
        for (int j = 0; j < ctx->func->type.errors.len; j++) {
            struct type* fe = *(struct type**)ListGetIdx(&ctx->func->type.errors, j);
            if (TypeIsSame(*e, *fe)) { found = true; break; }
        }
        if (!found) { ErrMsgSemantic(tok, TRY_ERROR_NOT_IN_SIGNATURE); return; }
    }
}

//"try f(...)" as a plain expression: propagates on error (checkTrySuperset), yields f's success value
struct operand* buildTryExpr(struct checkCtx* ctx, struct syntax* s) {
    struct token tok = firstTokOfType(s, TOK_TRY);
    bool prevAllow = ctx->allowFallibleCall;
    ctx->allowFallibleCall = true;
    struct operand* callOp = buildExprFromSyntax(ctx, firstPartOfType(s, SNTX_EXPR_PRIMARY));
    ctx->allowFallibleCall = prevAllow;

    if (callOp->opType != OPERATION_FUNCCALL || callOp->readVar->type.errors.len == 0) {
        ErrMsgSemantic(tok, TRY_REQUIRES_FALLIBLE_CALL);
        return callOp;
    }
    checkTrySuperset(ctx, tok, callOp->readVar->type);
    callOp->isTried = true;
    return callOp;
}

//"T[N][v1, ...]"/"T[][v1, ...]" (fixed/dynamic array) - see resolveLiteralBaseType/applyArraySuffixes for
//how the type itself is resolved, and OperandArrayLiteral for the value checks. firstTokOfType finds only
//this rule's own direct "[" (the one right before the value list) - a preceding SNTX_ARR_SFX's own
//brackets are nested one level deeper, inside its own sub-node.
struct operand* buildArrayLiteralExpr(struct checkCtx* ctx, struct syntax* s) {
    struct syntax* nameNode = firstPartOfType(s, SNTX_NAME);
    struct token tok = firstTokOfType(s, TOK_SQUARE_O);
    struct type t = applyArraySuffixes(resolveLiteralBaseType(ctx->mod, nameNode), s);
    struct list args = buildArgs(ctx, firstPartOfType(s, SNTX_EXPR_ARGS));

    if (t.bType == BASETYPE_ARRAY) return OperandArrayLiteral(t, args, tok);
    ErrMsgSemantic(tok, INVALID_ARRAY_LITERAL_TYPE);
    return operandNew(tok, OPERATION_NONE, TypeVanilla(BASETYPE_INT32));
}

//"Type{v1, v2, ...}" - the parser only ever produces this node when the name was already confirmed to be
//some known type (see nameIsKnownType in syntax.c), but that check can't tell struct/vocab/error types
//apart - only a struct can actually be built this way, so that narrowing happens here instead.
struct operand* buildStructLiteralExpr(struct checkCtx* ctx, struct syntax* s) {
    struct syntax* nameNode = firstPartOfType(s, SNTX_NAME);
    struct token tok = firstTokOfType(s, TOK_CURLY_O);
    struct type t = resolveLiteralBaseType(ctx->mod, nameNode);
    struct list args = buildArgs(ctx, firstPartOfType(s, SNTX_EXPR_ARGS));

    if (t.bType == BASETYPE_STRUCT) {
        //a constructor-bearing type must be built by calling it, not by the plain positional literal -
        //otherwise the constructor's own logic (validation, fallible field initializers) could be
        //silently bypassed, which would make declaring one pointless. See the report.
        if (t.hasCtor) {
            ErrMsgSemantic(tok, TYPE_REQUIRES_CONSTRUCTOR_CALL);
            return operandNew(tok, OPERATION_NONE, TypeVanilla(BASETYPE_INT32));
        }
        return OperandStructLiteral(t, args, tok);
    }
    ErrMsgSemantic(tok, INVALID_STRUCT_LITERAL_TYPE);
    return operandNew(tok, OPERATION_NONE, TypeVanilla(BASETYPE_INT32));
}

//"Type.WORD" - a vocab value. Deliberately doesn't go through resolveLiteralBaseType: that function's own
//2-identifier case means "alias.TypeName" (a cross-module type reference), but here the shape means
//something different - "TypeName.word", always local (the parser only ever produces this node when the
//*first* identifier is a locally-known type, never an import alias - see firstIdenIsLocalKnownType in
//syntax.c), so the first identifier is resolved directly against this module's own types instead.
struct operand* buildVocabValueExpr(struct checkCtx* ctx, struct syntax* s) {
    struct syntax* nameNode = firstPartOfType(s, SNTX_NAME);
    struct list idens = allTokOfType(nameNode, TOK_IDEN);
    struct token typeTok = *(struct token*)ListGetIdx(&idens, 0);
    struct token wordTok = *(struct token*)ListGetIdx(&idens, 1);
    struct type* t = TypeGetList(&ctx->mod->types, strFromTok(typeTok));
    if (!t) {
        ErrMsgSemantic(typeTok, UNKNOWN_TYPE);
        return operandNew(wordTok, OPERATION_NONE, TypeVanilla(BASETYPE_INT32));
    }
    resolveTypeDecl(t);
    if (t->bType != BASETYPE_VOCAB) {
        ErrMsgSemantic(typeTok, INVALID_VOCAB_VALUE_TYPE);
        return operandNew(wordTok, OPERATION_NONE, TypeVanilla(BASETYPE_INT32));
    }
    return OperandVocabLiteral(*t, wordTok);
}

//"own" - a "scope"-typed value naming the enclosing function's own private scope (see the report). Not
//isLiteral (unlike the other OPERATION_NONE nodes above): letting ":=" infer off it would smuggle a
//"scope" value into an ordinary variable, defeating the whole "scope is parameter-only" restriction.
struct operand* OperandOwn(struct checkCtx* ctx, struct token tok) {
    if (!ctx->hasOwnScope) ErrMsgSemantic(tok, OWN_OUTSIDE_FUNC);
    return operandNew(tok, OPERATION_NONE, TypeScope());
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
            case TOK_OWN: return OperandOwn(ctx, tok);
            case TOK_IDEN: {
                //inside a destruct{} body only: a bare identifier that isn't a real local but does name
                //one of the instance's own fields reads as that field (no "self." prefix - see the
                //report), checked before the ordinary lookup below so a real local of the same name still
                //correctly shadows it
                if (ctx->destructSelfVar) {
                    struct str name = strFromTok(tok);
                    if (!scopeFindLocal(ctx->scope, name)) {
                        struct var* field = VarGetList(&ctx->destructSelfVar->type.vars, name);
                        if (field) return OperandMember(OperandReadVar(ctx->destructSelfVar, tok), name, tok);
                    }
                }
                struct var* v = lookupVar(ctx, tok);
                if (!v) return OperandIntLiteral(tok); //placeholder, keeps checking the rest of the file
                return OperandReadVar(v, tok);
            }
            default: ErrorBugFound(); return NULL;
        }
    }
    if (s->parts.len == 1 && !partAt(s, 0)->isToken && partSntx(s, 0)->type == SNTX_EXPR_TRY) {
        return buildTryExpr(ctx, partSntx(s, 0));
    }
    if (s->parts.len == 1 && !partAt(s, 0)->isToken && partSntx(s, 0)->type == SNTX_EXPR_LITERAL) {
        return buildArrayLiteralExpr(ctx, partSntx(s, 0));
    }
    if (s->parts.len == 1 && !partAt(s, 0)->isToken && partSntx(s, 0)->type == SNTX_EXPR_VOCAB_VALUE) {
        return buildVocabValueExpr(ctx, partSntx(s, 0));
    }
    if (s->parts.len == 1 && !partAt(s, 0)->isToken && partSntx(s, 0)->type == SNTX_EXPR_STRUCT_LITERAL) {
        return buildStructLiteralExpr(ctx, partSntx(s, 0));
    }
    if (s->parts.len == 2) { //SNTX_NAME SNTX_EXPR_CALL - "func(...)" or "alias.func(...)"
        struct syntax* nameNode = partSntx(s, 0);
        struct list nameIdens = allTokOfType(nameNode, TOK_IDEN);
        struct token nameTok = *(struct token*)ListGetIdx(&nameIdens, nameIdens.len -1);
        struct syntax* callNode = partSntx(s, 1);
        struct var* func = resolveCallTarget(ctx, nameNode);
        //only the one primary directly under a `try` is allowed to be a fallible call - see buildTryExpr
        bool allowed = ctx->allowFallibleCall;
        ctx->allowFallibleCall = false;
        struct list args = buildArgs(ctx, firstPartOfType(callNode, SNTX_EXPR_ARGS));
        if (!func) return OperandIntLiteral(nameTok);
        if (func->type.bType != BASETYPE_FUNC) { ErrMsgSemantic(nameTok, NOT_CALLABLE); return OperandIntLiteral(nameTok); }
        if (func->type.errors.len > 0 && !allowed) ErrMsgSemantic(nameTok, UNHANDLED_FALLIBLE_CALL);
        return OperandFuncCall(func, args, nameTok);
    }
    //parenthesized sub-expression: TOK_PAREN_O SNTX_EXPR TOK_PAREN_C
    return buildExprFromSyntax(ctx, firstPartOfType(s, SNTX_EXPR));
}

struct operand* buildExprFromSyntax(struct checkCtx* ctx, struct syntax* s) {
    switch (s->type) {
        //SNTX_EXPR is always a single-child wrapper around whatever parseBinaryExpr actually built - a
        //degenerate 1-part "chain" itself when parts.len==1, so buildBinChain's own generic handling of
        //that shape (just recurse into part[0] and return it) covers both uniformly - see the report
        case SNTX_EXPR: case SNTX_EXPR_BINARY:
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
    struct operand* rhs = buildExprFromSyntax(ctx, firstPartOfType(s, SNTX_EXPR));

    struct syntax* typeExprNode = firstPartOfType(s, SNTX_TYPE_EXPR);
    struct type declType;
    if (typeExprNode) {
        //ctx->func is NULL for a global initializer, which has no parameter list to tag a "{name}" against
        declType = resolveTypeExpr(ctx->mod, typeExprNode, ctx->func ? &ctx->func->type.vars : NULL);
        if (!OperandFitsType(rhs, declType)) ErrMsgSemantic(rhs->tok, VALUE_TYPE_MISMATCH);
    } else { // ":=" - type read straight off the (required-to-be-literal) initializer
        if (!rhs->isLiteral) ErrMsgSemantic(rhs->tok, TYPE_CANNOT_BE_INFERRED);
        declType = rhs->type;
    }

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

    if (!OperandIsLvalue(target)) ErrMsgSemantic(target->tok, NOT_AN_LVALUE);
    else if (!OperandIsMutableLvalue(target)) ErrMsgSemantic(target->tok, VAR_IMMUTABLE);

    bool isCompound;
    enum operation compoundOp = compoundOpFromAssignTok(opTok.type, &isCompound);
    struct operand* value = rhs;
    if (isCompound) value = OperandBinary(target, rhs, compoundOp, opTok);
    else if (!OperandFitsType(rhs, target->type)) ErrMsgSemantic(opTok, VALUE_TYPE_MISMATCH);

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
    struct operand* initVal = buildExprFromSyntax(&innerCtx, firstPartOfType(initNode, SNTX_EXPR));

    struct syntax* typeExprNode = firstPartOfType(initNode, SNTX_TYPE_EXPR);
    struct type declType;
    if (typeExprNode) {
        declType = resolveTypeExpr(ctx->mod, typeExprNode, ctx->func ? &ctx->func->type.vars : NULL);
        if (!OperandFitsType(initVal, declType)) ErrMsgSemantic(initVal->tok, VALUE_TYPE_MISMATCH);
    } else { // ":=" - type read straight off the (required-to-be-literal) initializer
        if (!initVal->isLiteral) ErrMsgSemantic(initVal->tok, TYPE_CANNOT_BE_INFERRED);
        declType = initVal->type;
    }
    struct var* loopVar = scopeDeclare(innerCtx.scope, strFromTok(nameTok), nameTok, declType, mut);

    struct list exprs = allPartsOfType(s, SNTX_EXPR);
    struct operand* cond = buildExprFromSyntax(&innerCtx, *(struct syntax**)ListGetIdx(&exprs, 0));
    struct operand* post = buildExprFromSyntax(&innerCtx, *(struct syntax**)ListGetIdx(&exprs, 1));
    if (!OperandIsBool(cond)) ErrMsgSemantic(cond->tok, OPERATION_REQUIRES_BOOL);

    struct statement stmt = (struct statement){0};
    stmt.sType = STATEMENT_FOR;
    stmt.var = *loopVar;
    stmt.op = cond;
    stmt.forInit = initVal;
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
    if (!TypeIsSame(val->type, matchedType)) ErrMsgSemantic(val->tok, MATCH_CASE_TYPE_MISMATCH);
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

    if (val && ctx->func && !ctx->func->type.hasRetType) ErrMsgSemantic(tok, RETURN_VALUE_IN_VOID_FUNC);
    else if (!val && ctx->func && ctx->func->type.hasRetType) ErrMsgSemantic(tok, RETURN_MISSING_VALUE);
    else if (val && ctx->func && ctx->func->type.hasRetType && !OperandFitsType(val, *ctx->func->type.retType)) {
        ErrMsgSemantic(val->tok, RETURN_TYPE_MISMATCH);
    }

    struct statement stmt = (struct statement){0};
    stmt.sType = STATEMENT_RET;
    stmt.op = val;
    return stmt;
}

struct statement buildErrorStmnt(struct checkCtx* ctx, struct syntax* s) {
    struct token tok = firstTokOfType(s, TOK_ERROR);
    struct list idens = allTokOfType(s, TOK_IDEN);
    struct token errTypeTok = *(struct token*)ListGetIdx(&idens, 0);
    struct token wordTok = *(struct token*)ListGetIdx(&idens, 1);

    struct statement stmt = (struct statement){0};
    stmt.sType = STATEMENT_ERROR;

    if (!ctx->func) { ErrMsgSemantic(tok, ERROR_STMNT_OUTSIDE_FUNC); return stmt; }

    struct type* errType = TypeGetList(&ctx->mod->types, strFromTok(errTypeTok));
    if (!errType || errType->bType != BASETYPE_ERROR) { ErrMsgSemantic(errTypeTok, UNKNOWN_ERROR); return stmt; }
    resolveTypeDecl(errType);

    bool declared = false;
    for (int i = 0; i < ctx->func->type.errors.len; i++) {
        if (*(struct type**)ListGetIdx(&ctx->func->type.errors, i) == errType) { declared = true; break; }
    }
    if (!declared) { ErrMsgSemantic(errTypeTok, ERROR_NOT_DECLARED_IN_SIG); return stmt; }

    stmt.op = OperandErrorLiteral(*errType, wordTok);
    return stmt;
}

struct statement buildDoneStmnt(struct checkCtx* ctx, struct syntax* s) {
    (void)ctx; (void)s;
    return (struct statement){.sType = STATEMENT_DONE};
}

struct statement buildCrashStmnt(struct checkCtx* ctx, struct syntax* s) {
    (void)ctx; (void)s;
    return (struct statement){.sType = STATEMENT_CRASH};
}

//"try f(...) catch A || B.word { ... }" - pure control flow, the caught error is never bound to a value.
//An error not fully caught here propagates per the normal try rules (see StatementCatchCoversType below)
struct statement buildTryCatchStmnt(struct checkCtx* ctx, struct syntax* s) {
    struct token tok = firstTokOfType(s, TOK_TRY);
    struct syntax* primaryNode = firstPartOfType(s, SNTX_EXPR_PRIMARY);
    struct syntax* catchNode = firstPartOfType(s, SNTX_CATCH_CLAUSE);

    struct statement stmt = (struct statement){0};
    stmt.sType = STATEMENT_TRY_CATCH;

    bool prevAllow = ctx->allowFallibleCall;
    ctx->allowFallibleCall = true;
    struct operand* callOp = buildExprFromSyntax(ctx, primaryNode);
    ctx->allowFallibleCall = prevAllow;
    stmt.op = callOp;
    stmt.block = buildBlock(ctx, firstPartOfType(catchNode, SNTX_BLOCK));
    stmt.catchMatches = ListInit(sizeof(struct catchMatch));

    if (callOp->opType != OPERATION_FUNCCALL || callOp->readVar->type.errors.len == 0) {
        ErrMsgSemantic(tok, TRY_REQUIRES_FALLIBLE_CALL);
        return stmt;
    }

    struct syntax* errListNode = firstPartOfType(catchNode, SNTX_CATCH_ERR_LIST);
    struct list matchNodes = allPartsOfType(errListNode, SNTX_CATCH_ERR);
    for (int i = 0; i < matchNodes.len; i++) {
        struct syntax* m = *(struct syntax**)ListGetIdx(&matchNodes, i);
        struct list idens = allTokOfType(m, TOK_IDEN);

        //1 identifier: "MyError" (same-module, whole type). 3: "alias.MyError.word" (cross-module, one
        //word) - unambiguous either way. 2 is the genuinely ambiguous case: "Foo.Bar" could be a same-
        //module "MyError.word" or a cross-module "alias.MyError" (whole type) - resolved by which
        //namespace the leading identifier actually belongs to (an import alias and an error type can
        //never collide, since imports and types are different lists)
        struct semaModule* target = NULL; //non-NULL iff this match names a foreign module's error type
        struct token typeTok;
        bool hasWordTok = false;
        struct token wordTok = {0};

        if (idens.len == 1) {
            typeTok = *(struct token*)ListGetIdx(&idens, 0);
        } else if (idens.len == 3) {
            struct token aliasTok = *(struct token*)ListGetIdx(&idens, 0);
            typeTok = *(struct token*)ListGetIdx(&idens, 1);
            wordTok = *(struct token*)ListGetIdx(&idens, 2);
            hasWordTok = true;
            target = findImport(ctx->mod, strFromTok(aliasTok));
            if (!target) { ErrMsgSemantic(aliasTok, UNKNOWN_NAMESPACE); continue; }
        } else { //idens.len == 2 - the ambiguous case
            struct token first = *(struct token*)ListGetIdx(&idens, 0);
            struct token second = *(struct token*)ListGetIdx(&idens, 1);
            target = findImport(ctx->mod, strFromTok(first));
            if (target) {
                typeTok = second; //alias.MyError - whole type, foreign module
            } else {
                typeTok = first; //MyError.word - one word, same module
                wordTok = second;
                hasWordTok = true;
            }
        }

        struct type* errType = TypeGetList(target ? &target->types : &ctx->mod->types, strFromTok(typeTok));
        if (!errType || errType->bType != BASETYPE_ERROR) { ErrMsgSemantic(typeTok, UNKNOWN_ERROR); continue; }
        if (target && !isPublic(strFromTok(typeTok))) { ErrMsgSemantic(typeTok, TYPE_IS_PRIVATE); continue; }
        resolveTypeDecl(errType);

        bool produces = false;
        for (int j = 0; j < callOp->readVar->type.errors.len; j++) {
            struct type* e = *(struct type**)ListGetIdx(&callOp->readVar->type.errors, j);
            if (TypeIsSame(*e, *errType)) { produces = true; break; }
        }
        if (!produces) { ErrMsgSemantic(typeTok, CATCH_ERROR_NOT_PRODUCED_BY_CALL); continue; }

        struct catchMatch cm = (struct catchMatch){0};
        cm.errType = *errType;
        if (hasWordTok) {
            long long wordIdx = -1;
            for (int w = 0; w < errType->words.len; w++) {
                struct token wt = *(struct token*)ListGetIdx(&errType->words, w);
                if (StrCmp(strFromTok(wt), strFromTok(wordTok))) { wordIdx = w; break; }
            }
            if (wordIdx < 0) { ErrMsgSemantic(wordTok, EXPECTED_ERROR_WORD); continue; }
            cm.hasWord = true;
            cm.wordOrdinal = wordIdx;
        }
        ListAdd(&stmt.catchMatches, &cm);
    }

    //only an error type that ISN'T fully caught here needs to be declared in the enclosing function's own
    //signature - one that's fully caught can never actually escape, so it doesn't need anywhere to
    //propagate to (this also means try/catch can be used inside a test block, which has no error union of
    //its own, as long as every possible error is caught locally)
    for (int i = 0; i < callOp->readVar->type.errors.len; i++) {
        struct type* e = *(struct type**)ListGetIdx(&callOp->readVar->type.errors, i);
        if (StatementCatchCoversType(&stmt.catchMatches, *e)) continue;
        if (!ctx->func) { ErrMsgSemantic(tok, TRY_OUTSIDE_FUNC); return stmt; }
        bool found = false;
        for (int j = 0; j < ctx->func->type.errors.len; j++) {
            struct type* fe = *(struct type**)ListGetIdx(&ctx->func->type.errors, j);
            if (TypeIsSame(*e, *fe)) { found = true; break; }
        }
        if (!found) { ErrMsgSemantic(tok, TRY_ERROR_NOT_IN_SIGNATURE); return stmt; }
    }

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
        case SNTX_STMNT_DONE: return buildDoneStmnt(ctx, actual);
        case SNTX_STMNT_CRASH: return buildCrashStmnt(ctx, actual);
        case SNTX_STMNT_ERROR: return buildErrorStmnt(ctx, actual);
        case SNTX_STMNT_TRY_CATCH: return buildTryCatchStmnt(ctx, actual);
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
            if (firstPartOfType(actual, SNTX_TYPE_EXPR)) {
                if (!OperandFitsType(rhs, v->type)) ErrMsgSemantic(rhs->tok, VALUE_TYPE_MISMATCH);
            } else { // ":=" - type read straight off the (required-to-be-literal) initializer
                if (!rhs->isLiteral) ErrMsgSemantic(rhs->tok, TYPE_CANNOT_BE_INFERRED);
                v->type = rhs->type;
            }
            v->initExpr = rhs;
            continue;
        }
        if (actual->type == SNTX_TEST_DECL) {
            struct checkCtx ctx = {0};
            ctx.mod = mod;
            ctx.hasOwnScope = true;
            struct semaTest test = (struct semaTest){0};
            struct token descTok = firstTokOfType(actual, TOK_STR_LIT);
            test.description = Str(descTok.str.ptr +1, descTok.str.len -2);
            test.codeBlock = buildBlock(&ctx, firstPartOfType(actual, SNTX_BLOCK));
            ListAdd(&mod->tests, &test);
            continue;
        }
        if (actual->type == SNTX_TYPE_DECL) {
            struct token nameTok = firstTokOfType(actual, TOK_IDEN);
            struct type* t = TypeGetList(&mod->types, strFromTok(nameTok));
            if (!t->hasCtor) continue;

            //---- constructor body: a single "return Type{field1, field2, ...}" - see the report for why
            //this needs no dedicated codegen of its own (cgFunction/cgRet/OperandStructLiteral's existing
            //aggregate-literal codegen already do everything this needs) ----
            struct scope ctorScope = scopePush(NULL);
            for (int p = 0; p < t->ctorFunc->type.vars.len; p++) {
                struct var* param = ListGetIdx(&t->ctorFunc->type.vars, p);
                struct var* local = VarAllocSetOrigin();
                *local = *param;
                local->mayBeInitialized = true;
                local->mut = true;
                ListAdd(&ctorScope.localPtrs, &local);
            }
            struct checkCtx cctx = {0};
            cctx.mod = mod;
            cctx.scope = &ctorScope;
            cctx.func = t->ctorFunc;
            cctx.hasOwnScope = true;

            struct list fieldArgs = ListInit(sizeof(struct operand*));
            for (int i = 0; i < t->vars.len; i++) {
                struct var* field = ListGetIdx(&t->vars, i);
                struct syntax* f = *(struct syntax**)ListGetIdx(&t->ctorFieldSyntax, i);
                struct syntax* typeExprNode = firstPartOfType(f, SNTX_TYPE_EXPR);
                struct syntax* rhsNode = firstPartOfType(f, SNTX_EXPR);
                struct operand* fieldOp;
                if (rhsNode) {
                    fieldOp = buildExprFromSyntax(&cctx, rhsNode);
                    if (typeExprNode) {
                        if (!OperandFitsType(fieldOp, field->type)) ErrMsgSemantic(fieldOp->tok, VALUE_TYPE_MISMATCH);
                    } else { // ":=" - type read straight off the (required-to-be-literal) rhs
                        if (!fieldOp->isLiteral) ErrMsgSemantic(fieldOp->tok, TYPE_CANNOT_BE_INFERRED);
                        field->type = fieldOp->type;
                    }
                } else if (typeExprNode) {
                    //no initializer at all - CTOR_FIELD_NOT_INITIALIZED already reported in pass 2;
                    //fabricate a placeholder so the rest of the file still gets checked
                    fieldOp = operandNew(field->tok, OPERATION_NONE, field->type);
                } else {
                    //bare pun - already resolved against a same-named parameter's type in pass 2
                    struct var* param = scopeFindLocal(&ctorScope, field->name);
                    fieldOp = param ? OperandReadVar(param, field->tok) : operandNew(field->tok, OPERATION_NONE, field->type);
                }
                ListAdd(&fieldArgs, &fieldOp);
            }
            struct operand* built = OperandStructLiteral(*t, fieldArgs, t->tok);
            struct statement retStmt = (struct statement){0};
            retStmt.sType = STATEMENT_RET;
            retStmt.op = built;
            t->ctorFunc->codeBlock = ListInit(sizeof(struct statement));
            StatementAdd(&t->ctorFunc->codeBlock, retStmt);

            //---- destructor body: no error union of its own (ctx.func stays NULL, same as a test{}
            //block) - a fallible call inside must be fully caught right here, since a destructor can never
            //propagate a failure to anyone (see the report) ----
            if (t->hasDestruct) {
                struct scope dtorScope = scopePush(NULL);
                struct var* selfParam = ListGetIdx(&t->destructFunc->type.vars, 0);
                struct var* selfLocal = VarAllocSetOrigin();
                *selfLocal = *selfParam;
                selfLocal->mayBeInitialized = true;
                selfLocal->mut = true;
                ListAdd(&dtorScope.localPtrs, &selfLocal);

                struct checkCtx dctx = {0};
                dctx.mod = mod;
                dctx.scope = &dtorScope;
                dctx.hasOwnScope = true;
                dctx.destructSelfVar = selfLocal;
                t->destructFunc->codeBlock = buildBlock(&dctx, t->destructBlockSyntax);
            }
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
        ctx.hasOwnScope = true;
        func->codeBlock = buildBlock(&ctx, firstPartOfType(actual, SNTX_BLOCK));
    }
}

// ---- entry point ----

struct semaModule* SemanticAnalyzeFile(char* fileName, bool testMode) {
    allModules = ListInit(sizeof(struct semaModule*));
    rootModule = semaLoadModule(StrFromCStr(fileName));

    for (int i = 0; i < allModules.len; i++) semaCollectNames(*(struct semaModule**)ListGetIdx(&allModules, i));
    for (int i = 0; i < allModules.len; i++) semaResolveModule(*(struct semaModule**)ListGetIdx(&allModules, i));
    for (int i = 0; i < allModules.len; i++) semaCheckBodies(*(struct semaModule**)ListGetIdx(&allModules, i));

    if (!testMode) {
        struct var* mainFunc = VarGetList(&rootModule->vars, StrFromCStr("main"));
        if (!mainFunc || mainFunc->type.bType != BASETYPE_FUNC) ErrMsgFile(rootModule->fileName, MAIN_FUNC_NOT_FOUND);
        //main is either "nothing" (success, exit 0) or one of its declared errors (exit 1, printed to
        //stderr) - no other success type is meaningful as a process exit code, so none is allowed
        else if (mainFunc->type.vars.len != 0 || mainFunc->type.hasRetType || mainFunc->type.errors.len == 0) {
            ErrMsgFile(rootModule->fileName, INVALID_MAIN_SIGNATURE);
        }
    }
    return rootModule;
}
