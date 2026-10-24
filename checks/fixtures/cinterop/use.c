/* the C program of the cinterop scenario (checks/checks.olang), calling the library mylib.olang through its header */
#include <stdio.h>
#include <string.h>
#include <pthread.h>
#include "build/mylib.h"

/* a thread C makes, calling into the library: olang sets itself up there on the first entry (X12) */
static void *worker(void *p) {
    char buf[32];
    int64_t total = 0;
    for (int i = 0; i < 1000; i++) total += greet("t", 1, buf, sizeof buf) + add(i, 1);
    *(int64_t *)p = total;
    return 0;
}
int main(void) {
    printf("add %d\n", add(2, 3));
    int64_t xs[4] = {1, 2, 3, 4};
    printf("sum %ld\n", (long)sum(xs, 4));
    char buf[64];
    int64_t n = greet("world", 5, buf, sizeof buf);
    printf("greet %ld %.*s\n", (long)n, (int)n, buf);
    n = greet("world", 5, buf, 3);
    printf("greet short %ld %.*s\n", (long)n, 3, buf);
    int64_t r = 0;
    int32_t rc = parse("42", 2, &r);
    printf("parse %d %ld\n", rc, (long)r);
    rc = parse("x", 1, &r);
    printf("parse bad %d invalid=%d\n", rc, rc == MYLIB_PARSEERROR_INVALID);
    rc = check(-1, &r); printf("check %d neg=%d\n", rc, rc == MYLIB_BAD_NEGATIVE);
    rc = check(7, &r); printf("check %d %ld\n", rc, (long)r);
    Point p = {3, 4};
    printf("norm2 %g\n", norm2(p));
    scale(&p, 2); printf("scale %g %g\n", p.x, p.y);
    Point m = mid(p, (Point){0, 0}); printf("mid %g %g\n", m.x, m.y);
    printf("pid %d\n", pidKnown());
    int64_t sq[10]; int64_t len = 0;
    rc = squares(5, sq, 10, &len); printf("squares %d %ld %ld\n", rc, (long)len, (long)sq[4]);
    pthread_t t[4];
    int64_t totals[4];
    for (int i = 0; i < 4; i++) pthread_create(&t[i], 0, worker, &totals[i]);
    for (int i = 0; i < 4; i++) pthread_join(t[i], 0);
    printf("threads %ld %ld\n", (long)totals[0], (long)totals[3]);
    printf("seen %ld\n", (long)seen());
    return 0;
}
