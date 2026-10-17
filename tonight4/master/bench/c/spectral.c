/* spectral-norm: the Benchmarks Game's algorithm, as plain C */
#include "common.h"

static double a(long i, long j) { return 1.0 / (double)((i + j) * (i + j + 1) / 2 + i + 1); }

static void times_a(const double* v, double* out, long n) {
    for (long i = 0; i < n; i++) {
        double s = 0.0;
        for (long j = 0; j < n; j++) s += a(i, j) * v[j];
        out[i] = s;
    }
}

static void times_at(const double* v, double* out, long n) {
    for (long i = 0; i < n; i++) {
        double s = 0.0;
        for (long j = 0; j < n; j++) s += a(j, i) * v[j];
        out[i] = s;
    }
}

static void times_ata(const double* v, double* out, double* tmp, long n) {
    times_a(v, tmp, n);
    times_at(tmp, out, n);
}

int main(int argc, char** argv) {
    long n = arg_or(argc, argv, 1, 100);
    double* u = malloc(n * sizeof(double));
    double* v = calloc(n, sizeof(double));
    double* tmp = calloc(n, sizeof(double));
    for (long i = 0; i < n; i++) u[i] = 1.0;
    for (int i = 0; i < 10; i++) {
        times_ata(u, v, tmp, n);
        times_ata(v, u, tmp, n);
    }
    double vBv = 0, vv = 0;
    for (long i = 0; i < n; i++) {
        vBv += u[i] * v[i];
        vv += v[i] * v[i];
    }
    print_f64(sqrt(vBv / vv)); putchar('\n');
    free(u); free(v); free(tmp);
    return 0;
}
