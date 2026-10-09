/* mlp: the training step of bench/mlp.olang in C - a 784-128-10 perceptron (ReLU, softmax cross-entropy, plain SGD) on
   a batch of 64 in float, every buffer allocated once - with its products as plain loops ("naive", the i-k-j order
   for A B and dot products for A B^T and A^T B made row-wise) or through OpenBLAS's cblas_sgemm ("blas", whose threads
   are OPENBLAS_NUM_THREADS). The data, the initial weights and the labels come from the same generators as olang's
   (std/rand's xoshiro256**), so the losses agree to rounding. Arguments: steps, naive|blas */
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <stdint.h>
#include <math.h>
#include <time.h>
#include <cblas.h>

enum { B = 64, IN = 784, HID = 128, CL = 10 };

static double now(void) { struct timespec t; clock_gettime(CLOCK_MONOTONIC, &t); return t.tv_sec + t.tv_nsec * 1e-9; }

/* std/rand: xoshiro256** seeded through splitmix64 */
typedef struct { uint64_t s[4]; } rnd;
static uint64_t mix64(uint64_t z) {
    z = (z ^ (z >> 30)) * 0xBF58476D1CE4E5B9ULL;
    z = (z ^ (z >> 27)) * 0x94D049BB133111EBULL;
    return z ^ (z >> 31);
}
static rnd seeded(uint64_t seed) {
    const uint64_t g = 11400714819323198485ULL;
    rnd r = {{ mix64(seed + g), mix64(seed + 2 * g), mix64(seed + 3 * g), mix64(seed + 4 * g) }};
    return r;
}
static uint64_t rotl(uint64_t x, int k) { return (x << k) | (x >> (64 - k)); }
static uint64_t next(rnd* r) {
    uint64_t out = rotl(r->s[1] * 5, 7) * 9, t = r->s[1] << 17;
    r->s[2] ^= r->s[0]; r->s[3] ^= r->s[1]; r->s[1] ^= r->s[2]; r->s[0] ^= r->s[3]; r->s[2] ^= t;
    r->s[3] = rotl(r->s[3], 45);
    return out;
}
static double unit(rnd* r) { return (double)(next(r) >> 11) * (1.0 / 9007199254740992.0); }
static double uniform(rnd* r, double lo, double hi) { return lo + (hi - lo) * unit(r); }
static double normal(rnd* r) {
    double u = 1.0 - unit(r), v = unit(r);
    return sqrt(-2.0 * log(u)) * cos(2.0 * 3.141592653589793 * v);
}
static long below(rnd* r, long n) {
    uint64_t m = n, limit = 0 - (0 - m) % m;
    for (;;) { uint64_t x = next(r); if (limit == 0 || x < limit) return x % m; }
}

static int naive;

/* c (m x n) = op(a) op(b), op(x) = x or x^T, row-major with the given row strides */
static void gemm(int ta, int tb, int m, int n, int k, const float* a, int lda, const float* b, int ldb, float* c, int ldc) {
    if (!naive) {
        cblas_sgemm(CblasRowMajor, ta ? CblasTrans : CblasNoTrans, tb ? CblasTrans : CblasNoTrans, m, n, k, 1.0f, a, lda,
                    b, ldb, 0.0f, c, ldc);
        return;
    }
    for (int i = 0; i < m; i++) {
        float* ci = c + i * ldc;
        for (int j = 0; j < n; j++) ci[j] = 0;
        if (!tb) {
            for (int p = 0; p < k; p++) {
                float aip = ta ? a[p * lda + i] : a[i * lda + p];
                const float* bp = b + p * ldb;
                for (int j = 0; j < n; j++) ci[j] += aip * bp[j];
            }
        } else {
            for (int j = 0; j < n; j++) {
                float s = 0;
                for (int p = 0; p < k; p++) s += (ta ? a[p * lda + i] : a[i * lda + p]) * b[j * ldb + p];
                ci[j] = s;
            }
        }
    }
}

static float w1[HID * IN], b1[HID], w2[CL * HID], b2[CL];
static float h[B * HID], act[B * HID], o[B * CL], p[B * CL], da[B * HID];
static float dw1[HID * IN], db1[HID], dw2[CL * HID], db2[CL];

static float step(const float* x, const int* labels, float rate) {
    gemm(0, 1, B, HID, IN, x, IN, w1, IN, h, HID);
    for (int r = 0; r < B; r++) for (int c = 0; c < HID; c++) h[r * HID + c] += b1[c];
    for (int i = 0; i < B * HID; i++) act[i] = h[i] > 0 ? h[i] : 0;
    gemm(0, 1, B, CL, HID, act, HID, w2, HID, o, CL);
    for (int r = 0; r < B; r++) for (int c = 0; c < CL; c++) o[r * CL + c] += b2[c];
    float loss = 0;
    for (int r = 0; r < B; r++) {
        float mx = o[r * CL], s = 0;
        for (int c = 1; c < CL; c++) if (o[r * CL + c] > mx) mx = o[r * CL + c];
        for (int c = 0; c < CL; c++) { p[r * CL + c] = expf(o[r * CL + c] - mx); s += p[r * CL + c]; }
        for (int c = 0; c < CL; c++) p[r * CL + c] /= s;
        loss -= logf(p[r * CL + labels[r]]);
        p[r * CL + labels[r]] -= 1;
    }
    for (int i = 0; i < B * CL; i++) p[i] *= 1.0f / B;
    gemm(1, 0, CL, HID, B, p, CL, act, HID, dw2, HID);
    for (int c = 0; c < CL; c++) { db2[c] = 0; for (int r = 0; r < B; r++) db2[c] += p[r * CL + c]; }
    gemm(0, 0, B, HID, CL, p, CL, w2, HID, da, HID);
    for (int i = 0; i < B * HID; i++) da[i] = h[i] > 0 ? da[i] : 0;
    gemm(1, 0, HID, IN, B, da, HID, x, IN, dw1, IN);
    for (int c = 0; c < HID; c++) { db1[c] = 0; for (int r = 0; r < B; r++) db1[c] += da[r * HID + c]; }
    for (int i = 0; i < HID * IN; i++) w1[i] -= rate * dw1[i];
    for (int i = 0; i < HID; i++) b1[i] -= rate * db1[i];
    for (int i = 0; i < CL * HID; i++) w2[i] -= rate * dw2[i];
    for (int i = 0; i < CL; i++) b2[i] -= rate * db2[i];
    return loss / B;
}

int main(int argc, char** argv) {
    if (argc < 3) { fprintf(stderr, "usage: mlp steps naive|blas\n"); return 2; }
    long steps = atol(argv[1]);
    naive = !strcmp(argv[2], "naive");
    rnd r = seeded(7);
    for (int i = 0; i < HID * IN; i++) w1[i] = (float)(0.0 + sqrt(2.0 / IN) * normal(&r));
    for (int i = 0; i < CL * HID; i++) w2[i] = (float)(0.0 + sqrt(2.0 / HID) * normal(&r));
    rnd d = seeded(11);
    static float x[B * IN];
    int labels[B];
    for (int i = 0; i < B * IN; i++) x[i] = (float)uniform(&d, 0, 1);
    for (int rr = 0; rr < B; rr++) {
        labels[rr] = below(&d, CL);
        for (int c = 0; c < 78; c++) x[rr * IN + labels[rr] * 78 + c] += 1;
    }
    float first = step(x, labels, 0.05f), last = first;
    double t0 = now();
    for (long s = 0; s < steps; s++) last = step(x, labels, 0.05f);
    printf("loss %.4f -> %.4f, %.1fus a step\n", first, last, (now() - t0) / steps * 1e6);
    return 0;
}
