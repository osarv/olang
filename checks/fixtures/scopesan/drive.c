/* drives the scope sanitizer's runtime (B2f) directly: a closed scope's storage used after the close, by each way
   the runtime tells apart, and a fault that is not the sanitizer's. Linked with the objects "olang -b -d -s stub.olang"
   builds, its "main" renamed out of the way */
#include <stdint.h>
#include <stdio.h>
#include <string.h>

struct scope { void *head, *dtors, *tail; };
void *__olang_scope_alloc_a(struct scope *s, int64_t size, int64_t align);
void __olang_san_quarantine_list(void *head); /* what closing a scope does under -s */
void __olang_san_init(void);
void __olang_on_crash(const char *msg, int64_t len); /* os.OnCrash */
int64_t stub_Touch(int64_t n);

static int64_t *volatile keep;

static int64_t *closed(int64_t size) {
    struct scope s = {0};
    int64_t *p = __olang_scope_alloc_a(&s, size, 8);
    memset(p, 1, size);
    __olang_san_quarantine_list(s.head);
    return p;
}

int main(int argc, char **argv) {
    __olang_san_init();
    const char *mode = argc > 1 ? argv[1] : "ok";
    if (argc > 2) __olang_on_crash("crashed\n", 8); /* a program's own crash message: kept for faults not the sanitizer's */
    if (!strcmp(mode, "read")) printf("%lld\n", (long long)closed(64)[3]);
    else if (!strcmp(mode, "write")) closed(64)[3] = 7;
    else if (!strcmp(mode, "big")) printf("%lld\n", (long long)closed(4 << 20)[(4 << 20) / 8 - 1]);
    else if (!strcmp(mode, "ref")) {
        keep = (int64_t *)(uintptr_t)0x7FF57FF57FF57FF5ull; /* the poison word, read as a reference */
        printf("%lld\n", (long long)*keep);
    } else if (!strcmp(mode, "len")) {
        struct scope s = {0};
        __olang_scope_alloc_a(&s, 0x7FF57FF57FF57FF5ll, 8); /* the poison word, read as a length */
    } else if (!strcmp(mode, "foreign")) {
        keep = 0;
        printf("%lld\n", (long long)*keep); /* not the sanitizer's: the default action */
    } else if (!strcmp(mode, "churn")) {
        /* more closed scopes than are held back: the oldest are given back for reuse, the newest still caught */
        for (int i = 0; i < 40000; i++) keep = closed(4000);
        int64_t t = 0;
        for (int i = 0; i < 1000; i++) t += stub_Touch(1000 + i);
        printf("%lld\n", (long long)t);
        fflush(stdout);
        printf("%lld\n", (long long)keep[1]);
    } else {
        int64_t t = 0;
        for (int i = 0; i < 1000; i++) t += stub_Touch(1000 + i);
        printf("ok %lld\n", (long long)t);
    }
    return 0;
}
