/* text: n numbers rendered with snprintf into a growable buffer, space-separated; the text walked back word by word
   with strtoll */
#include "common.h"

typedef struct { char* data; long len, cap; } Buf;

static void reserve(Buf* b, long more) {
    if (b->len + more <= b->cap) return;
    while (b->len + more > b->cap) b->cap = b->cap ? b->cap * 2 : 64;
    b->data = realloc(b->data, b->cap);
}

int main(int argc, char** argv) {
    long n = arg_or(argc, argv, 1, 1000);
    Buf b = {0};
    for (long i = 0; i < n; i++) {
        reserve(&b, 24);
        b.len += snprintf(b.data + b.len, 24, "%ld", i * 7919 % 1000003 - 500000);
        b.data[b.len++] = ' ';
    }
    reserve(&b, 1);
    b.data[b.len] = 0;
    long total = 0;
    char* p = b.data;
    char* end = b.data + b.len;
    while (p < end) {
        while (p < end && *p == ' ') p++;
        if (p == end) break;
        total += strtoll(p, &p, 10);
    }
    printf("%ld %ld\n", b.len, total);
    free(b.data);
    return 0;
}
