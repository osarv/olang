/* matmul: C = A B for square float matrices, row-major, i-k-j order, as plain C */
#include "common.h"

static float* matrix(long n, long seed) {
    float* m = malloc(n * n * sizeof(float));
    long s = seed;
    for (long i = 0; i < n * n; i++) {
        s = (s * 1103515245 + 12345) % 2147483648L;
        m[i] = (float)(s % 1000) / 1000.0f;
    }
    return m;
}

static void multiply(const float* a, const float* b, float* c, long n) {
    for (long i = 0; i < n; i++) {
        float* row = c + i * n;
        for (long k = 0; k < n; k++) {
            float aik = a[i * n + k];
            const float* bk = b + k * n;
            for (long j = 0; j < n; j++) row[j] += aik * bk[j];
        }
    }
}

int main(int argc, char** argv) {
    long n = arg_or(argc, argv, 1, 64);
    float* a = matrix(n, 1);
    float* b = matrix(n, 2);
    float* c = calloc(n * n, sizeof(float));
    multiply(a, b, c, n);
    double sum = 0.0;
    for (long i = 0; i < n * n; i++) sum += c[i];
    print_f64(sum); putchar(' '); print_f32(c[0]); putchar(' '); print_f32(c[n * n - 1]); putchar('\n');
    free(a); free(b); free(c);
    return 0;
}
