/* mandelbrot: the Benchmarks Game's output format, as plain scalar C */
#include "common.h"
#include <unistd.h>

int main(int argc, char** argv) {
    long n = arg_or(argc, argv, 1, 200);
    long row_bytes = (n + 7) / 8;
    unsigned char* bits = calloc(row_bytes * n, 1);
    for (long y = 0; y < n; y++) {
        double ci = 2.0 * (double)y / (double)n - 1.0;
        for (long x = 0; x < n; x++) {
            double cr = 2.0 * (double)x / (double)n - 1.5;
            double zr = 0, zi = 0, tr = 0, ti = 0;
            for (int k = 0; k < 50 && tr + ti <= 4.0; k++) {
                zi = 2.0 * zr * zi + ci;
                zr = tr - ti + cr;
                tr = zr * zr;
                ti = zi * zi;
            }
            if (tr + ti <= 4.0) bits[y * row_bytes + x / 8] |= 128 >> (x % 8);
        }
    }
    printf("P4\n%ld %ld\n", n, n);
    fflush(stdout);
    long off = 0, total = row_bytes * n;
    while (off < total) {
        long w = write(1, bits + off, total - off);
        if (w <= 0) return 1;
        off += w;
    }
    free(bits);
    return 0;
}
