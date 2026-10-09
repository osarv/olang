#define _GNU_SOURCE
#include <stdlib.h>
#include <stdio.h>
#include <string.h>
#include <math.h>
#include <stdarg.h>
#include <errno.h>
#include <fcntl.h>
#include <unistd.h>
#include <spawn.h>
#include <ftw.h>
#include <sys/stat.h>
#include <sys/wait.h>
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

char* StrFmt(const char* fmt, ...) {
    va_list ap;
    va_start(ap, fmt);
    int n = vsnprintf(NULL, 0, fmt, ap);
    va_end(ap);
    if (n < 0) ErrorBugFound();
    char* out = MallocOrCrash((size_t)n + 1);
    va_start(ap, fmt);
    vsnprintf(out, (size_t)n + 1, fmt, ap);
    va_end(ap);
    return out;
}

char* StrDupStr(struct str s) {
    char* out = MallocOrCrash((size_t)s.len + 1);
    memcpy(out, s.ptr, (size_t)s.len);
    out[s.len] = '\0';
    return out;
}

// ---- running another program ----

extern char** environ;

//the spawn and the wait RunProgram and RunProgramCapture share. With a pipe (pipeFds not NULL), the child's standard
//output is its write end, which this process closes once the child holds it, and what the child writes is read into
//buf (n - 1 bytes kept, NUL-terminated, the rest drained) while it runs
static int spawnAndWait(char* const argv[], posix_spawn_file_actions_t* fa, int* pipeFds, char* buf, size_t n) {
    fflush(NULL); //what this process has written comes before what the child writes
    pid_t pid;
    int rc = posix_spawnp(&pid, argv[0], fa, NULL, argv, environ);
    posix_spawn_file_actions_destroy(fa);
    if (pipeFds) {
        close(pipeFds[1]);
        size_t got = 0;
        char drop[512];
        while (rc == 0) {
            ssize_t r = got + 1 < n ? read(pipeFds[0], buf + got, n - 1 - got) : read(pipeFds[0], drop, sizeof(drop));
            if (r < 0 && errno == EINTR) continue;
            if (r <= 0) break;
            if (got + 1 < n) got += (size_t)r;
        }
        close(pipeFds[0]);
        if (n) buf[got] = '\0';
    }
    if (rc != 0) return -1;
    int st;
    while (waitpid(pid, &st, 0) < 0) if (errno != EINTR) return -1;
    if (WIFEXITED(st)) return WEXITSTATUS(st);
    if (WIFSIGNALED(st)) return 128 + WTERMSIG(st);
    return -1;
}

int RunProgram(char* const argv[], bool quiet) {
    posix_spawn_file_actions_t fa;
    posix_spawn_file_actions_init(&fa);
    if (quiet) {
        posix_spawn_file_actions_addopen(&fa, 1, "/dev/null", O_WRONLY, 0);
        posix_spawn_file_actions_addopen(&fa, 2, "/dev/null", O_WRONLY, 0);
    }
    return spawnAndWait(argv, &fa, NULL, NULL, 0);
}

int RunProgramCapture(char* const argv[], char* out, size_t n) {
    int p[2];
    if (n) out[0] = '\0';
    if (pipe(p) != 0) return -1;
    fcntl(p[0], F_SETFD, FD_CLOEXEC);
    posix_spawn_file_actions_t fa;
    posix_spawn_file_actions_init(&fa);
    posix_spawn_file_actions_adddup2(&fa, p[1], 1);
    posix_spawn_file_actions_addclose(&fa, p[1]);
    posix_spawn_file_actions_addopen(&fa, 2, "/dev/null", O_WRONLY, 0);
    return spawnAndWait(argv, &fa, p, out, n);
}

static int removeOne(const char* path, const struct stat* st, int flag, struct FTW* ftw) {
    (void)st; (void)flag; (void)ftw;
    return remove(path) != 0 && errno != ENOENT ? -1 : 0;
}

int RemoveTree(const char* path) {
    struct stat st;
    if (lstat(path, &st) != 0) return errno == ENOENT ? 0 : -1;
    return nftw(path, removeOne, 64, FTW_DEPTH | FTW_PHYS);
}

int MakeDirs(const char* path) {
    char* p = StrFmt("%s", path);
    for (char* c = p + 1; ; c++) {
        if (*c != '/' && *c != '\0') continue;
        char was = *c;
        *c = '\0';
        if (mkdir(p, 0755) != 0 && errno != EEXIST) { free(p); return -1; }
        *c = was;
        if (!was) break;
    }
    free(p);
    struct stat st;
    return stat(path, &st) == 0 && S_ISDIR(st.st_mode) ? 0 : -1;
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
    if (a == 0) return sign; //zero has no exponent for frexp to give - read as a normal number, it became -infinity
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

double FloatRoundTo(double v, enum floatKind k) {
    switch (k) {
        case FLOAT_KIND_F32: return (double)(float)v;
        case FLOAT_KIND_F16: return MinifloatTo(MinifloatFrom(v, 5, 10), 5, 10);
        case FLOAT_KIND_BF16: return MinifloatTo(MinifloatFrom(v, 8, 7), 8, 7);
        default: return v;
    }
}

//the fewest significant digits p (1 to 17) for which v rounded to p digits reads back - parsed, then rounded to the
//value's own type - as v itself; then laid out as "%.17g" lays a number out: positional where the decimal exponent x
//is in [-4, 17), with the digits padded by zeros or split by the point, and "d.ddde+XX" otherwise. An infinity or a
//NaN is written as "%.17g" writes it.
int FloatShortest(char* out, size_t cap, double v, enum floatKind k) {
    if (!isfinite(v)) return snprintf(out, cap, "%.17g", v);
    char e[40];
    int p = 1;
    for (; p < 17; p++) {
        snprintf(e, sizeof(e), "%.*e", p - 1, v);
        if (FloatRoundTo(strtod(e, NULL), k) == v) break;
    }
    if (p == 17) snprintf(e, sizeof(e), "%.*e", p - 1, v);
    int neg = e[0] == '-';
    char* s = e + neg;            //"d" or "d.ddd", then "e+XX"
    char* rest = s + 2;           //the digits after the first, when p > 1
    long x = strtol(s + (p == 1 ? 1 : p + 1) + 1, NULL, 10);
    if (x < -4 || x >= 17) return snprintf(out, cap, "%s", e);
    static const char zeros[] = "0000000000000000000";
    if (x >= p - 1) return snprintf(out, cap, "%.*s%c%.*s%.*s", neg, "-", s[0], p - 1, rest, (int)x + 1 - p, zeros);
    if (x >= 0) return snprintf(out, cap, "%.*s%c%.*s.%.*s", neg, "-", s[0], (int)x, rest, p - 1 - (int)x, rest + x);
    return snprintf(out, cap, "%.*s0.%.*s%c%.*s", neg, "-", -(int)x - 1, zeros, s[0], p - 1, rest);
}
