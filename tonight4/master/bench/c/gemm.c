/* gemm: C = A B for square matrices, the C side of bench/gemm.sh - the same matrices and the same timing as
   bench/gemm.olang (the best of several runs, GFLOPS printed), three ways:
     naive    the i-k-j loop (bench/c/matmul.c's), each row of C updated from a row of B
     blocked  std/linalg's algorithm written in C: B packed into KC x NC panels of NR columns, A into MC x KC panels of
              MR rows, a micro-kernel holding an MR x NR tile of C in registers - the same blocking, tiles, packing and
              write-back as the olang version, so the difference between the two is the language's
     blas     OpenBLAS's cblas_sgemm / cblas_dgemm (its own threads: OPENBLAS_NUM_THREADS)
   Arguments: f32|f64, n, naive|blocked|blas, repetitions, and then "mv" or "mvt" and m for a matrix-vector product
   with an n x m W instead (1000 a run: the plain loop - "naive" - or OpenBLAS's gemv - "blas") */
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <time.h>
#include <cblas.h>

#define KC 256
#define MC 128
#define NC 2040

static double now(void) { struct timespec t; clock_gettime(CLOCK_MONOTONIC, &t); return t.tv_sec + t.tv_nsec * 1e-9; }
static long lesser(long a, long b) { return a < b ? a : b; }

#define DEFINE_GEMM(R, MR, NR, SUFFIX)                                                                              \
static void pack_a_##SUFFIX(const R* a, long lda, long i0, long p0, long rows, long depth, R* ap) {                 \
    for (long r = 0; r < rows; r += MR)                                                                             \
        for (long k = 0; k < depth; k++)                                                                            \
            for (long i = 0; i < MR; i++)                                                                           \
                ap[r * depth + k * MR + i] = r + i < rows ? a[(i0 + r + i) * lda + p0 + k] : 0;                     \
}                                                                                                                   \
static void pack_b_##SUFFIX(const R* b, long ldb, long p0, long j0, long depth, long cols, R* bp) {                 \
    for (long c = 0; c < cols; c += NR)                                                                             \
        for (long k = 0; k < depth; k++)                                                                            \
            for (long j = 0; j < NR; j++)                                                                           \
                bp[c * depth + k * NR + j] = c + j < cols ? b[(p0 + k) * ldb + j0 + c + j] : 0;                     \
}                                                                                                                   \
static void micro_##SUFFIX(long depth, const R* ap, const R* bp, R alpha, R beta, R* c, long ldc, long rows,       \
                           long cols) {                                                                             \
    R acc[MR * NR];                                                                                                 \
    for (int i = 0; i < MR * NR; i++) acc[i] = 0;                                                                   \
    for (long k = 0; k < depth; k++)                                                                                \
        for (int i = 0; i < MR; i++) {                                                                              \
            R ai = ap[k * MR + i];                                                                                  \
            for (int j = 0; j < NR; j++) acc[i * NR + j] += ai * bp[k * NR + j];                                    \
        }                                                                                                           \
    R out[MR * NR];                                                                                                 \
    for (int i = 0; i < MR * NR; i++) out[i] = acc[i];                                                              \
    for (long i = 0; i < rows; i++)                                                                                 \
        for (long j = 0; j < cols; j++)                                                                             \
            c[i * ldc + j] = beta == 0 ? alpha * out[i * NR + j] : alpha * out[i * NR + j] + beta * c[i * ldc + j]; \
}                                                                                                                   \
static void gemm_##SUFFIX(long m, long n, long k, R alpha, const R* a, long lda, const R* b, long ldb, R beta, R* c, \
                          long ldc) {                                                                               \
    R* bp = aligned_alloc(64, sizeof(R) * KC * (NC + NR));                                                          \
    R* ap = aligned_alloc(64, sizeof(R) * MC * KC);                                                                 \
    for (long jc = 0; jc < n; jc += NC) {                                                                           \
        long cols = lesser(NC, n - jc);                                                                             \
        for (long pc = 0; pc < k; pc += KC) {                                                                       \
            long depth = lesser(KC, k - pc);                                                                        \
            pack_b_##SUFFIX(b, ldb, pc, jc, depth, cols, bp);                                                       \
            R bt = pc == 0 ? beta : 1;                                                                              \
            for (long ic = 0; ic < m; ic += MC) {                                                                   \
                long rows = lesser(MC, m - ic);                                                                     \
                pack_a_##SUFFIX(a, lda, ic, pc, rows, depth, ap);                                                   \
                for (long jr = 0; jr < cols; jr += NR)                                                              \
                    for (long ir = 0; ir < rows; ir += MR)                                                          \
                        micro_##SUFFIX(depth, ap + ir * depth, bp + jr * depth, alpha, bt,                          \
                                       c + (ic + ir) * ldc + jc + jr, ldc, lesser(MR, rows - ir),                   \
                                       lesser(NR, cols - jr));                                                      \
            }                                                                                                       \
        }                                                                                                           \
    }                                                                                                               \
    free(ap); free(bp);                                                                                             \
}                                                                                                                   \
static void naive_##SUFFIX(long n, const R* a, const R* b, R* c) {                                                  \
    memset(c, 0, sizeof(R) * n * n);                                                                                \
    for (long i = 0; i < n; i++) {                                                                                  \
        R* row = c + i * n;                                                                                         \
        for (long k = 0; k < n; k++) {                                                                              \
            R aik = a[i * n + k];                                                                                   \
            const R* bk = b + k * n;                                                                                \
            for (long j = 0; j < n; j++) row[j] += aik * bk[j];                                                     \
        }                                                                                                           \
    }                                                                                                               \
}                                                                                                                   \
/* with W an n x m matrix: y = W x ("mv", each output a row of W dotted with x - a dense layer at batch 1) or     \
   y = W^T u ("mvt", W's rows added in, scaled), as plain C writes them (clang keeps a dot product's sum in order,    \
   so "mv"'s inner loop is scalar; "mvt"'s vectorizes) - or OpenBLAS's gemv */                                     \
static void mv_##SUFFIX(long n, long m, int trans, const char* mode, int reps) {                                     \
    R* w = aligned_alloc(64, sizeof(R) * n * m);                                                                    \
    R* x = aligned_alloc(64, sizeof(R) * (n + m));                                                                  \
    R* y = aligned_alloc(64, sizeof(R) * (n + m));                                                                  \
    long s = 1;                                                                                                     \
    for (long i = 0; i < n * m; i++) {                                                                              \
        s = (s * 1103515245 + 12345) % 2147483648L;                                                                 \
        R av = (R)((double)(s % 1000) / 1000.0);                                                                    \
        if (i < n + m) x[i] = av;                                                                                   \
        s = (s * 1103515245 + 12345) % 2147483648L;                                                                 \
        w[i] = (R)((double)(s % 1000) / 1000.0);                                                                    \
    }                                                                                                               \
    long outs = trans ? m : n;                                                                                      \
    double best = 0;                                                                                                \
    for (int r = 0; r < reps; r++) {                                                                                \
        double t0 = now();                                                                                          \
        for (int it = 0; it < 1000; it++) {                                                                         \
            if (!strcmp(mode, "blas"))                                                                              \
                GEMV_##SUFFIX(CblasRowMajor, trans ? CblasTrans : CblasNoTrans, n, m, 1, w, m, x, 1, 0, y, 1);      \
            else if (!trans) for (long i = 0; i < n; i++) {                                                         \
                R acc = 0;                                                                                          \
                for (long p = 0; p < m; p++) acc += w[i * m + p] * x[p];                                            \
                y[i] = acc;                                                                                         \
            }                                                                                                       \
            else {                                                                                                  \
                for (long j = 0; j < m; j++) y[j] = 0;                                                              \
                for (long i = 0; i < n; i++) {                                                                      \
                    R u = x[i];                                                                                     \
                    for (long j = 0; j < m; j++) y[j] += u * w[i * m + j];                                          \
                }                                                                                                   \
            }                                                                                                       \
            __asm__ volatile("" : : "r"(y) : "memory");                                                             \
        }                                                                                                           \
        double t = now() - t0;                                                                                      \
        if (r == 0 || t < best) best = t;                                                                           \
    }                                                                                                               \
    double sum = 0;                                                                                                 \
    for (long i = 0; i < outs; i++) sum += y[i];                                                                    \
    double per = best / 1000;                                                                                       \
    printf("%ldx%ld %s-%s %.1fns %.2f GFLOPS check %.7g\n", n, m, trans ? "mvt" : "mv", mode, per * 1e9,             \
           2.0 * n * m / per * 1e-9, sum);                                                                          \
    free(w); free(x); free(y);                                                                                      \
}                                                                                                                   \
static void run_##SUFFIX(long n, const char* mode, int reps) {                                                      \
    R* a = aligned_alloc(64, sizeof(R) * n * n);                                                                    \
    R* b = aligned_alloc(64, sizeof(R) * n * n);                                                                    \
    R* c = aligned_alloc(64, sizeof(R) * n * n);                                                                    \
    long s = 1;                                                                                                     \
    for (long i = 0; i < n * n; i++) {                                                                              \
        s = (s * 1103515245 + 12345) % 2147483648L;                                                                 \
        a[i] = (R)((double)(s % 1000) / 1000.0);                                                                    \
        s = (s * 1103515245 + 12345) % 2147483648L;                                                                 \
        b[i] = (R)((double)(s % 1000) / 1000.0);                                                                    \
    }                                                                                                               \
    double best = 0;                                                                                                \
    for (int r = 0; r < reps; r++) {                                                                                \
        double t0 = now();                                                                                          \
        if (!strcmp(mode, "naive")) naive_##SUFFIX(n, a, b, c);                                                     \
        else if (!strcmp(mode, "blocked")) gemm_##SUFFIX(n, n, n, 1, a, n, b, n, 0, c, n);                          \
        else BLAS_##SUFFIX(CblasRowMajor, CblasNoTrans, CblasNoTrans, n, n, n, 1, a, n, b, n, 0, c, n);             \
        double t = now() - t0;                                                                                      \
        if (r == 0 || t < best) best = t;                                                                           \
    }                                                                                                               \
    double sum = 0;                                                                                                 \
    for (long i = 0; i < n * n; i++) sum += c[i];                                                                   \
    printf("%ld %s %.6fs %.2f GFLOPS check %.7g\n", n, mode, best, 2.0 * n * n * n / best * 1e-9, sum);            \
    free(a); free(b); free(c);                                                                                      \
}

#define BLAS_f32 cblas_sgemm
#define BLAS_f64 cblas_dgemm
#define GEMV_f32 cblas_sgemv
#define GEMV_f64 cblas_dgemv
DEFINE_GEMM(float, 4, 12, f32)
DEFINE_GEMM(double, 4, 6, f64)

int main(int argc, char** argv) {
    if (argc < 5) { fprintf(stderr, "usage: gemm f32|f64 n naive|blocked|blas reps [mv|mvt m]\n"); return 2; }
    long n = atol(argv[2]);
    int reps = atoi(argv[4]);
    int mv = argc > 5 && (!strcmp(argv[5], "mv") || !strcmp(argv[5], "mvt"));
    int trans = mv && !strcmp(argv[5], "mvt");
    long m = argc > 6 ? atol(argv[6]) : n;
    if (!strcmp(argv[1], "f64")) { if (mv) mv_f64(n, m, trans, argv[3], reps); else run_f64(n, argv[3], reps); }
    else { if (mv) mv_f32(n, m, trans, argv[3], reps); else run_f32(n, argv[3], reps); }
    return 0;
}
