/* gen: the walks of gen.olang written as C loops - "MODE FORM N PASSES", FORM ignored (gen.olang's three forms are
   one loop here). */
#include "common.h"

int main(int argc, char** argv) {
    if (argc < 5) return 1;
    const char* mode = argv[1];
    long long n = arg_or(argc, argv, 3, 0), passes = arg_or(argc, argv, 4, 0);
    long long t = 0;
    for (long long p = 0; p < passes; p++) {
        if (strcmp(mode, "range") == 0) {
            for (long long x = 0; x < n; x++) t += x;
        } else {
            for (long long x = 0; x < n; x++) if (x % 3 == 0) t += x;
        }
        t += p;
    }
    printf("%lld\n", t);
    return 0;
}
