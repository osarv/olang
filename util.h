#ifndef UTIL_H
#define UTIL_H
#include <stdio.h>
#include <stdbool.h>

#define COLOR_RESET "\x1b[0m"
#define COLOR_FG_RED "\x1b[31m"
#define COLOR_FG_GREEN "\x1b[32m"
#define COLOR_FG_YELLOW "\x1b[33m"
#define COLOR_FG_CYAN "\x1b[36m"

#ifdef TEST
#undef TEST
#define TEST(func) __attribute__((constructor)) static void Test##func()
#endif //TEST

#ifndef TEST
#undef TEST
#define TEST(func) __attribute__((unused)) static void Test##func()
#endif //TEST

#define TEST_PASSED {printf(COLOR_FG_GREEN "%s passed\n" COLOR_RESET, __func__); return;}
#define TEST_FAILED {printf(COLOR_FG_RED "%s failed\n" COLOR_RESET, __func__); return;}

struct str {
    char* ptr;
    int len;
};

struct str Str(char* ptr, int len);
struct str StrFromCStr(char* cStr);
char* StrToCStr(struct str s, char* buf);
bool StrCmp(struct str a, struct str b);
void StrPrint(struct str s, FILE* stream);
void ErrorBugFound();
void CheckAllocPtr(void* ptr);
void* MallocOrCrash(size_t size);
void* CallocOrCrash(size_t size);
void* ReallocOrCrash(void* oldPtr, size_t size);
//a formatted string of its own length, on the heap - never truncated
char* StrFmt(const char* fmt, ...) __attribute__((format(printf, 1, 2)));
//s as a NUL-terminated string on the heap
char* StrDupStr(struct str s);

//runs the program argv[0] (looked up on PATH unless it holds a '/'), with argv, NULL-terminated - never through a
//shell, so no argument is ever read as shell syntax, and the argument list has no length limit of ours. quiet sends
//its standard output and error to /dev/null. Returns its exit status, 128 + the signal that ended it, or -1 when it
//could not be started. What this process has buffered is written out first.
int RunProgram(char* const argv[], bool quiet);
//RunProgram, with the program's standard output read into out (at most n - 1 bytes, NUL-terminated) and its standard
//error discarded
int RunProgramCapture(char* const argv[], char* out, size_t n);
//path and everything under it removed, symbolic links never followed - 0, also when path does not exist, or -1
int RemoveTree(const char* path);
//path made a directory, with every missing parent - 0 when it is one afterwards, or -1
int MakeDirs(const char* path);

//members may be read but not manipulated outside the functions
struct list {
    int elemSize;
    int len;
    int cap;
    void* ptr;
};

struct list ListInit(int elemSize);
void ListDestroy(struct list l);
void ListAdd(struct list* l, void* elem);
void ListInsertIdx(struct list* l, int idx, void* elem);
void ListRemoveIdx(struct list* l, int idx);
void ListAddList(struct list* head, struct list tail);
void ListRetract(struct list* l, int newLen);
void* ListGetIdx(struct list* l, int idx);
void* ListGetCmp(struct list* l, void* cmpVal, bool(*cmpFunc)(void* cmpVal, void* listElem)); //returns NULL if l is NULL

//T4: a small IEEE-style float (1 sign bit, expBits, mantBits) - F16 is (5, 10), BF16 (8, 7). MinifloatFrom rounds to
//nearest, ties to even, as the hardware does; MinifloatTo is exact. Shared by codegen's constants and the evaluator.
//E33: a NaN keeps its sign and payload both ways, the payload held at the top of the double's - how LLVM writes a
//narrower NaN as a double, and where widening puts it - so a NaN made from bits survives the trip exactly
unsigned MinifloatFrom(double x, int expBits, int mantBits);
double MinifloatTo(unsigned bits, int expBits, int mantBits);

//T4: the four float types, numbered as the runtime's "@__olang_fmt_float" numbers them (E11a)
enum floatKind { FLOAT_KIND_F64, FLOAT_KIND_F32, FLOAT_KIND_F16, FLOAT_KIND_BF16 };
//T4: v rounded to a float type, as a conversion to it rounds - nearest, ties to even; beyond the type's largest
//finite value it is an infinity
double FloatRoundTo(double v, enum floatKind k);
//T4: an integer - negative when neg, of magnitude mag - rounded once to float type k's significant bits, as a conversion
//rounds it; FloatRoundTo then gives the type's value (an infinity where it overflows)
double IntRoundTo(bool neg, unsigned long long mag, enum floatKind k);
//E11a: v, a value of float type k, as the shortest decimal text reading back as it in that type - snprintf's
//contract (writes what fits in cap, returns the length the text needs). The runtime's "@__olang_fmt_float" is the
//same algorithm written in IR, so the two give identical text.
int FloatShortest(char* out, size_t cap, double v, enum floatKind k);
//E11a: Schubfach's digits for c * 2^q (p significant bits, qmin the subnormals' exponent): the shortest decimal reading
//back, the closest of those - and the powers of ten it is computed with, which codegen writes into the runtime
bool FloatSchubfach(unsigned long long c, int q, int p, int qmin, unsigned long long* fOut, int* eOut);
extern const unsigned long long FloatPow10[1392];

#endif //UTIL_H
