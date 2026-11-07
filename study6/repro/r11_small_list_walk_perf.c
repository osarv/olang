#include <stdio.h>
#include <stdint.h>
#include <time.h>
#include <stdlib.h>
typedef struct { int64_t n; int64_t *items; } list;
static int64_t now(void){ struct timespec t; clock_gettime(CLOCK_MONOTONIC,&t); return t.tv_sec*1000000000LL+t.tv_nsec; }
int main(int argc, char **argv) {
    long reps = 2000000;
    list lists[64];
    for (int i = 0; i < 64; i++) { lists[i].n = 3; lists[i].items = malloc(8*8); for (int k = 0; k < 3; k++) lists[i].items[k] = i*10+k; }
    int64_t t0 = now(), total = 0;
    for (long r = 0; r < reps; r++) { list *l = &lists[r & 63]; for (int64_t i = 0; i < l->n; i++) total += l->items[i]; }
    int64_t t1 = now();
    printf("%ld C %ld ms\n", (long)total, (long)((t1-t0)/1000000));
}
