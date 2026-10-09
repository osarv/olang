/* fannkuch-redux: the Benchmarks Game's algorithm, as plain C */
#include "common.h"

static int fannkuch(int n, long* checksum_out) {
    int* perm = calloc(n, sizeof(int));
    int* perm1 = calloc(n, sizeof(int));
    int* count = calloc(n, sizeof(int));
    for (int i = 0; i < n; i++) perm1[i] = i;
    int max_flips = 0;
    long checksum = 0, perm_count = 0;
    int r = n;
    for (;;) {
        while (r != 1) { count[r - 1] = r; r--; }
        for (int i = 0; i < n; i++) perm[i] = perm1[i];
        int flips = 0, k;
        while ((k = perm[0]) != 0) {
            for (int i = 0; i < (k + 1) >> 1; i++) {
                int t = perm[i]; perm[i] = perm[k - i]; perm[k - i] = t;
            }
            flips++;
        }
        if (flips > max_flips) max_flips = flips;
        checksum += perm_count % 2 == 0 ? flips : -flips;
        for (;;) {
            if (r == n) { *checksum_out = checksum; free(perm); free(perm1); free(count); return max_flips; }
            int first = perm1[0];
            for (int i = 0; i < r; i++) perm1[i] = perm1[i + 1];
            perm1[r] = first;
            if (--count[r] > 0) break;
            r++;
        }
        perm_count++;
    }
}

int main(int argc, char** argv) {
    int n = (int)arg_or(argc, argv, 1, 7);
    long times = arg_or(argc, argv, 2, 1);   /* the whole run repeated, for a long enough timing */
    long checksum;
    int max_flips = fannkuch(n, &checksum);
    for (long t = 1; t < times; t++) max_flips = fannkuch(n, &checksum);
    printf("%ld\nPfannkuchen(%d) = %d\n", checksum, n, max_flips);
    return 0;
}
