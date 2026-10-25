/* drives the runtime's regions (std/runtime/runtime.ll, docs/memory.md 3.4) directly: a region made in a scope, what
   is built there - small and large - each object naming its region in the word before it, its destructors run once as
   it is released, regions left in their scope closed with it, constant data and null naming none, and a million regions
   nested in one another closed with constant stack. Linked with the runtime object "olang build -debug stub.olang"
   builds, so the regions keep working apart from the analysis that has lowering make them (compiler/free.olang) */
#include <stdint.h>
#include <stdio.h>
#include <string.h>

void *__olang_region_make(void *parent);
void *__olang_region_or(void *obj, void *fallback);
void __olang_region_release(void *obj);
void *__olang_scope_alloc_a(void *scope, int64_t size, int64_t align);
void __olang_scope_register_dtor(void *scope, void *instance, void *fn);
void __olang_scope_close(void *scope);

static int64_t dtors, bad;

static void counted(void *instance, void *scope) {
    (void)scope;
    if (((int64_t *)instance)[0] != 42) bad++;
    dtors++;
}

/* an object of size bytes built in region r, its first word 42, a destructor on it when dtor */
static int64_t *made(void *r, int64_t size, int64_t align, int dtor) {
    int64_t *o = __olang_scope_alloc_a(r, size, align);
    if ((uintptr_t)o % (uintptr_t)align) bad++;
    if (__olang_region_or(o, NULL) != r) bad++;
    memset(o, 0, (size_t)size);
    o[0] = 42;
    if (dtor) __olang_scope_register_dtor(r, o, (void *)counted);
    return o;
}

/* a scope header as the generated code lays one out (%olang.scope, seven words), empty */
typedef struct { void *w[7]; } scope;

/* one region in s: an object, a destructor on it, and what it builds there afterwards, then released */
static void one(scope *s, int64_t size, int64_t align) {
    void *r = __olang_region_make(s);
    int64_t *o = made(r, size, align, 1);
    for (int i = 0; i < 100; i++) memset(made(r, 1000, 8, 0) + 1, 7, 992);
    __olang_region_release(o);
}

int main(int argc, char **argv) {
    const char *mode = argc > 1 ? argv[1] : "";
    scope s;
    memset(&s, 0, sizeof s);
    if (!strcmp(mode, "small")) {
        one(&s, 64, 8);
        one(&s, 2048, 64);
    } else if (!strcmp(mode, "large")) {
        one(&s, 100000, 8);
        one(&s, 1 << 22, 64);
    } else if (!strcmp(mode, "null")) { /* null and constant data (a zero word before it) name no region */
        static struct { int64_t zero, value; } constant = { 0, 42 };
        __olang_region_release(NULL);
        __olang_region_release(&constant.value);
        if (__olang_region_or(NULL, &s) != &s || __olang_region_or(&constant.value, &s) != &s) bad++;
    } else if (!strcmp(mode, "kept")) { /* regions not released are closed with their scope, after its own objects */
        void *a = __olang_region_make(&s), *b = __olang_region_make(&s), *c = __olang_region_make(&s);
        made(a, 16, 8, 1);
        int64_t *ob = made(b, 16, 8, 1);
        made(c, 16, 8, 1);
        __olang_region_release(ob); /* the middle one of three, unlinked */
        made(__olang_region_make(&s), 16, 8, 1);
        __olang_scope_close(&s);
    } else if (!strcmp(mode, "chain")) { /* 200,000 regions, each made in the one before, closed with constant stack */
        void *parent = &s, *first = NULL;
        for (int i = 0; i < 200000; i++) {
            void *r = __olang_region_make(parent);
            int64_t *o = made(r, 16, 8, 1);
            if (!first) first = o;
            parent = r;
        }
        __olang_region_release(first);
    }
    __olang_scope_close(&s);
    printf("%s %lld %lld\n", mode, (long long)dtors, (long long)bad);
    return 0;
}
