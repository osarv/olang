/* parallel: the longest Collatz chain below n, the starting values split among pthreads (every tasks-th one to each) */
#include "common.h"
#include <pthread.h>

static long steps(long x) {
    long s = 0;
    while (x != 1) {
        x = x % 2 == 0 ? x / 2 : 3 * x + 1;
        s++;
    }
    return s;
}

typedef struct { long first, stride, n, best, best_len; } Work;

static void* longest(void* arg) {
    Work* w = arg;
    long best = 0, best_len = 0;
    for (long x = w->first; x < w->n; x += w->stride) {
        long len = steps(x);
        if (len > best_len) { best = x; best_len = len; }
    }
    w->best = best;
    w->best_len = best_len;
    return NULL;
}

int main(int argc, char** argv) {
    long n = arg_or(argc, argv, 1, 1000), tasks = arg_or(argc, argv, 2, 4);
    Work* work = calloc(tasks, sizeof(Work));
    pthread_t* threads = calloc(tasks, sizeof(pthread_t));
    for (long t = 0; t < tasks; t++) {
        work[t] = (Work){ t + 1, tasks, n, 0, 0 };
        pthread_create(&threads[t], NULL, longest, &work[t]);
    }
    for (long t = 0; t < tasks; t++) pthread_join(threads[t], NULL);
    long answer = 0, answer_len = 0;
    for (long t = 0; t < tasks; t++)
        if (work[t].best_len > answer_len || (work[t].best_len == answer_len && work[t].best < answer)) {
            answer = work[t].best;
            answer_len = work[t].best_len;
        }
    printf("%ld %ld\n", answer, answer_len);
    free(work); free(threads);
    return 0;
}
