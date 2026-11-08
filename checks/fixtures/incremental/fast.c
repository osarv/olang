/* B3i's incremental build: C compiled into the program (X20); apply calls back what it is given */
long apply(long (*f)(long), long x) { return f(x) + 1; }
long twice_c(long x) { return 2 * x; }
