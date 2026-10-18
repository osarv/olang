/* drives the runtime's regions (std/runtime/runtime.ll, docs/memory.md 3.4) directly: an object in a region of its own,
   what it builds there, its destructor nodes, and its release - small and large, a long chain of regions holding each
   other released with constant stack, and the slots a region's object is held in. Nothing stage 0 emits uses regions,
   so this is what keeps them working until the self-hosted compiler's early freeing does. Linked with the runtime
   object "olang build -debug stub.olang" builds */
#include <stdint.h>
#include <stdio.h>
#include <string.h>

void *__olang_region_new(int64_t size, int64_t align, int64_t nodes);
void __olang_region_free(void *obj);
void __olang_region_drop_slot(void *slot, void *scope);
void __olang_region_drop_aslot(void *slot, void *scope);
void __olang_region_drop_held(void *slot, void *scope);
void __olang_region_drop_aheld(void *slot, void *scope);
extern void *__olang_region_nullhdr;
void *__olang_scope_alloc_a(void *scope, int64_t size, int64_t align);
void __olang_scope_push_dtor(void *scope, void *node, void *instance, void *fn);

static int64_t dtors, bad;

static void counted(void *instance, void *scope) {
    (void)scope;
    if (((int64_t *)instance)[0] != 42) bad++;
    dtors++;
}

/* an object of size bytes, in a region of its own with nodes destructor nodes reserved, its first word 42 */
static int64_t *made(int64_t size, int64_t align, int64_t nodes) {
    int64_t *o = __olang_region_new(size, align, nodes);
    if ((uintptr_t)o % (uintptr_t)align) bad++;
    memset(o, 0, (size_t)size);
    o[0] = 42;
    return o;
}
static void *header(void *o) { return ((void **)o)[-1]; }
static void *node(void *o, int k) { return (char *)o - 8 - 24 * k; }

/* one object, a destructor on it, and what it builds into its region afterwards */
static void one(int64_t size, int64_t align) {
    int64_t *o = made(size, align, 1);
    __olang_scope_push_dtor(header(o), node(o, 1), o, (void *)counted);
    for (int i = 0; i < 100; i++) memset(__olang_scope_alloc_a(header(o), 1000, 8), 7, 1000);
    __olang_region_free(o);
}

int main(int argc, char **argv) {
    const char *mode = argc > 1 ? argv[1] : "";
    if (!strcmp(mode, "small")) { /* one allocation of the C allocator's, then chunks for what it builds */
        one(64, 8);
        one(2048, 64);
    } else if (!strcmp(mode, "large")) { /* a region in chunks from the start */
        one(100000, 8);
        one(1 << 22, 64);
    } else if (!strcmp(mode, "null")) {
        __olang_region_free(NULL); /* nothing */
        if (__olang_region_nullhdr) bad++;
    } else if (!strcmp(mode, "chain")) { /* a million regions, each holding the next in a slot its node releases */
        int64_t *next = NULL;
        for (int i = 0; i < 1000000; i++) {
            int64_t *o = made(16, 8, 2);
            ((int64_t **)o)[1] = next;
            __olang_scope_push_dtor(header(o), node(o, 2), o + 1, (void *)__olang_region_drop_slot);
            __olang_scope_push_dtor(header(o), node(o, 1), o, (void *)counted);
            next = o;
        }
        __olang_region_free(next);
    } else if (!strcmp(mode, "slots")) { /* each slot left empty, what it held released once */
        void *slot = made(32, 8, 1);
        __olang_scope_push_dtor(header(slot), node(slot, 1), slot, (void *)counted);
        __olang_region_drop_slot(&slot, NULL);
        if (slot) bad++;
        __olang_region_drop_slot(&slot, NULL); /* null: nothing */
        struct { int64_t len; void *buf; } arr = { 4, made(32, 8, 1) };
        __olang_scope_push_dtor(header(arr.buf), node(arr.buf, 1), arr.buf, (void *)counted);
        __olang_region_drop_aslot(&arr, NULL);
        if (arr.len || arr.buf) bad++;
        struct { void *obj; int64_t registered; } held = { made(32, 8, 1), 1 };
        __olang_scope_push_dtor(header(held.obj), node(held.obj, 1), held.obj, (void *)counted);
        __olang_region_drop_held(&held, NULL);
        if (held.obj || held.registered) bad++;
        __olang_region_drop_held(&held, NULL);
        struct { struct { int64_t len; void *buf; } a; int64_t registered; } aheld = { { 4, made(32, 8, 1) }, 1 };
        __olang_scope_push_dtor(header(aheld.a.buf), node(aheld.a.buf, 1), aheld.a.buf, (void *)counted);
        __olang_region_drop_aheld(&aheld, NULL);
        if (aheld.a.buf || aheld.registered) bad++;
    }
    printf("%s %lld %lld\n", mode, (long long)dtors, (long long)bad);
    return 0;
}
