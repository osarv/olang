#include <stdio.h>
#include <stdint.h>
#include "build/pl.h"
int main(void) {
    int64_t out = 0; int64_t sum = 0; int32_t codes = 0;
    for (int64_t k = 0; k < 2000000; k++) {
        int32_t c = Probe(k, &out);
        if (c) codes++; else sum += out;
        sum += Catches(k);
    }
    printf("%lld %d\n", (long long)sum, codes);
    return 0;
}
