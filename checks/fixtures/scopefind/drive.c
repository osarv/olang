/* drives O29's __olang_scope_of (std/runtime/runtime.ll) directly: storage in a small chunk (a slot), in a large one
   (the large table), in a region's first block (a slab) and in a region's later chunks - each found as the scope it
   lives in, interior addresses too; a stack, constant data and C's memory found as the program's scope, the second
   address taken where the first is in no chunk; and from another thread, that thread's own part of the scope, built
   into and closed with it. Linked with the runtime object "olang build -debug stub.olang" builds */
#include <pthread.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

void *__olang_scope_of(void *p, void *q);
void *__olang_scope_alloc_a(void *scope, int64_t size, int64_t align);
void *__olang_region_make(void *parent);
void __olang_scope_close(void *scope);
void __olang_thread_init(void);

static int64_t found, bad;

/* a scope header as the generated code lays one out (%olang.scope, seven words), empty */
typedef struct { void *w[7]; } scope;

static void expect(void *p, int64_t size, void *want) {
    if (__olang_scope_of(p, NULL) != want) bad++;
    if (__olang_scope_of((char *)p + size - 1, NULL) != want) bad++;
    found++;
}

static void *made(void *s, int64_t size) {
    char *o = __olang_scope_alloc_a(s, size, 8);
    memset(o, 1, (size_t)size);
    return o;
}

static void *other(void *arg) {
    void **in = arg;
    __olang_thread_init();
    void *part = __olang_scope_of(in[0], NULL);
    if (part == NULL || part == in[1]) bad++;
    char *o = made(part, 5000);
    if (__olang_scope_of(o, NULL) != part) bad++;
    in[2] = o;
    return NULL;
}

int main(int argc, char **argv) {
    const char *mode = argc > 1 ? argv[1] : "";
    static const int64_t constant[2] = { 1, 2 };
    int64_t local = 3;
    scope s;
    memset(&s, 0, sizeof s);
    __olang_thread_init();
    void *prog = __olang_scope_of(&local, NULL);
    if (!strcmp(mode, "small")) { /* many objects over many chunks */
        for (int i = 0; i < 2000; i++) expect(made(&s, 16 + i % 300), 16 + i % 300, &s);
    } else if (!strcmp(mode, "large")) { /* chunks above a slot, in the large table */
        expect(made(&s, 200000), 200000, &s);
        expect(made(&s, 1 << 22), 1 << 22, &s);
        expect(made(&s, 64), 64, &s);
    } else if (!strcmp(mode, "region")) { /* a region is read as the scope it lives in, nested ones too */
        void *r = __olang_region_make(&s), *r2 = __olang_region_make(r);
        for (int i = 0; i < 100; i++) expect(made(r, 1000), 1000, &s);
        expect(made(r2, 300), 300, &s);
        expect(made(r2, 300000), 300000, &s);
    } else if (!strcmp(mode, "none")) { /* in no chunk: the program's, or where the second address is */
        void *c = malloc(64);
        char *o = made(&s, 32);
        if (prog == NULL || prog == &s) bad++;
        expect((void *)constant, sizeof constant, prog);
        expect(c, 64, prog);
        expect(&s, sizeof s, prog);
        if (__olang_scope_of(&local, o) != &s || __olang_scope_of(c, o) != &s) bad++;
        free(c);
    } else if (!strcmp(mode, "thread")) { /* another thread's own part of the scope, closed with it */
        void *in[3] = { made(&s, 64), &s, NULL };
        if (__olang_scope_of(in[0], NULL) != &s) bad++;
        pthread_t t;
        pthread_create(&t, NULL, other, in);
        pthread_join(t, NULL);
        if (in[2] == NULL || ((char *)in[2])[4999] != 1) bad++;
        found++;
    }
    __olang_scope_close(&s);
    printf("%s %lld\n", mode, (long long)bad);
    (void)found;
    return 0;
}
