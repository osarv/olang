/* vec: the modes of vec.olang over plain arrays - "MODE KIND N PASSES", KIND ignored. Arithmetic is done unsigned, so it
   wraps as olang's does (E6c), and printed signed. "push" pushes onto a realloc'd array that doubles; "opaque" calls
   through a volatile function pointer; "sort" uses qsort, whose instability no I64 can show. */
#include "common.h"

static int64_t twice(int64_t x) { return (int64_t)((uint64_t)x * 2 + 1); }
static int64_t (*volatile opaque)(int64_t) = twice;

typedef struct { int64_t* pos; int64_t* vel; long n; } Sim;

static void step(Sim* s) {
    for (long i = 0; i < s->n; i++) s->pos[i] = (int64_t)((uint64_t)s->pos[i] + (uint64_t)s->vel[i]);
}

static int cmp(const void* a, const void* b) {
    int64_t x = *(const int64_t*)a, y = *(const int64_t*)b;
    return (x > y) - (x < y);
}

int main(int argc, char** argv) {
    if (argc < 5) return 1;
    const char* mode = argv[1];
    long n = arg_or(argc, argv, 3, 0), passes = arg_or(argc, argv, 4, 0);
    int64_t* a = malloc(n * sizeof(int64_t));
    int64_t s = 1;
    for (long i = 0; i < n; i++) {
        s = (int64_t)((uint64_t)s * 6364136223846793005ULL + 1442695040888963407ULL);
        a[i] = s >> 33;
    }
    uint64_t total = 0;
    if (strcmp(mode, "walk") == 0) {
        for (long p = 0; p < passes; p++)
            for (long i = 0; i < n; i++) total += (uint64_t)(a[i] ^ p);
    } else if (strcmp(mode, "gather") == 0) {
        long m = n * passes;
        int64_t* idx = malloc(m * sizeof(int64_t));
        int64_t t = 7;
        for (long i = 0; i < m; i++) {
            t = (int64_t)((uint64_t)t * 6364136223846793005ULL + 1442695040888963407ULL);
            idx[i] = ((t >> 33) % n + n) % n;
        }
        for (long i = 0; i < m; i++) total += (uint64_t)a[idx[i]];
        free(idx);
    } else if (strcmp(mode, "store") == 0) {
        for (long p = 0; p < passes; p++)
            for (long i = 0; i < n; i++) a[i] = (int64_t)((uint64_t)a[i] * 2 + (uint64_t)p);
        for (long i = 0; i < n; i++) total += (uint64_t)a[i];
    } else if (strcmp(mode, "fields") == 0) {
        Sim sim = { a, malloc(n * sizeof(int64_t)), n };
        for (long i = 0; i < n; i++) sim.vel[i] = i;
        for (long p = 0; p < passes; p++) step(&sim);
        for (long i = 0; i < n; i++) total += (uint64_t)sim.pos[i];
        free(sim.vel);
    } else if (strcmp(mode, "push") == 0) {
        int64_t* v = NULL;
        long len = 0, cap = 0;
        for (long i = 0; i < n; i++) {
            if (len == cap) {
                cap = cap ? cap * 2 : 8;
                v = realloc(v, cap * sizeof(int64_t));
            }
            v[len++] = a[i];
        }
        total = (uint64_t)len + (uint64_t)v[n - 1];
        free(v);
    } else if (strcmp(mode, "opaque") == 0) {
        for (long p = 0; p < passes; p++)
            for (long i = 0; i < n; i++) total += (uint64_t)opaque(a[i]);
    } else if (strcmp(mode, "sort") == 0) {
        qsort(a, n, sizeof(int64_t), cmp);
        for (long i = 0; i < n; i++) total += (uint64_t)a[i] * (uint64_t)(i % 7);
    } else {
        return 1;
    }
    printf("%lld\n", (long long)(int64_t)total);
    free(a);
    return 0;
}
