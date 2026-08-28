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

#endif //UTIL_H
