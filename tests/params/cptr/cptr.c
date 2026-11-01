/* C functions for tests/params/cpointers.olang: a pointer C writes, one it only reads, and one it reads around a call
   back into the program (X22, the rework's round 2) */
void cp_fill(unsigned char *p, long n) {
    for (long i = 0; i < n; i++) p[i] = (unsigned char)(i + 7);
}

long cp_sum(const unsigned char *p, long n) {
    long s = 0;
    for (long i = 0; i < n; i++) s += p[i];
    return s;
}

typedef void (*cp_hook)(void);

long cp_peek(const unsigned char *p, cp_hook f) {
    long a = p[0];
    f();
    return a * 100 + p[0];
}
