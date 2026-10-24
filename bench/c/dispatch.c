/* dispatch: n pseudo-random shapes summed over and over by area - "any" through a table of function pointers per type
   (C's virtual call), "enum" through a tagged union and a switch, "direct" squares only, called directly. */
#include "common.h"

typedef struct VT { int64_t (*area)(const void*); } VT;
typedef struct { const VT* vt; int64_t s; } Sq;
typedef struct { const VT* vt; int64_t w, h; } Rect;
typedef struct { const VT* vt; int64_t b, h; } Tri;

static int64_t sqArea(const void* p) { const Sq* q = p; return q->s * q->s; }
static int64_t rectArea(const void* p) { const Rect* r = p; return r->w * r->h; }
static int64_t triArea(const void* p) { const Tri* t = p; return t->b * t->h / 2; }
static const VT sqVT = { sqArea }, rectVT = { rectArea }, triVT = { triArea };

typedef struct { int tag; int64_t a, b; } Fig;

static int64_t area(const Fig* f) {
    switch (f->tag) {
    case 0: return f->a * f->a;
    case 1: return f->a * f->b;
    default: return f->a * f->b / 2;
    }
}

static int64_t step(int64_t s) { return (int64_t)((uint64_t)s * 6364136223846793005ULL + 1442695040888963407ULL); }

int main(int argc, char** argv) {
    if (argc < 4) return 1;
    long n = arg_or(argc, argv, 2, 0), passes = arg_or(argc, argv, 3, 0);
    int64_t s = 1, total = 0;
    if (strcmp(argv[1], "any") == 0) {
        void** xs = malloc(n * sizeof(void*));
        for (long i = 0; i < n; i++) {
            s = step(s);
            int64_t k = (s >> 33) % 3, a = (s >> 40) % 100 + 1, b = (s >> 50) % 100 + 1;
            if (k == 0) { Sq* q = malloc(sizeof(Sq)); q->vt = &sqVT; q->s = a; xs[i] = q; }
            else if (k == 1) { Rect* r = malloc(sizeof(Rect)); r->vt = &rectVT; r->w = a; r->h = b; xs[i] = r; }
            else { Tri* t = malloc(sizeof(Tri)); t->vt = &triVT; t->b = a; t->h = b; xs[i] = t; }
        }
        for (long p = 0; p < passes; p++)
            for (long i = 0; i < n; i++) total += (*(const VT**)xs[i])->area(xs[i]) ^ p;
    } else if (strcmp(argv[1], "enum") == 0) {
        Fig* xs = malloc(n * sizeof(Fig));
        for (long i = 0; i < n; i++) {
            s = step(s);
            xs[i].tag = (int)((s >> 33) % 3);
            xs[i].a = (s >> 40) % 100 + 1;
            xs[i].b = (s >> 50) % 100 + 1;
        }
        for (long p = 0; p < passes; p++)
            for (long i = 0; i < n; i++) total += area(&xs[i]) ^ p;
    } else if (strcmp(argv[1], "direct") == 0) {
        int64_t* xs = malloc(n * sizeof(int64_t));
        for (long i = 0; i < n; i++) { s = step(s); xs[i] = (s >> 40) % 100 + 1; }
        for (long p = 0; p < passes; p++)
            for (long i = 0; i < n; i++) total += xs[i] * xs[i] ^ p;
    } else return 1;
    printf("%lld\n", (long long)total);
    return 0;
}
