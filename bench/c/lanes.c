/* lanes: the computations of lanes.olang written as C loops - "MODE FORM N PASSES", FORM ignored (lanes.olang's two
   forms are one loop here). */
#include "common.h"

static double* values(long n, int64_t seed) {
    double* a = malloc(n * sizeof(double));
    int64_t s = seed;
    for (long i = 0; i < n; i++) {
        s = (int64_t)((uint64_t)s * 6364136223846793005ULL + 1442695040888963407ULL);
        a[i] = (double)(s >> 33) / 2147483648.0;
    }
    return a;
}

int main(int argc, char** argv) {
    if (argc < 5) return 1;
    const char* mode = argv[1];
    long n = arg_or(argc, argv, 3, 0), passes = arg_or(argc, argv, 4, 0);
    double* a = values(n, 1);
    double* b = values(n, 2);
    if (strcmp(mode, "dot") == 0) {
        double t = 0;
        for (long p = 0; p < passes; p++) {
            double s = 0;
            for (long i = 0; i < n; i++) s += a[i] * b[i];
            t += s;
        }
        print_f64(t); putchar('\n');
    } else if (strcmp(mode, "isum") == 0) {
        int32_t* x = malloc(n * 4);
        int32_t* y = malloc(n * 4);
        for (long i = 0; i < n; i++) { x[i] = (int32_t)(a[i] * 1000.0); y[i] = (int32_t)(b[i] * 1000.0); }
        int64_t t = 0;
        for (long p = 0; p < passes; p++) {
            uint32_t s = 0;
            for (long i = 0; i < n; i++) s += (uint32_t)x[i] * (uint32_t)y[i];
            t += (int32_t)s;
        }
        printf("%lld\n", (long long)t);
    } else if (strcmp(mode, "axpy") == 0) {
        float* x = malloc(n * 4);
        float* y = malloc(n * 4);
        for (long i = 0; i < n; i++) { x[i] = (float)a[i]; y[i] = (float)b[i]; }
        float k = 0.5f;
        for (long p = 0; p < passes; p++)
            for (long i = 0; i < n; i++) y[i] += x[i] * k;
        double s = 0;
        for (long i = 0; i < n; i++) s += y[i];
        print_f64(s); putchar('\n');
    } else if (strcmp(mode, "saxpy") == 0) {
        float* x = malloc(n * 4);
        float* y = malloc(n * 4);
        for (long i = 0; i < n; i++) { x[i] = (float)a[i]; y[i] = (float)b[i]; }
        float k = 0.5f;
        double t = 0;
        for (long p = 0; p < passes; p++) {
            float* z = malloc(n * 4);
            for (long i = 0; i < n; i++) z[i] = x[i] * k + y[i];
            t += z[p % n];
            free(z);
        }
        print_f64(t); putchar('\n');
    } else if (strcmp(mode, "select") == 0) {
        double t = 0;
        for (long p = 0; p < passes; p++) {
            double* z = malloc(n * 8);
            for (long i = 0; i < n; i++) z[i] = a[i] < b[i] ? a[i] : b[i];
            t += z[p % n];
            free(z);
        }
        print_f64(t); putchar('\n');
    } else {
        return 2;
    }
    return 0;
}
