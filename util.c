#include <stdlib.h>
#include <stdio.h>
#include <string.h>
#include <math.h>
#include "util.h"
#include "token.h"

struct str Str(char* ptr, int len) {
    struct str s;
    s.ptr = ptr;
    s.len = len;
    return s;
}

struct str StrFromCStr(char* cStr) {
    struct str s;
    s.ptr = cStr;
    s.len = strlen(cStr);
    return s;
}

char* StrToCStr(struct str s, char* buf) {
    memcpy(buf, s.ptr, s.len);
    buf[s.len] = '\0';
    return buf;
}

void StrPrint(struct str s, FILE* stream) {
    fwrite(s.ptr, 1, s.len, stream);
}

bool StrCmp(struct str a, struct str b) {
    if (a.len != b.len) return false;
    return !strncmp(a.ptr, b.ptr, a.len);
}

void CheckAllocPtr(void* ptr) {
    if (!ptr) {
        fputs(COLOR_FG_RED "ERROR: " COLOR_RESET "memory allocation failed\n", stderr);
        exit(EXIT_FAILURE);
    }
}

void* MallocOrCrash(size_t size) {
    void* ptr = malloc(size);
    CheckAllocPtr(ptr);
    return ptr;
}

void* CallocOrCrash(size_t size) {
    void* ptr = calloc(size, 1);
    CheckAllocPtr(ptr);
    return ptr;
}

void* ReallocOrCrash(void* oldPtr, size_t size) {
    void* ptr = realloc(oldPtr, size);
    CheckAllocPtr(ptr);
    return ptr;
}

void ErrorBugFound() {
    fputs(COLOR_FG_RED "ERROR: bug found\n" COLOR_RESET, stderr);
    exit(EXIT_FAILURE);
}

struct list ListInit(int elemSize) {
    struct list l = (struct list){0};
    l.elemSize = elemSize;
    return l;
}

void ListDestroy(struct list l) {
    if (l.ptr) free(l.ptr);
}

#define LIST_ALLOC_MIN_CAP 16
void ListAdd(struct list* l, void* elem) {
    if (l->elemSize == 0) ErrorBugFound();
    if (l->len >= l->cap) {
        if (l->ptr && l->cap == 0) ErrorBugFound(); //tried to add to slice
        l->cap = l->cap ? l->cap * 2 : LIST_ALLOC_MIN_CAP; //geometric growth: amortized O(1) per add
        l->ptr = ReallocOrCrash(l->ptr, l->elemSize * l->cap);
    }
    memcpy((char*)l->ptr + l->len * l->elemSize, elem, l->elemSize);
    l->len++;
}

//inserts elem at idx, shifting everything from idx onward one slot up. Grows via ListAdd first (so the
//capacity/geometric-growth logic lives in exactly one place), then memmoves the tail into position.
void ListInsertIdx(struct list* l, int idx, void* elem) {
    if (idx < 0 || idx > l->len) ErrorBugFound();
    ListAdd(l, elem); //grows if needed; the value lands at the end, moved into place below
    if (idx == l->len -1) return;
    char* base = (char*)l->ptr;
    memmove(base + (idx + 1) * l->elemSize, base + idx * l->elemSize, (size_t)(l->len -1 - idx) * l->elemSize);
    memcpy(base + idx * l->elemSize, elem, l->elemSize);
}

void ListRemoveIdx(struct list* l, int idx) {
    if (idx < 0 || idx >= l->len) ErrorBugFound();
    char* base = (char*)l->ptr;
    memmove(base + idx * l->elemSize, base + (idx + 1) * l->elemSize, (size_t)(l->len -1 - idx) * l->elemSize);
    l->len--;
}

void ListAddList(struct list* head, struct list tail) {
    if (head->elemSize != tail.elemSize) ErrorBugFound();
    for (int i = 0; i < tail.len; i++) {
        ListAdd(head, (char*)tail.ptr + i * tail.elemSize);
    }
}

void ListRetract(struct list* l, int newLen) {
    if (newLen > l->len) ErrorBugFound();
    l->len = newLen;
}

void* ListGetIdx(struct list* l, int idx) {
    if (idx >= l->len) ErrorBugFound();
    return (char*)l->ptr + idx * l->elemSize;
}

void* ListGetCmp(struct list* l, void* cmpVal, bool(*cmpFunc)(void* cmpVal, void* listElem)) { //returns NULL if l is NULL
    if (!l) return NULL;
    for (int i = 0; i < l->len; i++) {
        void* listElem = (char*)l->ptr + l->elemSize * i;
        if (cmpFunc(cmpVal, listElem)) return listElem;
    }
    return NULL;
}

unsigned MinifloatFrom(double x, int expBits, int mantBits) {
    unsigned sign = signbit(x) ? 1u << (expBits + mantBits) : 0;
    unsigned expMax = (1u << expBits) - 1;
    int bias = (int)(expMax >> 1);
    if (isnan(x)) { //E33: its sign, and the top of its payload - quiet when that leaves no payload, as narrowing does
        unsigned long long d;
        memcpy(&d, &x, sizeof(d));
        unsigned pay = (unsigned)((d & 0xFFFFFFFFFFFFFULL) >> (52 - mantBits));
        return sign | (expMax << mantBits) | (pay ? pay : 1u << (mantBits - 1));
    }
    double a = fabs(x);
    if (isinf(a)) return sign | (expMax << mantBits);
    int e;
    frexp(a, &e); //a = f * 2^e, f in [0.5, 1)
    int unb = e - 1;
    if (unb < 1 - bias) { //subnormal: units of 2^(1 - bias - mantBits)
        double m = rint(ldexp(a, mantBits + bias - 1));
        return sign | (unsigned)m; //m reaching 2^mantBits is exactly the smallest normal
    }
    double m = rint((ldexp(a, -unb) - 1.0) * (double)(1u << mantBits));
    if (m >= (double)(1u << mantBits)) { m = 0; unb++; }
    if (unb + bias >= (int)expMax) return sign | (expMax << mantBits); //overflows to infinity
    return sign | ((unsigned)(unb + bias) << mantBits) | (unsigned)m;
}

double MinifloatTo(unsigned bits, int expBits, int mantBits) {
    unsigned expMax = (1u << expBits) - 1;
    int bias = (int)(expMax >> 1);
    bool neg = (bits >> (expBits + mantBits)) & 1;
    unsigned ex = (bits >> mantBits) & expMax;
    unsigned m = bits & ((1u << mantBits) - 1);
    double v;
    if (ex == expMax && m) { //E33: a NaN, its sign and payload kept - the payload at the top of the double's
        unsigned long long d = (neg ? 1ULL << 63 : 0) | 0x7FF0000000000000ULL | ((unsigned long long)m << (52 - mantBits));
        memcpy(&v, &d, sizeof(v));
        return v;
    }
    if (ex == expMax) v = INFINITY;
    else if (ex == 0) v = ldexp((double)m, 1 - bias - mantBits);
    else v = ldexp(1.0 + (double)m / (double)(1u << mantBits), (int)ex - bias);
    return neg ? -v : v;
}
