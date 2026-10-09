/* What the C versions share: reading the size argument, and printing an F64 exactly as olang's "$" does (the fewest
   digits that read back as the same double, laid out as %.17g lays it out - util.c's FloatShortest), so the two
   versions' outputs can be compared byte for byte. */
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <stdint.h>
#include <math.h>

static long long arg_or(int argc, char** argv, int i, long long dflt) {
    return argc > i ? strtoll(argv[i], NULL, 10) : dflt;
}

static void fmt_float(char* out, size_t cap, double v, int single) {
    if (!isfinite(v)) { snprintf(out, cap, "%.17g", v); return; }
    char e[40];
    int p = 1;
    for (; p < 17; p++) {
        snprintf(e, sizeof(e), "%.*e", p - 1, v);
        double back = strtod(e, NULL);
        if ((single ? (double)(float)back : back) == v) break;
    }
    if (p == 17) snprintf(e, sizeof(e), "%.*e", p - 1, v);
    int neg = e[0] == '-';
    char* s = e + neg;
    char* rest = s + 2;
    long x = strtol(s + (p == 1 ? 1 : p + 1) + 1, NULL, 10);
    if (x < -4 || x >= 17) { snprintf(out, cap, "%s", e); return; }
    static const char zeros[] = "0000000000000000000";
    if (x >= p - 1) { snprintf(out, cap, "%.*s%c%.*s%.*s", neg, "-", s[0], p - 1, rest, (int)x + 1 - p, zeros); return; }
    if (x >= 0) { snprintf(out, cap, "%.*s%c%.*s.%.*s", neg, "-", s[0], (int)x, rest, p - 1 - (int)x, rest + x); return; }
    snprintf(out, cap, "%.*s0.%.*s%c%.*s", neg, "-", -(int)x - 1, zeros, s[0], p - 1, rest);
}

static void print_f64(double v) {
    char b[64];
    fmt_float(b, sizeof(b), v, 0);
    fputs(b, stdout);
}

static void print_f32(float v) {
    char b[64];
    fmt_float(b, sizeof(b), v, 1);
    fputs(b, stdout);
}
