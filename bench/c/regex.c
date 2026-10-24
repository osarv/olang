/* regex: matches of a pattern counted in n MB of generated words - glibc's POSIX regexec (extended syntax), as a C
   program without a regex library of its own would count them */
#include "common.h"
#include <regex.h>

/* REG_STARTEND bounds each search, so no call measures the rest of the text again */
static long count(regex_t* re, const char* text, long len) {
    long n = 0, at = 0;
    regmatch_t m;
    for (;;) {
        m.rm_so = at;
        m.rm_eo = len;
        if (regexec(re, text, 1, &m, REG_STARTEND | (at > 0 ? REG_NOTBOL : 0)) != 0) break;
        n++;
        at = m.rm_eo > m.rm_so ? m.rm_eo : m.rm_eo + 1;
        if (at >= len) break;
    }
    return n;
}

int main(int argc, char** argv) {
    long mb = arg_or(argc, argv, 1, 4);
    const char* words[] = {"sing", "sang", "running", "error", "code", "7", "42", "thing", "bring", "x"};
    long cap = mb * 1048576 + 64, len = 0;
    char* text = malloc(cap);
    uint32_t x = 1;
    while (len < mb * 1048576) {
        x = x * 1664525 + 1013904223;
        const char* w = words[(x >> 16) % 10];
        size_t l = strlen(w);
        memcpy(text + len, w, l);
        len += l;
        text[len++] = (x >> 8) % 7 != 0 ? ' ' : '\n';
    }
    text[len] = 0;
    regex_t ing, num;
    regcomp(&ing, "[a-z]+ing", REG_EXTENDED);
    regcomp(&num, "error [0-9]+", REG_EXTENDED);
    printf("%ld %ld\n", count(&ing, text, len), count(&num, text, len));
    return 0;
}
