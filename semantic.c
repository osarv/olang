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

//x86_64 SysV natural alignment (the same rule LLVM's own default, non-packed struct layout follows for
//the "%m0.Name = type { ... }" aggregates codegen.c emits) - needed so getStructSize's own byte count
//(fed to @malloc/@__olang_scope_alloc for a heap-promoted struct) actually matches the real size LLVM
//lays that same aggregate out at, padding included. See the report for the heap-corruption bug this fixes.
long long TypeGetAlign(struct type t) {
    switch (t.bType) {
        case BASETYPE_VOID: return 1;
        case BASETYPE_BOOL: return 1;
        case BASETYPE_BYTE: return 1;
        case BASETYPE_INT32: return 4;
        case BASETYPE_INT64: return 8;
        case BASETYPE_FLOAT32: return 4;
        case BASETYPE_FLOAT64: return 8;
        case BASETYPE_VOCAB: return 4;
        case BASETYPE_ERROR: return 4;
        case BASETYPE_FUNC: return PTR_SIZE;
        case BASETYPE_SCOPE: return PTR_SIZE;
        case BASETYPE_ARRAY:
            if (t.arrMalloc) return PTR_SIZE; //"{ i64, ptr }" slice - both 8-aligned
            if (t.structMAlloc) return PTR_SIZE; //fixed-size "<>"-heap reference - just a pointer
            return TypeGetAlign(*t.arrElem);
        case BASETYPE_STRUCT: {
            if (t.structMAlloc) return PTR_SIZE;
            long long maxAlign = 1;
            for (int i = 0; i < t.vars.len; i++) {
                long long a = TypeGetAlign((*(struct var*)ListGetIdx(&t.vars, i)).type);
                if (a > maxAlign) maxAlign = a;
            }
            return maxAlign;
        }
    }
    return 1; //unreachable
}

long long getArraySize(struct type t) {
    //a dynamic array VALUE is the full "{ i64 len, ptr data }" slice (16 bytes), not just the pointer -
    //fixed here alongside the new fixed-size-reference case below; a real pre-existing undersizing bug,
    //same class as getStructSize's own padding bug (see the report): nothing sized a struct's malloc off
    //this specific branch until a struct could actually embed a dynamic-array field and get heap-promoted,
    //so it was invisible until now.
    if (t.arrMalloc) return 16;
    if (t.structMAlloc) return PTR_SIZE; //fixed-size "<>"-heap reference - just a pointer, size is on the type
    long long n = t.arrLen ? t.arrLen->intLiteralVal : 0;
    return TypeGetSize(*t.arrElem) * n;
}

//lays fields out in declaration order, padding each one up to its own alignment (never reordered - same
//as LLVM's own literal struct layout) and rounding the final size up to the whole struct's own alignment
//(the usual "tail padding" so an array of these still aligns every element) - see TypeGetAlign
long long getStructSize(struct type t) {
    if (t.structMAlloc) return PTR_SIZE;
    long long offset = 0;
    long long structAlign = 1;
    for (int i = 0; i < t.vars.len; i++) {
        struct type ft = (*(struct var*)ListGetIdx(&t.vars, i)).type;
        long long align = TypeGetAlign(ft);
        if (align > structAlign) structAlign = align;
        offset = (offset + align - 1) / align * align;
        offset += TypeGetSize(ft);
    }
    return (offset + structAlign - 1) / structAlign * structAlign;
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
            //a real, previously-latent bug fixed alongside the array-literal rework below: this never
            //compared the two fixed sizes at all, so e.g. "x mut int32[5] = <an int32[3] value>" silently
            //type-checked - a buffer over-read the moment cgStoreInto's by-ref load/store pair ran, reading
            //5 elements' worth out of a 3-element backing store. Both sides are fixed here (arrMalloc
            //already confirmed equal above and neither is a dynamic slice), so arrLen is always populated.
            if (!a.arrMalloc && a.arrLen->intLiteralVal != b.arrLen->intLiteralVal) return false;
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
    *v = (struct var){0};
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

//all direct !isToken children of s, in original parse order, regardless of type - used where an args list
//can mix item shapes (see buildArrLiteralLevel: each item is either a nested bracket group or a plain
//SNTX_EXPR), unlike allPartsOfType which only ever collects one uniform type.
struct list allSyntaxParts(struct syntax* s) {
    struct list result = ListInit(sizeof(struct syntax*));
    for (int i = 0; i < s->parts.len; i++) {
        struct syntaxPart* p = partAt(s, i);
        if (!p->isToken) ListAdd(&result, &p->sntx);
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

//resolves a "<name>" heap-indirection tag's optional scope name against scopeParams (the function
//parameters visible at this point in the signature/body being resolved, or NULL where none are - struct
//fields and globals, which have no such context; see the report). Bare "<>" (no name token at all) is
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
    (void)scopeParams; //no longer used to resolve a scope tag here - see applyRefMarker
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

    //whether this WHOLE reference will end up "<>"-marked is decided here, once, independent of any
    //array suffixes (a flat check on refNode's own direct tokens) - and used only to decide whether to
    //eagerly resolve the named type. A "<>"-indirect reference is a pointer, not an embedding, so it
    //must not force full resolution of its target - that's exactly what lets a struct reference itself,
    //directly or through an array of itself, without infinite recursion. The marker's actual *effect*
    //(structMAlloc/scopeParam) is applied later, in applyRefMarker, after array suffixes have been
    //wrapped on - see resolveTypeRef.
    bool willBeRef = hasTokOfType(refNode, TOK_LST);
    if (!willBeRef) resolveTypeDecl(found);
    return *found;
}

//applies the trailing "<>"/"<name>" marker (if present on refNode at all) to t, marking it heap-indirect
//- t may be a struct or an array of anything by this point, since this runs AFTER applyArraySuffixes, so
//the marker governs the reference as a whole ("a reference to a [3]Point", not "an array of 3 Point
//references"). See resolveTypeRefBase for why *whether* a marker is present has to be known before that
//point (to avoid eagerly resolving a self-referential type), even though its *effect* is applied after.
struct type applyRefMarker(struct type t, struct syntax* refNode, struct list* scopeParams) {
    if (!hasTokOfType(refNode, TOK_LST)) return t;
    if (t.bType != BASETYPE_STRUCT && t.bType != BASETYPE_ARRAY && t.bType != BASETYPE_VOID) {
        ErrMsgSemantic(firstTokOfType(refNode, TOK_LST), INVALID_REFERENCE_TARGET);
        return t;
    }
    t.structMAlloc = true;
    t.scopeParam = resolveScopeTag(refNode, scopeParams);
    //a "<>"-indirect reference may be grabbed while its (struct) target is still mid-resolution (see
    //resolveTypeRefBase) - its placeholder bType (still BASETYPE_VOID at that point) must not leak
    //through; only reachable with zero array suffixes, since applyArraySuffixes always produces a real
    //BASETYPE_ARRAY outer shell regardless of whether its element is still a placeholder
    if (t.bType == BASETYPE_VOID) t.bType = BASETYPE_STRUCT;
    return t;
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
//which both spell array suffixes the same way ("T[3]", "T[]"). Walked right-to-left (last-written suffix
//wrapped first) so the FIRST-written suffix ends up outermost - "int32[3][4]" is an array of 3, each
//element an "int32[4]", matching how the dimensions read left-to-right.
struct type applyArraySuffixes(struct type base, struct syntax* node) {
    struct list sfx = allPartsOfType(node, SNTX_ARR_SFX);
    for (int i = sfx.len -1; i >= 0; i--) {
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
    struct type base = resolveTypeRefBase(mod, refNode, scopeParams);
    struct type withArrays = applyArraySuffixes(base, refNode);
    return applyRefMarker(withArrays, refNode, scopeParams);
}

//"T[expr]" (expr not a compile-time constant) in a var-decl's own type position, with no initializer, is
//a var-decl-only construct, never a general type: it means "arena-allocate expr zero-valued elements at
//the point of declaration", not "a type whose own size is a runtime value" - see the report. Detecting it
//here, before the normal resolveTypeExpr/applyArraySuffixes path (which would otherwise reject the
//non-constant size with INVALID_ARRAY_SIZE), keeps every other consumer of struct type completely
//unaware runtime sizes exist at all - arrLen stays exactly what it's always been, a compile-time constant
//or nothing. Only a single dimension supports this (matching the existing "outermost level, at most,
//dynamic" restriction on rectangular multi-dimensional arrays) - two or more suffixes, or a suffix that
//IS a compile-time constant, fall through to the ordinary path unchanged.
struct syntax* detectRuntimeSizedArrayType(struct syntax* typeExprNode) {
    struct syntax* actual = partSntx(typeExprNode, 0);
    if (actual->type != SNTX_TYPE_REF) return NULL;
    struct list sfx = allPartsOfType(actual, SNTX_ARR_SFX);
    if (sfx.len != 1) return NULL;
    struct syntax* onlySfx = *(struct syntax**)ListGetIdx(&sfx, 0);
    struct syntax* sizeExprNode = firstPartOfType(onlySfx, SNTX_EXPR);
    if (!sizeExprNode) return NULL; //bare "T[]" - not this case, no size at all
    long long dummy;
    if (tryEvalConstIntExpr(sizeExprNode, &dummy)) return NULL; //a real compile-time constant - ordinary T[N]
    return sizeExprNode;
}

//the declared TYPE half of a "T[expr]" var-decl (see detectRuntimeSizedArrayType above) - the element type
//plus whatever "<>"/"<name>" marker was written, wrapped as an ordinary dynamic ("arrMalloc", no arrLen)
//array - exactly the same shape a bare "T[]" already resolves to. The runtime size itself is consumed
//separately, as the allocation's own element count (see OperandSizedArrayAlloc) - never folded into the
//type, so every existing consumer of struct type (TypeGetSize, TypeIsSame, len(), ...) needs no changes.
struct type resolveRuntimeSizedArrayDeclType(struct semaModule* mod, struct syntax* refNode, struct list* scopeParams) {
    struct type base = resolveTypeRefBase(mod, refNode, scopeParams);
    struct type wrapped = (struct type){0};
    wrapped.bType = BASETYPE_ARRAY;
    wrapped.arrElem = MallocOrCrash(sizeof(struct type));
    *wrapped.arrElem = base;
    wrapped.arrMalloc = true;
    return applyRefMarker(wrapped, refNode, scopeParams);
}

//resolves a literal's base type name node ("MyError" or "alias.MyError", from SNTX_NAME) - the same
//lookup as resolveTypeRefBase, minus the "<>" heap-indirect handling: a literal's own trailing "{...}"
//holds values, not the (always-empty) heap-indirection marker, and constructing a value always requires
//the type to be fully resolved (never the "grab it mid-resolution" trick <> exists for)
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
        //generic over a scope, which olang has no mechanism for yet (see the report). A bare "<>" field
        //still works fine (structMAlloc, private/local scope); an explicit "<name>" field correctly fails
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

//true iff typeExprNode is a bare, unsuffixed "scope" name - no array suffix, no "<>"/"<name>" tag, no
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
    if (hasTokOfType(actual, TOK_LST)) return false;
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
        //later param's "<name>" tag (e.g. "func f(s scope, n Node<s>)"), not the other way around
        v.type = isScopeTypeRef(typeExprNode) ? TypeScope() : resolveTypeExpr(mod, typeExprNode, out);
        ListAdd(out, &v);
    }
}

//true if t (or anything nested inside it, transitively, through plain/embedded fields only) has a bare
//"<>" (unnamed) heap-indirect field - the shape that dangles the instant a plain value containing it
//escapes via return, since there's no scope name anywhere in the signature it could have been tied to.
//Deliberately doesn't chase into a NAMED "<name>" field's own pointee: that field's lifetime is already
//an explicit, independently-checked fact tied to its own name, not something this returning function
//could be responsible for regardless of how it got here. Never infinite: a plain (non-"<>") struct can
//never recursively embed itself (that's exactly what "<>" exists to break), so any embedded chain
//through this function alone is guaranteed to bottom out.
bool structContainsBareScopeField(struct type t) {
    if (t.bType != BASETYPE_STRUCT) return false;
    for (int i = 0; i < t.vars.len; i++) {
        struct type ft = (*(struct var*)ListGetIdx(&t.vars, i)).type;
        if (ft.bType != BASETYPE_STRUCT) continue;
        if (ft.structMAlloc) {
            if (!ft.scopeParam) return true;
            continue;
        }
        if (structContainsBareScopeField(ft)) return true;
    }
    return false;
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
        //e.g. "func makeNode(v int32, s scope) Node<s>"
        *t.retType = resolveTypeExpr(mod, firstPartOfType(retTypeNode, SNTX_TYPE_EXPR), &t.vars);
        //a bare "<>" return type is always wrong, not just sometimes: the function's own private scope
        //closes at the exact point it returns (see cgCloseOwnScope in codegen.c), so a value tagged to it
        //would already be dangling before the caller ever sees it - catching this once, here, covers
        //every return statement in the function (single, multiple, implicit fallthrough, error
        //propagation) without needing to inspect each one individually. The transitive case - a bare "<>"
        //field nested inside a plain (non-heap-indirect) returned struct - is also caught, below.
        if (t.retType->bType == BASETYPE_STRUCT && t.retType->structMAlloc && !t.retType->scopeParam) {
            ErrMsgSemantic(firstTokOfType(retTypeNode, TOK_QSNTMRK), BARE_SCOPE_RETURN_TYPE);
        //the transitive case: a PLAIN return type (not itself heap-indirect, so the check above doesn't
        //fire) that embeds a bare "<>" field somewhere inside it - see structContainsBareScopeField.
        //Conservative on purpose: this rejects some sound code too (a function that only ever passes an
        //already-correctly-scoped value straight through, never allocating into the bare field itself,
        //would be fine at runtime) - but nothing short of real dataflow/escape analysis (not attempted
        //here) can tell that case apart from the unsound one at the signature level alone, and signature-
        //level is as far as this check goes, deliberately, matching BARE_SCOPE_RETURN_TYPE's own scope.
        } else if (t.retType->bType == BASETYPE_STRUCT && !t.retType->structMAlloc
                && structContainsBareScopeField(*t.retType)) {
            ErrMsgSemantic(firstTokOfType(retTypeNode, TOK_QSNTMRK), NESTED_BARE_SCOPE_RETURN_TYPE);
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
            if (typeExprNode) {
                //a "T[expr]" runtime-sized array (see detectRuntimeSizedArrayType) is rejected for globals
                //in semaCheckBodies (no "own"/enclosing scope exists to arena-allocate into at global-init
                //time) - resolved here the same shape a bare "T[]" already gets, just so v->type is at
                //least well-formed in the meantime; the real rejection happens once the (missing)
                //initializer is checked, where a clearer message can be given.
                struct syntax* runtimeSizeExprNode = detectRuntimeSizedArrayType(typeExprNode);
                v->type = runtimeSizeExprNode
                    ? resolveRuntimeSizedArrayDeclType(mod, partSntx(typeExprNode, 0), NULL)
                    : resolveTypeExpr(mod, typeExprNode, NULL); //global, no function context
            }
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
    op->scopeBindings = ListInit(sizeof(struct scopeBinding));
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

static bool typeIsRefShaped(struct type t) {
    return t.bType == BASETYPE_STRUCT || (t.bType == BASETYPE_ARRAY && !t.arrMalloc);
}

//a function's own parameters get resolved into TWO distinct struct var instances that are never the same
//pointer: the type-level original (func->type.vars, built once during signature resolution - pass 2) and
//a fresh copy pushed into the local scope chain for body-checking (semaCheckBodies - pass 3, since a
//parameter is also an ordinary local as far as expression-building/scopeFindLocal is concerned). A type-
//level scope tag (a var-decl's declared type, a return type) always resolves against the former; a
//value-level read (lookupVar, e.g. an argument expression like "own"/"s" inside a call) always resolves
//against the latter. Comparing the two by raw identity - exactly what a call's own scope-binding map does
//when it captures an argument's readVar (see OperandFuncCall) - would incorrectly treat them as
//different scopes. semaCheckBodies sets each copy's own .origin to the type-level original it was copied
//from (the same field ordinary locals already use to track "where this declaration is stored" - see
//struct var's own comment in semantic.h), so canonicalVar resolves either shape back to the one, stable,
//type-level identity varIsOwnParam/scopeCanFlowInto compare against.
struct var* canonicalVar(struct var* v) {
    if (!v) return NULL;
    return v->origin ? v->origin : v;
}

//true if scopeVar is one of func's own declared parameters, by identity (after canonicalization - see
//canonicalVar) - the same pattern cgResolveParamScopeOverride (codegen.c) already uses to compare a scope
//tag against a signature's own param list, generalized here to also handle a value-level copy. func may
//be NULL (a global initializer or a test{} block, neither of which has a parameter list of its own) -
//always false there.
bool varIsOwnParam(struct var* scopeVar, struct var* func) {
    if (!scopeVar || !func) return false;
    scopeVar = canonicalVar(scopeVar);
    for (int i = 0; i < func->type.vars.len; i++) {
        if (canonicalVar(ListGetIdx(&func->type.vars, i)) == scopeVar) return true;
    }
    return false;
}

//resolves scopeVar to whatever it's *effectively* bound to from op's own perspective, one hop through
//op's own scopeBindings map (populated for a call operand by OperandFuncCall, for a member operand by
//OperandMember - which also composes a field's own *persisted* map through this same lookup, letting a
//chain of member accesses resolve through however many levels of nested constructor-bearing types it
//passes through, one hop at a time - see the "field of a field" entry in the report - and propagated onto
//a var, and so onto every later read of it, by buildVarDeclStmnt). Falls through to scopeVar unchanged
//when op carries no matching entry (the common case: nothing to substitute, either because op has no map
//at all or scopeVar isn't one of the keys it knows how to resolve). Canonicalizes both sides before
//comparing (see canonicalVar) since a stored key/value may be either a type-level scope param or a
//function/constructor body's own scope-chain copy of one, depending on which pass produced it.
struct var* resolveEffectiveScopeVar(struct operand* op, struct var* scopeVar) {
    if (!scopeVar) return NULL;
    struct var* canonScopeVar = canonicalVar(scopeVar);
    for (int i = 0; i < op->scopeBindings.len; i++) {
        struct scopeBinding* b = ListGetIdx(&op->scopeBindings, i);
        if (canonicalVar(b->typeParam) == canonScopeVar) return b->boundTo;
    }
    return scopeVar;
}

//a dedicated, never-otherwise-reachable "known ambiguous" scope identity - see foldScopeBindingsBranch/
//scopeCanFlowInto below. Never equal to any real function's own parameter (no function's own type.vars
//list can ever contain THIS specific instance), so distinguishing it from an ordinary foreign/untracked
//scope tag matters: "we never tried to trace this var" (an empty scopeBindings map - the existing,
//pre-existing "unverifiable, allow" default is correct there) is a fundamentally different fact from "we
//traced it and found it can be more than one thing depending on which branch ran" (this sentinel) - the
//latter must reject, not fall through to the same default, or the whole point of tracking reassignment
//across branches would be silently undone the moment two branches disagree.
struct var scopeAmbiguousStorage = {0};
struct var* SCOPE_AMBIGUOUS = &scopeAmbiguousStorage;

//can a "<>"-heap-indirect value tagged srcScope be safely stored into a slot tagged dstScope, from the
//perspective of func (the function currently being checked)? NULL means "bare <> - this function's own
//private scope". olang has no lifetime-bound syntax (no Rust-style "'a: 'b"), so only two relationships
//are ever provable: the exact same scope (trivially safe - covers own-into-own too), and a named scope
//flowing into a bare "<>" slot (every scope RECEIVED as a parameter is guaranteed to outlive func's own
//private scope, by construction - own's scope closes when func itself returns, strictly before any scope
//its caller passed in could close - see the report). The reverse (own flowing into a named slot) is never
//safe, and two DIFFERENT named scopes are never provably comparable at all.
//Deliberately conservative outside func's own frame: a scope tag that isn't one of func's own declared
//parameters, and that OperandFitsType's own resolveEffectiveScopeVar call couldn't resolve into one either
//(a chain deeper than the one hop that mechanism covers - see the report), can't be compared against
//func's frame at all yet, so it's left unchecked rather than risking a false rejection of valid code. A
//SCOPE_AMBIGUOUS srcScope is the one deliberate exception to that leniency - see its own comment above.
bool scopeCanFlowInto(struct var* func, struct var* srcScope, struct var* dstScope) {
    if (srcScope == SCOPE_AMBIGUOUS) return false;
    srcScope = canonicalVar(srcScope);
    dstScope = canonicalVar(dstScope);
    if (srcScope == dstScope) return true;
    if (srcScope && !varIsOwnParam(srcScope, func)) return true;
    if (dstScope && !varIsOwnParam(dstScope, func)) return true;
    return srcScope != NULL && dstScope == NULL;
}

enum typeFit {
    TYPE_FIT_OK,
    TYPE_FIT_MISMATCH,      //VALUE_TYPE_MISMATCH - structurally different types
    TYPE_FIT_SCOPE_MISMATCH,//SCOPE_MAY_NOT_OUTLIVE_TARGET - structurally fine, scope-unsafe - see scopeCanFlowInto
    TYPE_FIT_ARRAY_SIZE_MISMATCH //WRONG_ARG_COUNT - same element type, both fixed-size, different sizes
};

//can op flow into a target-typed slot (assignment, initialization, argument passing)? an int literal
//widens into a float slot since it carries no fixed width of its own yet; anything else must match
//exactly - general implicit numeric conversion (e.g. int32->int64, or non-literal int->float) is
//undecided language design, not implemented here.
//func is the function currently being checked (NULL for a global initializer/test{} block) - only used for
//the scope-safety check below: when both target and op->type are ALREADY "<>"-heap-indirect (an existing
//reference being passed/reassigned, not a fresh literal about to be promoted - see typeNeedsMallocPromotion
//in codegen.c, the codegen-side mirror of this same "already has a reference" condition), verify the
//source's scope is provably at least as long-lived as the target's own declared scope - see
//scopeCanFlowInto. A fresh, not-yet-referenced value (a literal) always starts life directly in the
//target's own scope at the point it's promoted, so there's nothing to check there at all. Returns a 3-way
//result rather than a bool specifically so callers can report SCOPE_MAY_NOT_OUTLIVE_TARGET instead of the
//much less helpful generic VALUE_TYPE_MISMATCH when that's what actually failed.
enum typeFit OperandFitsType(struct var* func, struct operand* op, struct type target) {
    if (TypeIsSame(target, op->type)) {
        //a struct or fixed array is reference-shaped only when explicitly "<>"-marked (structMAlloc) - a
        //plain/embedded value has no scope of its own to check at all. A dynamic array is different: it's
        //always pointer-backed the moment it's arrMalloc, with or without an explicit marker (there's no
        //"embedded" shape for a runtime-known length to begin with - see the report), so its scope tag is
        //always meaningful to check, regardless of structMAlloc.
        bool needsScopeCheck = (typeIsRefShaped(target) && target.structMAlloc && op->type.structMAlloc)
            || (target.bType == BASETYPE_ARRAY && target.arrMalloc);
        if (needsScopeCheck) {
            struct var* effectiveSrc = resolveEffectiveScopeVar(op, op->type.scopeParam);
            if (!scopeCanFlowInto(func, effectiveSrc, target.scopeParam)) return TYPE_FIT_SCOPE_MISMATCH;
        }
        return TYPE_FIT_OK;
    }
    if (op->isLiteral && TypeIsInt(op->type) && TypeIsFloat(target)) {
        //a real, pre-existing bug fixed alongside the array-literal rework: this widened op's TYPE but
        //never actually converted its VALUE, leaving floatLiteralVal at its zero-initialized default -
        //cgFloatConst (codegen.c) reads floatLiteralVal once op->type says float, so e.g. "x mut float32 =
        //5" silently produced 0.0. Invisible before now because nothing in the existing test suite passed
        //a bare int literal where a float was expected; surfaced immediately by a mixed int/float array
        //literal built while testing the array-literal rework.
        op->floatLiteralVal = (double)op->intLiteralVal;
        op->type = target;
        return TYPE_FIT_OK;
    }
    //a fresh fixed-size array literal may flow into a dynamic ("T[]") target regardless of its own size -
    //malloc-and-copy at the point it's promoted (see typeNeedsDynamicPromotion/cgPromoteFixedArrayToDynamic
    //in codegen.c). The array-sizing counterpart to the "<>"-reference malloc-promotion above - an
    //orthogonal axis, not the same mechanism (see the report) - so it's gated on op->isLiteral the same way
    //the int->float widening above is: an arbitrary *existing* fixed-array value flowing into a dynamic
    //slot is a different, broader question this doesn't attempt to answer.
    if (op->isLiteral && op->type.bType == BASETYPE_ARRAY && target.bType == BASETYPE_ARRAY
            && !op->type.arrMalloc && target.arrMalloc && TypeIsSame(*op->type.arrElem, *target.arrElem)) {
        return TYPE_FIT_OK;
    }
    //both fixed-size arrays of the same element type, but the sizes differ - report the more specific
    //WRONG_ARG_COUNT instead of the generic mismatch message. Not gated on op->isLiteral: this is just as
    //meaningful for an existing fixed-array value as for a fresh literal.
    if (op->type.bType == BASETYPE_ARRAY && target.bType == BASETYPE_ARRAY
            && !op->type.arrMalloc && !target.arrMalloc && TypeIsSame(*op->type.arrElem, *target.arrElem)) {
        return TYPE_FIT_ARRAY_SIZE_MISMATCH;
    }
    return TYPE_FIT_MISMATCH;
}

void reportTypeFit(enum typeFit fit, struct token tok) {
    if (fit == TYPE_FIT_SCOPE_MISMATCH) ErrMsgSemantic(tok, SCOPE_MAY_NOT_OUTLIVE_TARGET);
    else if (fit == TYPE_FIT_ARRAY_SIZE_MISMATCH) ErrMsgSemantic(tok, WRONG_ARG_COUNT);
    else if (fit == TYPE_FIT_MISMATCH) ErrMsgSemantic(tok, VALUE_TYPE_MISMATCH);
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
    op->scopeBindings = v->scopeBindings; //propagated one hop at declaration time - see buildVarDeclStmnt
    return op;
}

struct operand* OperandFuncCall(struct var* callerFunc, struct var* func, struct list args, struct token tok) {
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
        reportTypeFit(OperandFitsType(callerFunc, arg, paramType), arg->tok);
    }
    //records, for each of func's own scope-typed parameters, what was concretely passed at this call site
    //- "own" (bare) or a direct read of one of the CALLER's own scope parameters, the only two shapes a
    //"scope"-typed argument can ever have (see the report). Lets a later read of this call's own return
    //value (or, one hop further, a var initialized from it) resolve a scope tag that's one of func's own
    //params back into something meaningful in the caller's frame - see resolveEffectiveScopeVar/
    //OperandFitsType. Works identically whether func is an ordinary function or a struct's synthetic
    //constructor - both are just a BASETYPE_FUNC var, no special-casing needed here either.
    //boundTo is stored canonicalized (see canonicalVar): this call may be checked inside a body where the
    //argument's own readVar is a scope-chain copy (an ordinary function/constructor's own parameter, read
    //back as a value - see canonicalVar's own comment), and when this map ends up *persisted* past this
    //one check (a constructor field's own scopeBindings - see semaCheckBodies/the "field of a field" entry
    //in the report), storing the type-level original is what makes it a portable, comparable key/value
    //for any later, unrelated caller's own resolveEffectiveScopeVar lookup.
    for (int i = 0; i < func->type.vars.len; i++) {
        struct var* param = ListGetIdx(&func->type.vars, i);
        if (param->type.bType != BASETYPE_SCOPE) continue;
        struct operand* arg = *(struct operand**)ListGetIdx(&args, i);
        struct scopeBinding b = (struct scopeBinding){0};
        b.typeParam = param;
        b.boundTo = arg->opType == OPERATION_READ_VAR ? canonicalVar(arg->readVar) : NULL;
        ListAdd(&op->scopeBindings, &b);
    }
    return op;
}

//"len(arr)" - unlike C, an olang array always carries its own length; this is the one sanctioned way to
//read it. Returns int32, matching the integer type used everywhere else in the language (there's no way
//to write an int64 literal at all currently - bare integer literals are always int32 with no widening
//path - so an int64-returning len() would be awkward to use anywhere, and an array length never needs
//int64's extra range in practice); the underlying runtime slice field is i64, so the dynamic case
//truncates - see cgLen. Always evaluates arg (kept as this operand's own arg, for any side effects a
//more complex argument expression might have), but for a compile-time-known dimension (embedded, or a
//"<>"-tagged fixed-size reference) codegen emits the constant directly rather than computing anything at
//runtime - only a genuinely dynamic ("T[]") array reads its length from the runtime slice.
struct operand* OperandLen(struct operand* arg, struct token tok) {
    if (arg->type.bType != BASETYPE_ARRAY) {
        ErrMsgSemantic(tok, LEN_REQUIRES_ARRAY);
        return operandNew(tok, OPERATION_NONE, TypeVanilla(BASETYPE_INT32));
    }
    struct operand* op = operandNew(tok, OPERATION_LEN, TypeVanilla(BASETYPE_INT32));
    ListAdd(&op->args, &arg);
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
    //if this field carries a scope tag (only possible for a constructor-bearing type - see the report),
    //resolve it through base's own scopeBindings map one hop and record the (possibly still-foreign)
    //result under the same key, so a later OperandFitsType check on THIS member operand resolves it too -
    //see resolveEffectiveScopeVar. A no-op (empty map on op) when the field has no scope tag, or base
    //carries no relevant binding for it - falls back to today's "unverifiable, allow" behavior either way.
    if (memberVar->type.scopeParam) {
        struct scopeBinding b = (struct scopeBinding){0};
        b.typeParam = memberVar->type.scopeParam;
        b.boundTo = resolveEffectiveScopeVar(base, memberVar->type.scopeParam);
        ListAdd(&op->scopeBindings, &b);
    }
    //"field of a field": if this field's own declared type is itself constructor-bearing, memberVar's own
    //scopeBindings (persisted once, at THIS field's declaration - see semaCheckBodies's ctor-body-check,
    //which builds this field's own initializer expression the same way any other call is built, then saves
    //its resulting map here) records, in terms of the field's own type's *inner* ctor scope params, what
    //each was bound to at the point this field's value was originally constructed. Composing each entry
    //through base's own map (one more resolveEffectiveScopeVar hop) is what lets a further member access
    //on THIS operand (e.g. the ".leaf" in "o.mid.leaf") resolve correctly - the map on the "mid" operand
    //itself now carries an entry keyed by MID's own "s", not just OUTER's - see the report. A no-op (empty
    //loop) whenever the field's own type has no such map of its own, e.g. an ordinary plain struct field.
    for (int i = 0; i < memberVar->scopeBindings.len; i++) {
        struct scopeBinding* inner = ListGetIdx(&memberVar->scopeBindings, i);
        struct scopeBinding b = (struct scopeBinding){0};
        b.typeParam = inner->typeParam;
        b.boundTo = resolveEffectiveScopeVar(base, inner->boundTo);
        ListAdd(&op->scopeBindings, &b);
    }
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
struct operand* OperandStructLiteral(struct var* callerFunc, struct type t, struct list args, struct token tok) {
    struct operand* op = operandNew(tok, OPERATION_NONE, t);
    op->isLiteral = true;
    op->args = args;
    if (args.len != t.vars.len) { ErrMsgSemantic(tok, WRONG_ARG_COUNT); return op; }
    for (int i = 0; i < args.len; i++) {
        struct operand* arg = *(struct operand**)ListGetIdx(&args, i);
        struct type memberType = (*(struct var*)ListGetIdx(&t.vars, i)).type;
        reportTypeFit(OperandFitsType(callerFunc, arg, memberType), arg->tok);
    }
    return op;
}

//"int32[3][1, 2, 3]" (fixed - value count must match the declared size exactly) or "int32[][1, 2, 3]"
//(dynamic - mallocd at runtime, see cgAggregateLiteral; size is just however many values are given)
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

struct operand* buildArrLiteralLevel(struct checkCtx* ctx, struct type elemType, struct syntax* argsNode, struct token tok);

//one item of an array literal's own SNTX_ARR_LIT_ARGS - either a nested bracket group (recursed into with
//the same elemType, one array level deeper - see buildArrLiteralLevel) or a plain leaf expression.
struct operand* buildArrLiteralItem(struct checkCtx* ctx, struct type elemType, struct syntax* item) {
    if (item->type == SNTX_ARR_LIT_NESTED) {
        struct token innerTok = firstTokOfType(item, TOK_SQUARE_O);
        return buildArrLiteralLevel(ctx, elemType, firstPartOfType(item, SNTX_ARR_LIT_ARGS), innerTok);
    }
    return buildExprFromSyntax(ctx, item);
}

//builds one level of a (possibly nested) array literal - see the report. elemType is the one scalar
//element type stated explicitly at the very front of the whole literal (e.g. "int32" in
//"int32[[1,2,3],[4,5,6]]"), threaded down unchanged through every level of recursion; a nested row never
//restates it. A leaf item (a plain value) is always checked against elemType directly - it's explicit and
//authoritative at every depth, so e.g. an int literal correctly widens to float32 here the same way it
//would anywhere else. A nested item has no restated type of its own, so instead the first row's own
//recursively-determined type becomes this level's element type, and every sibling row is checked against
//that - a differently-shaped or differently-sized sibling row surfaces as an ordinary type-fit error, the
//same machinery as any other mismatch, no separate "shape" check needed. Always self-describing (fixed
//size = however many items are given, at every level) regardless of what it's eventually checked against -
//see OperandFitsType for the one case that's context-dependent (a fixed literal flowing into a dynamic
//target).
struct operand* buildArrLiteralLevel(struct checkCtx* ctx, struct type elemType, struct syntax* argsNode, struct token tok) {
    struct list items = allSyntaxParts(argsNode);
    struct list builtArgs = ListInit(sizeof(struct operand*));
    for (int i = 0; i < items.len; i++) {
        struct syntax* item = *(struct syntax**)ListGetIdx(&items, i);
        struct operand* built = buildArrLiteralItem(ctx, elemType, item);
        ListAdd(&builtArgs, &built);
    }
    bool nested = items.len > 0 && (*(struct syntax**)ListGetIdx(&items, 0))->type == SNTX_ARR_LIT_NESTED;
    struct type levelElemT = nested ? (*(struct operand**)ListGetIdx(&builtArgs, 0))->type : elemType;
    for (int i = 0; i < builtArgs.len; i++) {
        struct operand* arg = *(struct operand**)ListGetIdx(&builtArgs, i);
        reportTypeFit(OperandFitsType(ctx->func, arg, levelElemT), arg->tok);
    }

    struct type t = (struct type){0};
    t.bType = BASETYPE_ARRAY;
    t.arrElem = MallocOrCrash(sizeof(struct type));
    *t.arrElem = levelElemT;
    t.arrMalloc = false;
    struct operand* lenOp = MallocOrCrash(sizeof(struct operand));
    *lenOp = (struct operand){0};
    lenOp->type = TypeVanilla(BASETYPE_INT64);
    lenOp->isLiteral = true;
    lenOp->intLiteralVal = builtArgs.len;
    t.arrLen = lenOp;

    struct operand* op = operandNew(tok, OPERATION_NONE, t);
    op->isLiteral = true;
    op->args = builtArgs;
    return op;
}

//"T[v1, ...]" - see buildArrLiteralLevel for how the type itself is determined (from resolveLiteralBaseType
//plus the argument list's own nesting/counts) and checked.
struct operand* buildArrayLiteralExpr(struct checkCtx* ctx, struct syntax* s) {
    struct syntax* nameNode = firstPartOfType(s, SNTX_NAME);
    struct token tok = firstTokOfType(s, TOK_SQUARE_O);
    struct type elemType = resolveLiteralBaseType(ctx->mod, nameNode);
    //an error type has no constructible values at all - every element would fail to type-check anyway, but
    //an *empty* literal ("MathError[]") would otherwise slip through with nothing to check at all
    if (elemType.bType == BASETYPE_ERROR) {
        ErrMsgSemantic(tok, INVALID_ARRAY_LITERAL_TYPE);
        return operandNew(tok, OPERATION_NONE, TypeVanilla(BASETYPE_INT32));
    }
    return buildArrLiteralLevel(ctx, elemType, firstPartOfType(s, SNTX_ARR_LIT_ARGS), tok);
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
        return OperandStructLiteral(ctx->func, t, args, tok);
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
        //"len(arr)" is a compiler builtin, not an ordinary callable var - intercepted here, before the
        //normal var/constructor lookup, so a bare (never aliased) "len" is never shadowable by a real
        //declaration of that name; see OperandLen for why it can't just be a normal function
        if (nameIdens.len == 1 && StrCmp(strFromTok(nameTok), StrFromCStr("len"))) {
            bool allowedLen = ctx->allowFallibleCall;
            ctx->allowFallibleCall = false;
            struct list lenArgs = buildArgs(ctx, firstPartOfType(callNode, SNTX_EXPR_ARGS));
            ctx->allowFallibleCall = allowedLen;
            if (lenArgs.len != 1) { ErrMsgSemantic(nameTok, WRONG_ARG_COUNT); return OperandIntLiteral(nameTok); }
            struct operand* lenArg = *(struct operand**)ListGetIdx(&lenArgs, 0);
            return OperandLen(lenArg, nameTok);
        }
        struct var* func = resolveCallTarget(ctx, nameNode);
        //only the one primary directly under a `try` is allowed to be a fallible call - see buildTryExpr
        bool allowed = ctx->allowFallibleCall;
        ctx->allowFallibleCall = false;
        struct list args = buildArgs(ctx, firstPartOfType(callNode, SNTX_EXPR_ARGS));
        if (!func) return OperandIntLiteral(nameTok);
        if (func->type.bType != BASETYPE_FUNC) { ErrMsgSemantic(nameTok, NOT_CALLABLE); return OperandIntLiteral(nameTok); }
        if (func->type.errors.len > 0 && !allowed) ErrMsgSemantic(nameTok, UNHANDLED_FALLIBLE_CALL);
        return OperandFuncCall(ctx->func, func, args, nameTok);
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

//"T[expr]" (expr not constant), no initializer - a dynamic array of expr zero-valued elements, arena-
//allocated (own by default, or the declared type's own "<name>" tag - see the report). sizeOp is the
//already-checked-integer size expression; t is the declared type (see resolveRuntimeSizedArrayDeclType).
struct operand* OperandSizedArrayAlloc(struct operand* sizeOp, struct type t, struct token tok) {
    struct operand* op = operandNew(tok, OPERATION_SIZED_ARRAY_ALLOC, t);
    ListAdd(&op->args, &sizeOp);
    return op;
}

struct statement buildVarDeclStmnt(struct checkCtx* ctx, struct syntax* s) {
    struct token nameTok = firstTokOfType(s, TOK_IDEN);
    bool mut = true; //local variables are mutable by default; "mut" is only meaningful on globals
    struct syntax* exprNode = firstPartOfType(s, SNTX_EXPR);
    struct syntax* typeExprNode = firstPartOfType(s, SNTX_TYPE_EXPR);
    //ctx->func is NULL for a global initializer, which has no parameter list to tag a "<name>" against
    struct list* scopeParams = ctx->func ? &ctx->func->type.vars : NULL;

    struct type declType;
    struct operand* rhs;
    if (!exprNode) {
        //no initializer - the grammar only ever allows this alongside an explicit type (":=" always
        //requires something to infer from - see parseVarDecl), and only two declared-type shapes actually
        //mean anything without one: a fixed-size array (zero-filled) or a "T[expr]" runtime-sized one
        //(arena-allocated and zero-filled) - see the report. Anything else has no way to know what value
        //to start with at all.
        struct syntax* actual = partSntx(typeExprNode, 0);
        struct syntax* runtimeSizeExprNode = detectRuntimeSizedArrayType(typeExprNode);
        if (runtimeSizeExprNode) {
            struct operand* sizeOp = buildExprFromSyntax(ctx, runtimeSizeExprNode);
            if (!OperandIsInt(sizeOp)) ErrMsgSemantic(sizeOp->tok, OPERATION_REQUIRES_INT);
            declType = resolveRuntimeSizedArrayDeclType(ctx->mod, actual, scopeParams);
            //a bare "T[expr]" (no "<>" at all) is still implicitly own-scoped - see the report - so "own"
            //has to actually exist here the same way it would for a real "own" expression
            if (!declType.scopeParam && !ctx->hasOwnScope) ErrMsgSemantic(nameTok, OWN_OUTSIDE_FUNC);
            rhs = OperandSizedArrayAlloc(sizeOp, declType, nameTok);
        } else {
            declType = resolveTypeExpr(ctx->mod, typeExprNode, scopeParams);
            if (declType.bType != BASETYPE_ARRAY || declType.arrMalloc) {
                ErrMsgSemantic(nameTok, VAR_DECL_MISSING_INITIALIZER);
                if (declType.bType != BASETYPE_ARRAY) declType = TypeVanilla(BASETYPE_INT32);
            }
            rhs = NULL; //zero-fill - see cgVarDecl; nothing to evaluate at all, not even a constant
        }
    } else {
        rhs = buildExprFromSyntax(ctx, exprNode);
        if (typeExprNode) {
            declType = resolveTypeExpr(ctx->mod, typeExprNode, scopeParams);
            //a fixed-size target already knows its own size from the literal's own value count - see the
            //report; restating it on both is redundant, not just harmless, so it's rejected outright
            //rather than silently accepted whenever the two sizes happen to agree
            if (declType.bType == BASETYPE_ARRAY && !declType.arrMalloc && rhs->isLiteral) {
                ErrMsgSemantic(rhs->tok, REDUNDANT_ARRAY_SIZE);
            }
            reportTypeFit(OperandFitsType(ctx->func, rhs, declType), rhs->tok);
        } else { // ":=" - type read straight off the (required-to-be-literal) initializer
            if (!rhs->isLiteral) ErrMsgSemantic(rhs->tok, TYPE_CANNOT_BE_INFERRED);
            declType = rhs->type;
        }
    }

    struct var* v = scopeDeclare(ctx->scope, strFromTok(nameTok), nameTok, declType, mut);
    //propagated one hop, so a later read of v (OperandReadVar) can still resolve a scope tag that's one of
    //rhs's own callee's scope params - see resolveEffectiveScopeVar. rhs is NULL for a zero-filled fixed
    //array (nothing to propagate - v->scopeBindings just stays at its zero-initialized default).
    if (rhs) v->scopeBindings = rhs->scopeBindings;
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
    else reportTypeFit(OperandFitsType(ctx->func, rhs, target->type), opTok);

    //a plain "x = y" (never a compound op - +=/etc. never apply to a scope-relevant struct/array type) re-
    //binds x's own tracked scope identity to whatever y's was, the same propagation buildVarDeclStmnt
    //already does at declaration time - closes the "stale binding after reassignment" half of the static
    //checker's reassignment-tracking gap (see the report): before this, a var's scopeBindings were only
    //ever set once, at its own declaration, so a later plain reassignment left it silently stale. Only a
    //bare local read as the assignment target has a var to re-bind at all - "x.field = y"/"x[i] = y" leave
    //x's own binding alone, same as before (this doesn't attempt to track *field-level* reassignment).
    if (!isCompound && target->opType == OPERATION_READ_VAR) {
        target->readVar->scopeBindings = value->scopeBindings;
    }

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

// ---- flow-sensitive scope-binding tracking across branches (if/match/for/do) - see the report on
// extending the static scope checker's reassignment-tracking past straight-line code. buildAssignStmnt
// above closes the straight-line half (a plain "x = y" re-binds x's own scopeBindings immediately); the
// helpers below close the branching half, which needs a real merge instead of just an in-place update,
// since two branches can each reassign the same var to something DIFFERENT - accepting whichever branch
// happened to be checked last (as a naive in-place update would) risks a false REJECTION of sound code
// (a var correctly bound in the branch that actually runs, but compared against a check that only ever
// sees the OTHER branch's leftover state) - the same class of mistake the varIsOwnParam identity-duality
// bug earlier this session already proved is worse than an imprecise, honest "unknown".

//one var's own scopeBindings, captured at a point in time - a shallow copy (the var's own scopeBindings
//list is only ever reassigned wholesale, never mutated in place, so aliasing its backing array here is
//safe - see buildVarDeclStmnt/buildAssignStmnt, the only two places a var's own field is ever written).
struct scopeVarSnapshot {
    struct var* v;
    struct list bindings;
};

//captures every var currently reachable from sc's own scope chain (not just its own directly-owned
//locals - every enclosing scope too, up to the function's own parameters), so a branching construct can
//restore to this exact starting point before checking each alternative, and compare their outcomes
//afterward.
struct list snapshotScopeBindings(struct scope* sc) {
    struct list result = ListInit(sizeof(struct scopeVarSnapshot));
    for (; sc; sc = sc->parent) {
        for (int i = 0; i < sc->localPtrs.len; i++) {
            struct var* v = *(struct var**)ListGetIdx(&sc->localPtrs, i);
            struct scopeVarSnapshot snap = (struct scopeVarSnapshot){0};
            snap.v = v;
            snap.bindings = v->scopeBindings;
            ListAdd(&result, &snap);
        }
    }
    return result;
}

//writes every var captured by snap back to its own recorded scopeBindings - used both to reset to a
//common baseline before checking the next alternative branch, and to commit a final merged result once
//every branch has been checked.
void applyScopeBindingsSnapshot(struct list* snap) {
    for (int i = 0; i < snap->len; i++) {
        struct scopeVarSnapshot* s = ListGetIdx(snap, i);
        s->v->scopeBindings = s->bindings;
    }
}

//true if two scopeBindings lists carry the same set of (typeParam, boundTo) pairs, order-independent, both
//sides canonicalized (see canonicalVar) since either list may hold a type-level original or a function/
//constructor body's own scope-chain copy of one, depending on which pass produced it.
bool scopeBindingsEqual(struct list a, struct list b) {
    if (a.len != b.len) return false;
    for (int i = 0; i < a.len; i++) {
        struct scopeBinding* ba = ListGetIdx(&a, i);
        bool found = false;
        for (int j = 0; j < b.len; j++) {
            struct scopeBinding* bb = ListGetIdx(&b, j);
            if (canonicalVar(ba->typeParam) == canonicalVar(bb->typeParam)
                    && canonicalVar(ba->boundTo) == canonicalVar(bb->boundTo)) {
                found = true;
                break;
            }
        }
        if (!found) return false;
    }
    return true;
}

//folds next's own outcome into acc (both snapshots of the same var set, taken from the same starting
//baseline): a var whose recorded bindings agree between the two is left alone in acc; a var that disagrees
//has every key either side ever tracked for it marked SCOPE_AMBIGUOUS - deliberately NOT reset to plain
//empty/never-tracked, which would silently fall back to the pre-existing "foreign, unverifiable, allow"
//default and undo the whole point of tracking this at all (see SCOPE_AMBIGUOUS's own comment). Call once
//per branch beyond the first to fold an arbitrary number of alternatives (if/else, or match's N cases plus
//an implicit/explicit "nothing matched" possibility) into one final, honestly-merged result. Monotonic by
//construction: once a key is marked ambiguous, every later fold that touches it rebuilds from acc's own
//(already-ambiguous) entry first, so it can never be "un-marked" by a later branch that happens to agree
//with some earlier, already-superseded value.
void foldScopeBindingsBranch(struct list* acc, struct list* next) {
    for (int i = 0; i < acc->len; i++) {
        struct scopeVarSnapshot* a = ListGetIdx(acc, i);
        struct scopeVarSnapshot* n = NULL;
        for (int j = 0; j < next->len; j++) {
            struct scopeVarSnapshot* cand = ListGetIdx(next, j);
            if (cand->v == a->v) { n = cand; break; }
        }
        if (n && scopeBindingsEqual(a->bindings, n->bindings)) continue;

        struct list ambiguous = ListInit(sizeof(struct scopeBinding));
        for (int j = 0; j < a->bindings.len; j++) {
            struct scopeBinding* e = ListGetIdx(&a->bindings, j);
            struct scopeBinding amb = (struct scopeBinding){0};
            amb.typeParam = e->typeParam;
            amb.boundTo = SCOPE_AMBIGUOUS;
            ListAdd(&ambiguous, &amb);
        }
        if (n) {
            for (int j = 0; j < n->bindings.len; j++) {
                struct scopeBinding* e = ListGetIdx(&n->bindings, j);
                bool already = false;
                for (int k = 0; k < ambiguous.len; k++) {
                    struct scopeBinding* have = ListGetIdx(&ambiguous, k);
                    if (canonicalVar(have->typeParam) == canonicalVar(e->typeParam)) { already = true; break; }
                }
                if (already) continue;
                struct scopeBinding amb = (struct scopeBinding){0};
                amb.typeParam = e->typeParam;
                amb.boundTo = SCOPE_AMBIGUOUS;
                ListAdd(&ambiguous, &amb);
            }
        }
        a->bindings = ambiguous;
    }
}

struct statement buildIfStmnt(struct checkCtx* ctx, struct syntax* s) {
    struct operand* cond = buildExprFromSyntax(ctx, firstPartOfType(s, SNTX_EXPR));
    if (!OperandIsBool(cond)) ErrMsgSemantic(cond->tok, OPERATION_REQUIRES_BOOL);

    struct list blocks = allPartsOfType(s, SNTX_BLOCK);
    struct syntax* thenBlockNode = *(struct syntax**)ListGetIdx(&blocks, 0);

    struct statement stmt = (struct statement){0};
    stmt.sType = STATEMENT_IF;
    stmt.op = cond;

    //see the flow-sensitive scope-binding tracking block above: baseline is the starting point both
    //branches are checked against (restored before the second, so it doesn't see the first's leftover
    //mutations), and the two outcomes are folded into one honest result once both are known.
    struct list baseline = snapshotScopeBindings(ctx->scope);
    stmt.block = buildBlock(ctx, thenBlockNode);
    struct list afterThen = snapshotScopeBindings(ctx->scope);
    applyScopeBindingsSnapshot(&baseline);

    struct syntax* elseIfNode = firstPartOfType(s, SNTX_STMNT_IF);
    struct list afterElse;
    if (blocks.len == 2) {
        struct syntax* elseBlockNode = *(struct syntax**)ListGetIdx(&blocks, 1);
        stmt.elseStmnt = MallocOrCrash(sizeof(struct statement));
        *stmt.elseStmnt = (struct statement){0};
        stmt.elseStmnt->sType = STATEMENT_IF; //bare-block wrapper, condition unused
        stmt.elseStmnt->block = buildBlock(ctx, elseBlockNode);
        stmt.elseIsBlock = true;
        afterElse = snapshotScopeBindings(ctx->scope);
    } else if (elseIfNode) {
        stmt.elseStmnt = MallocOrCrash(sizeof(struct statement));
        //recurses through this same snapshot/merge logic for its own nested branches first, so by the
        //time this returns, the vars already reflect that whole "else if..." chain's own merged outcome -
        //composes correctly through an arbitrary chain with no extra plumbing needed here.
        *stmt.elseStmnt = buildIfStmnt(ctx, elseIfNode);
        afterElse = snapshotScopeBindings(ctx->scope);
    } else {
        afterElse = baseline; //no else at all - the implicit "nothing happened" path
    }

    foldScopeBindingsBranch(&afterThen, &afterElse);
    applyScopeBindingsSnapshot(&afterThen);
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
        reportTypeFit(OperandFitsType(ctx->func, initVal, declType), initVal->tok);
    } else { // ":=" - type read straight off the (required-to-be-literal) initializer
        if (!initVal->isLiteral) ErrMsgSemantic(initVal->tok, TYPE_CANNOT_BE_INFERRED);
        declType = initVal->type;
    }
    struct var* loopVar = scopeDeclare(innerCtx.scope, strFromTok(nameTok), nameTok, declType, mut);
    loopVar->scopeBindings = initVal->scopeBindings; //see buildVarDeclStmnt's identical propagation

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
    //a var reassigned inside a loop body can, in general, end up different across different iterations -
    //this checker only ever walks the body once (no fixpoint iteration), so rather than trust whatever
    //that single walk happened to leave behind, ANY reassignment observed during it kills that var's own
    //tracked binding outright (reusing foldScopeBindingsBranch against its own unchanged starting point -
    //see the flow-sensitive scope-binding tracking block above). Safe and conservative, never unsound.
    struct list baseline = snapshotScopeBindings(innerCtx.scope);
    stmt.block = buildBlock(&innerCtx, firstPartOfType(s, SNTX_BLOCK));
    struct list after = snapshotScopeBindings(innerCtx.scope);
    foldScopeBindingsBranch(&baseline, &after);
    applyScopeBindingsSnapshot(&baseline);
    return stmt;
}

struct statement buildDoStmnt(struct checkCtx* ctx, struct syntax* s) {
    struct statement stmt = (struct statement){0};
    stmt.sType = STATEMENT_DO;
    //same "any reassignment kills it" treatment as buildForStmnt above, same reasoning.
    struct list baseline = snapshotScopeBindings(ctx->scope);
    stmt.block = buildBlock(ctx, firstPartOfType(s, SNTX_BLOCK));
    struct list after = snapshotScopeBindings(ctx->scope);
    foldScopeBindingsBranch(&baseline, &after);
    applyScopeBindingsSnapshot(&baseline);
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

    //N-way version of the same fold buildIfStmnt does for two branches - see the flow-sensitive scope-
    //binding tracking block above. baseline is the reset point before each case; merged accumulates the
    //running fold (an independent snapshot, not aliased to baseline - folding into it must never disturb
    //the reset point the next case is about to be checked against).
    struct list baseline = snapshotScopeBindings(ctx->scope);
    struct list merged = snapshotScopeBindings(ctx->scope);

    stmt.matchCases = ListInit(sizeof(struct statement));
    struct list cases = allPartsOfType(s, SNTX_STMNT_CASE);
    for (int i = 0; i < cases.len; i++) {
        struct syntax* c = *(struct syntax**)ListGetIdx(&cases, i);
        struct statement caseStmt = buildCaseStmnt(ctx, c, matched->type);
        ListAdd(&stmt.matchCases, &caseStmt);
        struct list afterCase = snapshotScopeBindings(ctx->scope);
        foldScopeBindingsBranch(&merged, &afterCase);
        applyScopeBindingsSnapshot(&baseline);
    }

    struct syntax* nomatchNode = firstPartOfType(s, SNTX_STMNT_NOMATCH);
    if (nomatchNode) {
        stmt.hasNomatch = true;
        stmt.nomatchBlock = buildBlock(ctx, firstPartOfType(nomatchNode, SNTX_BLOCK));
        struct list afterNomatch = snapshotScopeBindings(ctx->scope);
        foldScopeBindingsBranch(&merged, &afterNomatch);
        applyScopeBindingsSnapshot(&baseline);
    }
    //this checker doesn't attempt exhaustiveness analysis, so "no case matched" is always folded in as a
    //live possibility (via merged's own initial "unchanged" value) even when nomatch is absent and the
    //match happens to be exhaustive in practice - conservative, never unsound, matching the same "no else"
    //treatment buildIfStmnt gives a bare "if" with nothing to run.
    applyScopeBindingsSnapshot(&merged);
    return stmt;
}

struct statement buildRetStmnt(struct checkCtx* ctx, struct syntax* s) {
    struct syntax* exprNode = firstPartOfType(s, SNTX_EXPR);
    struct operand* val = exprNode ? buildExprFromSyntax(ctx, exprNode) : NULL;
    struct token tok = firstTokOfType(s, TOK_RET);

    if (val && ctx->func && !ctx->func->type.hasRetType) ErrMsgSemantic(tok, RETURN_VALUE_IN_VOID_FUNC);
    else if (!val && ctx->func && ctx->func->type.hasRetType) ErrMsgSemantic(tok, RETURN_MISSING_VALUE);
    else if (val && ctx->func && ctx->func->type.hasRetType) {
        enum typeFit fit = OperandFitsType(ctx->func, val, *ctx->func->type.retType);
        if (fit == TYPE_FIT_SCOPE_MISMATCH) ErrMsgSemantic(val->tok, SCOPE_MAY_NOT_OUTLIVE_TARGET);
        else if (fit == TYPE_FIT_ARRAY_SIZE_MISMATCH) ErrMsgSemantic(val->tok, WRONG_ARG_COUNT);
        else if (fit == TYPE_FIT_MISMATCH) ErrMsgSemantic(val->tok, RETURN_TYPE_MISMATCH);
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

//"assert EXPR" - a statement, not a function call (see the report); reuses the exact same condition-check
//every if/do-while condition already goes through
struct statement buildAssertStmnt(struct checkCtx* ctx, struct syntax* s) {
    struct operand* cond = buildExprFromSyntax(ctx, firstPartOfType(s, SNTX_EXPR));
    if (!OperandIsBool(cond)) ErrMsgSemantic(cond->tok, OPERATION_REQUIRES_BOOL);
    struct statement stmt = (struct statement){0};
    stmt.sType = STATEMENT_ASSERT;
    stmt.op = cond;
    return stmt;
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
        case SNTX_STMNT_ASSERT: return buildAssertStmnt(ctx, actual);
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
            struct syntax* exprNode = firstPartOfType(actual, SNTX_EXPR);
            if (!exprNode) {
                //no initializer - only ever valid for a fixed-size ("T[N]") array global, left at the
                //zero-initialized default emitGlobalDecls already gives every global (real BSS behavior -
                //nothing further to do here). A dynamic array (bare "T[]", or the "T[expr]" runtime-sized
                //form - both arrMalloc) has no "own"/enclosing scope to arena-allocate into at global-init
                //time (same restriction "own" itself has outside a function), so it's rejected here rather
                //than silently left as a null/empty slice, which would be a different, surprising meaning.
                if (v->type.bType != BASETYPE_ARRAY || v->type.arrMalloc) {
                    ErrMsgSemantic(nameTok, VAR_DECL_MISSING_INITIALIZER);
                }
                continue;
            }
            struct operand* rhs = buildExprFromSyntax(&ctx, exprNode);
            if (firstPartOfType(actual, SNTX_TYPE_EXPR)) {
                if (v->type.bType == BASETYPE_ARRAY && !v->type.arrMalloc && rhs->isLiteral) {
                    ErrMsgSemantic(rhs->tok, REDUNDANT_ARRAY_SIZE);
                }
                reportTypeFit(OperandFitsType(ctx.func, rhs, v->type), rhs->tok);
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
                local->origin = param; //canonicalVar traces this copy back to the type-level original
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
                        reportTypeFit(OperandFitsType(cctx.func, fieldOp, field->type), fieldOp->tok);
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
                //persisted once, at this field's own declaration, so any later caller's "instance.field"
                //access (OperandMember) can compose through it - see the "field of a field" entry in the
                //report. Empty (the common case) whenever fieldOp itself carries no map - an ordinary
                //field whose own type isn't constructor-bearing, or one with no scope-typed ctor params.
                field->scopeBindings = fieldOp->scopeBindings;
                ListAdd(&fieldArgs, &fieldOp);
            }
            struct operand* built = OperandStructLiteral(cctx.func, *t, fieldArgs, t->tok);
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
                selfLocal->origin = selfParam; //canonicalVar traces this copy back to the type-level original
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
            local->origin = param; //canonicalVar traces this copy back to the type-level original
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
