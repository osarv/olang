// layoutdump [-t] [-D NAME=VALUE]... FILE - the C compiler's types and their layouts, the oracle the self-hosted
// compiler's type table is compared with (compiler/DESIGN.md section 4, compiler/tools/layoutdiff.sh). The program
// rooted at FILE is analyzed as "olang compile" analyzes it, as modgraph does, and every type it holds that has a layout is
// written once, sorted, one line each:
//
//     TYPE <tab> SIZE ALIGN <tab> LLVM <tab> BODY <tab> PARTS
//
// TYPE is the type in the canonical text both compilers write (compiler/types.olang, Canon): a primitive by its name;
// a declared type as "IDENTITY:Name", an instance's arguments after it ("std/prelude/list:List<I64>"); "Array<T>" and
// "Array<T, N>"; a reference as the type, "&" after it and its permission before ("mut T&", "own mut T&"); a function
// type as "fn(P, Q) R ? E + F" ("?" alone for the default error, a result that is a function type in parentheses);
// several results as "(A, B)"; an anonymous enum as "enum{A(T) B}" and an anonymous struct (an enum case's payload) as
// "struct(A, B)". LLVM is the value's LLVM type, a declared struct written "%" and its TYPE in quotes; BODY a declared
// struct's aggregate ("{ i32, ptr }"), "-" otherwise; PARTS a struct's or a tuple's field offsets ("fields 0,8"), an
// enum's payload offsets case by case ("cases ;0,8;"), or for a function type the LLVM type its function returns and
// how each parameter is passed - "v" a value, "m" through memory, "s" split into code and environment ("ret { i32,
// i64 } pass vm") - and "-" otherwise.
//
// What is collected: every type of every declaration (types, fields, payloads, signatures, globals), every generic
// instance, constructor and destructor, and every type a checked body's statements and operands carry - anything
// holding a type variable, a constant still to be computed or a stand-in for an error has no layout and is left out.
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <pthread.h>
#include "../syntax.h"
#include "../semantic.h"
#include "../errmsg.h"

//codegen.c's spellers: the LLVM type of a value, a struct's aggregate name, and a function's return type
void llvmType(struct type t, char* buf, size_t n);
void structAggSpelling(struct type t, char* buf, size_t n);
void llvmFuncRetType(struct type funcType, char* buf, size_t n);
bool typeIsByRef(struct type t);
long long ChoicePayloadSize(struct type t);
bool ChoiceHasPayload(struct type t);

// ---- growable text ----

struct buf { char* p; size_t len, cap; };

static void add(struct buf* b, const char* s, size_t n) {
    if (b->len + n + 1 > b->cap) {
        b->cap = (b->len + n + 1) * 2 + 64;
        b->p = realloc(b->p, b->cap);
    }
    memcpy(b->p + b->len, s, n);
    b->len += n;
    b->p[b->len] = '\0';
}
static void adds(struct buf* b, const char* s) { add(b, s, strlen(s)); }
static void addstr(struct buf* b, struct str s) { add(b, s.ptr, (size_t)s.len); }
static char* take(struct buf* b) {
    if (!b->p) adds(b, "");
    return b->p;
}

// ---- the canonical text ----

static bool open; //the type being spelled has no layout: a variable, a pattern, a stand-in

static void canon(struct buf* b, struct type t);

static bool namedDecl(struct type t) { return t.owner && t.name.len > 0 && t.bType != BASETYPE_TYPEVAR; }

static void errorText(struct buf* b, struct type* e) {
    if (e == SemanticGenericErrorType() || !e->owner || !e->name.len) {
        adds(b, "default");
        return;
    }
    addstr(b, e->owner->identity);
    adds(b, ":");
    addstr(b, e->name);
}

static void canonInner(struct buf* b, struct type t) {
    if (t.unknown) { open = true; return; }
    switch (t.bType) {
        case BASETYPE_TYPEVAR: case BASETYPE_CONST: case BASETYPE_NULL: case BASETYPE_VOID: case BASETYPE_SCOPE:
        case BASETYPE_INTERFACE:
            open = true;
            return;
        default: break;
    }
    if (namedDecl(t)) {
        if (t.genericOrigin) {
            struct type* g = t.genericOrigin;
            if (!g->owner) { open = true; return; }
            addstr(b, g->owner->identity);
            adds(b, ":");
            addstr(b, g->name);
            adds(b, "<");
            for (int i = 0; i < t.typeArgs.len; i++) {
                struct type* a = ListGetIdx(&t.typeArgs, i);
                if (i) adds(b, ", ");
                if (a->bType == BASETYPE_CONST) {
                    if (!a->constKnown) { open = true; return; }
                    char v[32];
                    if (a->constOf && a->constOf->bType == BASETYPE_BOOL) snprintf(v, sizeof(v), "%s", a->constVal ? "true" : "false");
                    else if (a->constOf && TypeIsUnsigned(*a->constOf)) snprintf(v, sizeof(v), "%llu", (unsigned long long)a->constVal);
                    else snprintf(v, sizeof(v), "%lld", a->constVal);
                    adds(b, v);
                } else {
                    canon(b, *a);
                }
            }
            adds(b, ">");
            return;
        }
        if (t.typeParams.len && t.bType == BASETYPE_STRUCT) { open = true; return; } //a generic's own body
        addstr(b, t.owner->identity);
        adds(b, ":");
        addstr(b, t.name);
        return;
    }
    if (PrimInfo(t.bType)) { adds(b, PrimInfo(t.bType)->name); return; }
    switch (t.bType) {
        case BASETYPE_BOOL: adds(b, "Bool"); return;
        case BASETYPE_ARRAY: {
            if (t.arrLenArg || !t.arrElem) { open = true; return; }
            adds(b, "Array<");
            canon(b, *t.arrElem);
            if (!t.arrMalloc) {
                char n[40];
                snprintf(n, sizeof(n), ", %lld", t.arrLen ? t.arrLen->intLiteralVal : 0);
                adds(b, n);
            }
            adds(b, ">");
            return;
        }
        case BASETYPE_FUNC: {
            adds(b, "fn(");
            for (int i = 0; i < t.vars.len; i++) {
                if (i) adds(b, ", ");
                canon(b, ((struct var*)ListGetIdx(&t.vars, i))->type);
            }
            adds(b, ")");
            if (t.hasRetType && t.retType) {
                //a result that is itself a function type is parenthesized, so its own errors stay apart from these
                bool fnResult = t.retType->bType == BASETYPE_FUNC;
                adds(b, fnResult ? " (" : " ");
                canon(b, *t.retType);
                if (fnResult) adds(b, ")");
            }
            if (t.errors.len) {
                adds(b, " ?");
                bool onlyDefault = t.errors.len == 1 && *(struct type**)ListGetIdx(&t.errors, 0) == SemanticGenericErrorType();
                for (int i = 0; !onlyDefault && i < t.errors.len; i++) {
                    adds(b, i ? " + " : " ");
                    errorText(b, *(struct type**)ListGetIdx(&t.errors, i));
                }
            }
            return;
        }
        case BASETYPE_STRUCT: {
            adds(b, t.isTuple ? "(" : "struct(");
            for (int i = 0; i < t.vars.len; i++) {
                if (i) adds(b, ", ");
                canon(b, ((struct var*)ListGetIdx(&t.vars, i))->type);
            }
            adds(b, ")");
            return;
        }
        case BASETYPE_CHOICE: {
            adds(b, "enum{");
            for (int i = 0; i < t.vars.len; i++) {
                struct var* c = ListGetIdx(&t.vars, i);
                if (i) adds(b, " ");
                addstr(b, c->name);
                if (c->type.vars.len) {
                    adds(b, "(");
                    for (int k = 0; k < c->type.vars.len; k++) {
                        if (k) adds(b, ", ");
                        canon(b, ((struct var*)ListGetIdx(&c->type.vars, k))->type);
                    }
                    adds(b, ")");
                }
            }
            adds(b, "}");
            return;
        }
        case BASETYPE_ERROR: errorText(b, &t); return;
        default: open = true; return;
    }
}

static void canon(struct buf* b, struct type t) {
    bool ref = t.structMAlloc && t.bType != BASETYPE_FUNC;
    if (ref && t.refOwn) adds(b, "own ");
    if (ref && t.refMut) adds(b, "mut ");
    canonInner(b, t);
    if (ref) adds(b, "&");
}

// ---- the set of types ----

struct entry { char* key; struct type t; };
static struct entry* entries;
static int nEntries, capEntries;
//an open-addressed index over the keys
static int* slots;
static int nSlots;

static unsigned long long hashStr(const char* s) {
    unsigned long long h = 1469598103934665603ULL;
    for (; *s; s++) h = (h ^ (unsigned char)*s) * 1099511628211ULL;
    return h;
}

static void rehash(void) {
    int n = nSlots ? nSlots * 2 : 1024;
    int* s = malloc(sizeof(int) * (size_t)n);
    for (int i = 0; i < n; i++) s[i] = -1;
    for (int e = 0; e < nEntries; e++) {
        unsigned long long h = hashStr(entries[e].key) & (unsigned long long)(n - 1);
        while (s[h] >= 0) h = (h + 1) & (unsigned long long)(n - 1);
        s[h] = e;
    }
    free(slots);
    slots = s;
    nSlots = n;
}

//whether key is new; added if so
static bool insert(char* key, struct type t) {
    if ((nEntries + 1) * 2 > nSlots) rehash();
    unsigned long long h = hashStr(key) & (unsigned long long)(nSlots - 1);
    while (slots[h] >= 0) {
        if (!strcmp(entries[slots[h]].key, key)) return false;
        h = (h + 1) & (unsigned long long)(nSlots - 1);
    }
    if (nEntries == capEntries) {
        capEntries = capEntries ? capEntries * 2 : 1024;
        entries = realloc(entries, sizeof(struct entry) * (size_t)capEntries);
    }
    entries[nEntries].key = key;
    entries[nEntries].t = t;
    slots[h] = nEntries++;
    return true;
}

static void collect(struct type t);

static void collectChildren(struct type t) {
    switch (t.bType) {
        case BASETYPE_ARRAY: if (t.arrElem) collect(*t.arrElem); break;
        case BASETYPE_STRUCT:
            for (int i = 0; i < t.vars.len; i++) collect(((struct var*)ListGetIdx(&t.vars, i))->type);
            break;
        case BASETYPE_CHOICE:
            for (int i = 0; i < t.vars.len; i++) {
                struct type p = ((struct var*)ListGetIdx(&t.vars, i))->type;
                for (int k = 0; k < p.vars.len; k++) collect(((struct var*)ListGetIdx(&p.vars, k))->type);
            }
            break;
        case BASETYPE_FUNC:
            for (int i = 0; i < t.vars.len; i++) collect(((struct var*)ListGetIdx(&t.vars, i))->type);
            if (t.hasRetType && t.retType) collect(*t.retType);
            break;
        default: break;
    }
}

static void collect(struct type t) {
    struct buf b = {0};
    open = false;
    canon(&b, t);
    if (open) { free(b.p); return; }
    if (!insert(take(&b), t)) return;
    collectChildren(t);
    //a reference's referent is a type of its own; so is a struct held by value inside a reference type
    if (t.structMAlloc && t.bType != BASETYPE_FUNC) {
        struct type v = t;
        v.structMAlloc = false;
        v.refMut = false;
        v.refOwn = false;
        collect(v);
    }
}

// ---- walking the checked program ----

//operands and statements are shared here and there, so each is walked once
static void** seen;
static int nSeen, seenSlots;

static bool firstVisit(void* p) {
    if ((nSeen + 1) * 2 > seenSlots) {
        int n = seenSlots ? seenSlots * 2 : 4096;
        void** s = calloc((size_t)n, sizeof(void*));
        for (int i = 0; i < seenSlots; i++) {
            if (!seen[i]) continue;
            unsigned long long h = ((unsigned long long)(size_t)seen[i] >> 3) & (unsigned long long)(n - 1);
            while (s[h]) h = (h + 1) & (unsigned long long)(n - 1);
            s[h] = seen[i];
        }
        free(seen);
        seen = s;
        seenSlots = n;
    }
    unsigned long long h = ((unsigned long long)(size_t)p >> 3) & (unsigned long long)(seenSlots - 1);
    while (seen[h]) {
        if (seen[h] == p) return false;
        h = (h + 1) & (unsigned long long)(seenSlots - 1);
    }
    seen[h] = p;
    nSeen++;
    return true;
}

static void walkBlock(struct list* l);
static void walkStmt(struct statement* s);

static void walkClauses(struct list* l) {
    for (int i = 0; i < l->len; i++) walkBlock(&((struct catchClause*)ListGetIdx(l, i))->block);
}

static void walkOp(struct operand* op) {
    if (!op || !firstVisit(op)) return;
    collect(op->type);
    for (int i = 0; i < op->args.len; i++) walkOp(*(struct operand**)ListGetIdx(&op->args, i));
    walkBlock(&op->comprBody);
    walkClauses(&op->catchClauses);
    walkOp(op->callee);
}

static void walkBlock(struct list* l) {
    for (int i = 0; i < l->len; i++) walkStmt(ListGetIdx(l, i));
}

static void walkStmt(struct statement* s) {
    if (!s || !firstVisit(s)) return;
    if (s->sType == STATEMENT_VAR_DECL || s->sType == STATEMENT_FOR) collect(s->var.type);
    walkOp(s->target);
    walkOp(s->op);
    walkOp(s->fillValue);
    walkOp(s->forInit);
    walkStmt(s->forPost);
    walkBlock(&s->block);
    walkStmt(s->elseStmnt);
    walkBlock(&s->matchCases);
    walkBlock(&s->matchHold);
    walkBlock(&s->nomatchBlock);
    walkOp(s->nomatchValue);
    walkClauses(&s->catchClauses);
    for (int i = 0; i < s->caseBindings.len; i++) collect((*(struct var**)ListGetIdx(&s->caseBindings, i))->type);
    for (int i = 0; i < s->caseAlts.len; i++) walkOp(((struct caseAlt*)ListGetIdx(&s->caseAlts, i))->test);
    for (int i = 0; i < s->spawnTargets.len; i++) walkOp(*(struct operand**)ListGetIdx(&s->spawnTargets, i));
}

static void walkVar(struct var* v) {
    if (!v || !firstVisit(v)) return;
    if (v->type.bType == BASETYPE_FUNC && v->type.typeParams.len) return; //a generic: only its instances are laid out
    collect(v->type);
    walkBlock(&v->codeBlock);
    walkOp(v->initExpr);
}

static void walkType(struct type* t) {
    if (t->bType == BASETYPE_STRUCT && t->typeParams.len) return;
    if (t->bType == BASETYPE_INTERFACE) return;
    collect(*t);
    if (t->ctorFunc) walkVar(t->ctorFunc);
    if (t->destructFunc) walkVar(t->destructFunc);
}

// ---- writing a line ----

//the named structs' aggregate names, each with its canonical text
struct alias { char* llvm; char* canon; };
static struct alias* aliases;
static int nAliases;

//an LLVM spelling with every declared struct's name replaced by its canonical text: "%std_x.A" is "%\"std/x:A\""
static char* normalized(const char* s) {
    struct buf b = {0};
    for (size_t i = 0; s[i];) {
        if (s[i] != '%') { add(&b, s + i, 1); i++; continue; }
        size_t j = i + 1;
        while (s[j] && s[j] != ' ' && s[j] != ',' && s[j] != '}' && s[j] != ']') j++;
        bool found = false;
        for (int k = 0; k < nAliases; k++) {
            if (strlen(aliases[k].llvm) == j - i && !strncmp(aliases[k].llvm, s + i, j - i)) {
                adds(&b, "%\"");
                adds(&b, aliases[k].canon);
                adds(&b, "\"");
                found = true;
                break;
            }
        }
        if (!found) add(&b, s + i, j - i);
        i = j;
    }
    return take(&b);
}

static int cmpEntry(const void* a, const void* b) {
    return strcmp(((const struct entry*)a)->key, ((const struct entry*)b)->key);
}

//a field list's offsets, laid out in order as LLVM lays out a struct that is not packed
static void offsets(struct buf* b, struct list* vars) {
    long long off = 0;
    for (int i = 0; i < vars->len; i++) {
        struct type ft = ((struct var*)ListGetIdx(vars, i))->type;
        long long a = TypeGetAlign(ft);
        off = (off + a - 1) / a * a;
        char n[32];
        snprintf(n, sizeof(n), "%s%lld", i ? "," : "", off);
        adds(b, n);
        off += TypeGetSize(ft);
    }
}

static void writeEntry(struct entry* e) {
    struct type t = e->t;
    char spell[8192];
    llvmType(t, spell, sizeof(spell));
    printf("%s\t%lld %lld\t%s\t", e->key, TypeGetSize(t), TypeGetAlign(t), normalized(spell));
    if (t.bType == BASETYPE_STRUCT && !t.structMAlloc && namedDecl(t)) {
        struct buf body = {0};
        adds(&body, "{ ");
        for (int j = 0; j < t.vars.len; j++) {
            char f[8192];
            llvmType(((struct var*)ListGetIdx(&t.vars, j))->type, f, sizeof(f));
            if (j) adds(&body, ", ");
            adds(&body, f);
        }
        adds(&body, t.vars.len ? " }" : "}");
        printf("%s\t", normalized(take(&body)));
    } else {
        printf("-\t");
    }
    struct buf parts = {0};
    if (t.bType == BASETYPE_STRUCT && !t.structMAlloc) {
        adds(&parts, "fields ");
        offsets(&parts, &t.vars);
    } else if (t.bType == BASETYPE_CHOICE && !t.structMAlloc && ChoiceHasPayload(t)) {
        adds(&parts, "cases ");
        for (int i = 0; i < t.vars.len; i++) {
            if (i) adds(&parts, ";");
            offsets(&parts, &((struct var*)ListGetIdx(&t.vars, i))->type.vars);
        }
    } else if (t.bType == BASETYPE_FUNC) {
        char r[8192];
        llvmFuncRetType(t, r, sizeof(r));
        adds(&parts, "ret ");
        adds(&parts, normalized(r));
        adds(&parts, " pass ");
        for (int i = 0; i < t.vars.len; i++) {
            struct type pt = ((struct var*)ListGetIdx(&t.vars, i))->type;
            bool mem = typeIsByRef(pt) && TypeGetSize(pt) > 128;
            adds(&parts, mem ? "m" : pt.bType == BASETYPE_FUNC ? "s" : "v");
        }
    } else {
        adds(&parts, "-");
    }
    printf("%s\n", take(&parts));
}

// ---- the program ----

static void define(char* name, char* value) {
    if (SyntaxDefineBuildConst(name, value, false)) {
        fprintf(stderr, "layoutdump: bad -D %s=%s\n", name, value);
        exit(2);
    }
}

struct job { int argc; char** argv; int status; };

static void* run(void* p) {
    struct job* j = p;
    bool test = false;
    char* file = NULL;
    for (int i = 1; i < j->argc; i++) {
        char* a = j->argv[i];
        if (!strcmp(a, "-t")) { test = true; continue; }
        if (!strcmp(a, "-D") && i + 1 < j->argc) {
            char* d = j->argv[++i];
            char* eq = strchr(d, '=');
            if (!eq) { fprintf(stderr, "layoutdump: -D %s has no '='\n", d); exit(2); }
            *eq = 0;
            define(d, eq + 1);
            continue;
        }
        file = a;
    }
    if (!file) { fprintf(stderr, "usage: layoutdump [-t] [-D NAME=VALUE]... FILE\n"); exit(2); }
    if (SyntaxDefineBuildConst("TargetOs", "\"linux\"", true) || SyntaxDefineBuildConst("TargetArch", "\"x86_64\"", true)
        || SyntaxDefineBuildConst("TargetCpu", "\"x86-64\"", true) || SyntaxDefineBuildConst("TargetVectorBits", "128", true)
        || SyntaxDefineBuildConst("TargetHasFma", "false", true) || SyntaxDefineBuildConst("DebugBuild", "false", true)
        || SyntaxDefineBuildConst("RaceBuild", "false", true)
        || SyntaxDefineBuildConst("TestBuild", test ? "true" : "false", true)) {
        fprintf(stderr, "layoutdump: a built-in constant was given with -D\n");
        exit(2);
    }
    SemanticAnalyzeFile(file, false);
    if (ErrMsgGetNErrors() > 0) { fprintf(stderr, "layoutdump: %s has errors\n", file); j->status = 1; return NULL; }
    struct list* all = SemanticAllModules();
    for (int i = 0; i < all->len; i++) {
        struct semaModule* m = *(struct semaModule**)ListGetIdx(all, i);
        for (int k = 0; k < m->types.len; k++) walkType(ListGetIdx(&m->types, k));
        for (int k = 0; k < m->vars.len; k++) walkVar(ListGetIdx(&m->vars, k));
        for (int k = 0; k < m->tests.len; k++) walkBlock(&((struct semaTest*)ListGetIdx(&m->tests, k))->codeBlock);
    }
    struct list* tis = SemanticAllTypeInstantiations();
    for (int i = 0; i < tis->len; i++) walkType(*(struct type**)ListGetIdx(tis, i));
    struct list* fis = SemanticAllInstantiations();
    for (int i = 0; i < fis->len; i++) walkVar(((struct instantiation*)ListGetIdx(fis, i))->specialized);
    struct list* twins = SemanticAllCtorTwins();
    for (int i = 0; i < twins->len; i++) walkType(*(struct type**)ListGetIdx(twins, i));
    struct list* lambdas = SemanticAllLambdas();
    for (int i = 0; i < lambdas->len; i++) walkVar(*(struct var**)ListGetIdx(lambdas, i));
    //every declared struct's aggregate name, for the spellings
    aliases = malloc(sizeof(struct alias) * (size_t)(nEntries + 1));
    for (int i = 0; i < nEntries; i++) {
        struct type t = entries[i].t;
        if (t.bType != BASETYPE_STRUCT || t.structMAlloc || !namedDecl(t)) continue;
        char name[8192];
        structAggSpelling(t, name, sizeof(name));
        aliases[nAliases].llvm = strdup(name);
        aliases[nAliases].canon = entries[i].key;
        nAliases++;
    }
    qsort(entries, (size_t)nEntries, sizeof(struct entry), cmpEntry);
    for (int i = 0; i < nEntries; i++) writeEntry(&entries[i]);
    j->status = 0;
    return NULL;
}

int main(int argc, char** argv) {
    struct job j = { argc, argv, 1 };
    pthread_attr_t attr;
    pthread_t t;
    pthread_attr_init(&attr);
    pthread_attr_setstacksize(&attr, (size_t)1 << 30);
    if (pthread_create(&t, &attr, run, &j) != 0) run(&j);
    else pthread_join(t, NULL);
    return j.status;
}
