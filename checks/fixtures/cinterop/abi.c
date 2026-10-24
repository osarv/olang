/* the C side of the cinterop scenario (checks/checks.olang): plain-data structs by value and by pointer, every
   integer width, Bool, _Float16 and __bf16, an opaque handle, and callbacks - called on this thread and on one of its own */
#include <stdint.h>
#include <stdbool.h>
#include <stdlib.h>
#include <pthread.h>
typedef struct { int32_t a, b; } I2;
typedef struct { int64_t a, b; } L2;
typedef struct { int64_t a, b, c; } L3;
typedef struct { float x, y; } F2;
typedef struct { float x, y, z; } F3;
typedef struct { float x, y, z, w, v; } F5;
typedef struct { double x, y; } D2;
typedef struct { double x, y, z; } D3;
typedef struct { int64_t a; double b; } LD;
typedef struct { double a; int32_t b; } DI;
typedef struct { uint8_t c[3]; } C3;
typedef struct { int16_t s; uint8_t c; } SC;
typedef struct { float a; int32_t b; float c; } FIF;
typedef struct { F2 p; F2 q; } NF;
typedef struct { bool b; int32_t i; } BI;
typedef struct { uint8_t c; double d; } CD;
typedef struct { void *p; int64_t n; } PL;
typedef struct { _Float16 h[3]; } H3;
#define ID(T, body) T id_##T(T a) { body return a; }
ID(I2, a.a += 1; a.b += 2;)
ID(L2, a.a += 1; a.b += 2;)
ID(L3, a.a += 1; a.b += 2; a.c += 3;)
ID(F2, a.x += 1; a.y += 2;)
ID(F3, a.x += 1; a.y += 2; a.z += 3;)
ID(F5, a.x += 1; a.v += 5;)
ID(D2, a.x += 1; a.y += 2;)
ID(D3, a.x += 1; a.z += 3;)
ID(LD, a.a += 1; a.b += 2;)
ID(DI, a.a += 1; a.b += 2;)
ID(C3, a.c[0] += 1; a.c[2] += 3;)
ID(SC, a.s += 1; a.c += 2;)
ID(FIF, a.a += 1; a.b += 2; a.c += 3;)
ID(NF, a.p.x += 1; a.q.y += 4;)
ID(BI, a.b = !a.b; a.i += 2;)
ID(CD, a.c += 1; a.d += 2;)
ID(PL, a.n += 1;)
ID(H3, a.h[0] += 1; a.h[2] += 3;)
int64_t sum_l3(L3 *p) { p->a = 100; return p->a + p->b + p->c; }
double many(int64_t a, int64_t b, int64_t c, int64_t d, int64_t e, L2 s) { return a+b+c+d+e+s.a*10+s.b*100; }
double many2(double a, double b, double c, double d, double e, double f, double g, D2 s) { return a+b+c+d+e+f+g+s.x*10+s.y*100; }
L3 ret3(int64_t a, int64_t b, int64_t c, int64_t d, int64_t e, L2 s) { L3 r = {a+s.a, b+s.b, c+d+e}; return r; }
bool flip(bool b) { return !b; }
int8_t neg8(int8_t x) { return -x; }
int32_t widen8(int8_t x, uint8_t y, int16_t z, uint16_t w) { return x + y + z + w; }
_Float16 halfdbl(_Float16 x) { return x * 2; }
__bf16 bfadd(__bf16 x, __bf16 y) { return x + y; }

/* an opaque type, held by olang as a reference it never reads (X10) */
typedef struct Db { int64_t n; } Db;
Db *db_open(int64_t n) { Db *d = malloc(sizeof *d); d->n = n; return d; }
Db *db_none(void) { return 0; }
int64_t db_n(Db *d) { return d ? d->n : -1; }
void db_close(Db *d) { free(d); }
int32_t db_open2(int64_t n, Db **out) { *out = db_open(n); return 0; }

typedef struct { int64_t sum; int32_t calls; } Ctx;
void each(int32_t n, void (*cb)(int32_t i, Ctx *ctx), Ctx *ctx) { for (int32_t i = 0; i < n; i++) cb(i, ctx); }
typedef struct { void (*cb)(int32_t, Ctx *); Ctx *ctx; int32_t n; } Job;
static void *run(void *p) { Job *j = p; for (int32_t i = 0; i < j->n; i++) j->cb(i, j->ctx); return 0; }
void each_on_thread(int32_t n, void (*cb)(int32_t i, Ctx *ctx), Ctx *ctx) {
    pthread_t t; Job j = { cb, ctx, n }; pthread_create(&t, 0, run, &j); pthread_join(t, 0);
}
double apply(double (*f)(double), double x) { return f(x); }
