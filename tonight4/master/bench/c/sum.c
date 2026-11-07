/* sum: n pseudo-random int64 values pushed onto a growable array (realloc, doubling), then summed over and over with
   a plain loop - for every mode but "push", which only builds the array: olang's four ways of walking it are one
   loop in C. */
#include "common.h"

typedef struct { int64_t* data; long len, cap; } Vec;

static void push(Vec* v, int64_t x) {
    if (v->len == v->cap) {
        v->cap = v->cap ? v->cap * 2 : 8;
        v->data = realloc(v->data, v->cap * sizeof(int64_t));
    }
    v->data[v->len++] = x;
}

int main(int argc, char** argv) {
    if (argc < 4) return 1;
    long n = arg_or(argc, argv, 2, 0), passes = arg_or(argc, argv, 3, 0);
    Vec v = {0};
    int64_t s = 1;
    for (long i = 0; i < n; i++) {
        s = (int64_t)((uint64_t)s * 6364136223846793005ULL + 1442695040888963407ULL);
        push(&v, s >> 33);
    }
    int64_t total = 0;
    if (strcmp(argv[1], "push") == 0) total = v.len + v.data[n - 1];
    for (long p = 0; p < passes; p++)
        for (long i = 0; i < v.len; i++) total += v.data[i] ^ p;
    printf("%lld\n", (long long)total);
    free(v.data);
    return 0;
}
