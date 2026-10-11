/* the runtime, as the compiler reads it (compiler/DESIGN.md section 1.10): the arena allocator and its chunk pool (O2,
 * O8b), the worker cache behind spawn and join (P1e), the checks' failure paths and the test unwinding (S18, P1d), text
 * rendering (E11a, E11c), what std reaches through "extern fn" (X6, S1, S2), the scope sanitizer (B2f) and the dynamic
 * call (S3) are LLVM IR written in std/runtime/ (*.ll), beside the standard library, not in this compiler. This file reads
 * those files, fills them in for a build - the target's C-library facts, a -s build's lines, as each file's header
 * says - and derives what a module's own IR declares in their place. main.c compiles the filled-in text once per build
 * configuration into an object of its own, linked once into each program (B3), where every object used to carry all of
 * it as linkonce_odr. */
#define _GNU_SOURCE
#include <stdio.h>
#include <stdlib.h>
#include <stdbool.h>
#include <string.h>
#include <unistd.h>
#include <limits.h>
#include <stddef.h>
#include <dirent.h>
#include <errno.h>
#include <spawn.h>
#include <setjmp.h>
#include <signal.h>
#include <pthread.h>
#include <dlfcn.h>
#include <ffi.h>
#include <sys/stat.h>
#include <sys/mman.h>
#include <ucontext.h>
#include "util.h"
#include "errmsg.h"
#include "runtime.h"

/* §11 X6, B12a: what the runtime's IR says about the C library's structures, on each architecture it builds for - Linux
 * with the GNU C library, 64-bit - as @@NAME@@ in std/runtime/ (*.ll): struct stat's size and where st_mode, st_size and
 * st_mtim's two parts are, where struct dirent's d_name is, the size of a posix_spawn_file_actions_t, a pthread_attr_t's
 * and a jmp_buf's sizes (S1), a struct sigaction's size and where its sa_flags are (S2), and libffi's default calling
 * convention, whose number is the architecture's (S3). The kernel's constants beside them - errno values, signal
 * numbers, the S_IF* kinds, the flags - are one set for every architecture here, written in the IR as numbers.
 * Written down rather than taken from this compiler's own headers, which describe only the machine it runs on - and
 * checked against them for that machine, below, so the row a build for this machine uses is the C library's own; and
 * the numbers the IR writes are checked the same way. */
static const char* rtArchs[] = { "x86_64", "aarch64" };
static const struct { const char* name; long long value[2]; } rtFacts[] = {
    { "STAT_BYTES", { 144, 128 } },
    { "STAT_MODE", { 24, 16 } },
    { "STAT_SIZE", { 48, 48 } },
    { "STAT_MTIM_SEC", { 88, 88 } },
    { "STAT_MTIM_NSEC", { 96, 96 } },
    { "DIRENT_NAME", { 19, 19 } },
    { "SPAWN_FILE_ACTIONS_BYTES", { 80, 80 } },
    { "PTHREAD_ATTR_BYTES", { 56, 64 } },
    { "JMP_BUF_BYTES", { 200, 312 } },
    { "SIGACTION_BYTES", { 152, 152 } },
    { "SIGACTION_FLAGS", { 136, 136 } },
    { "FFI_DEFAULT_ABI", { 2, 1 } },
};
#if defined(__x86_64__) && defined(__linux__) && defined(__GLIBC__)
#define RT_HOST_LAYOUT 0
#elif defined(__aarch64__) && defined(__linux__) && defined(__GLIBC__)
#define RT_HOST_LAYOUT 1
#endif
#ifdef RT_HOST_LAYOUT
_Static_assert(sizeof(struct stat) == (RT_HOST_LAYOUT ? 128 : 144), "struct stat's size");
_Static_assert(offsetof(struct stat, st_mode) == (RT_HOST_LAYOUT ? 16 : 24), "st_mode's offset");
_Static_assert(sizeof(((struct stat*)0)->st_mode) == 4, "st_mode's size"); //runtime.ll loads it as an i32
_Static_assert(offsetof(struct stat, st_size) == 48 && sizeof(((struct stat*)0)->st_size) == 8, "st_size");
_Static_assert(offsetof(struct stat, st_mtim) + offsetof(struct timespec, tv_sec) == 88, "st_mtim.tv_sec");
_Static_assert(offsetof(struct stat, st_mtim) + offsetof(struct timespec, tv_nsec) == 96, "st_mtim.tv_nsec");
_Static_assert(sizeof(((struct stat*)0)->st_mtim.tv_sec) == 8 && sizeof(((struct stat*)0)->st_mtim.tv_nsec) == 8, "st_mtim");
_Static_assert(offsetof(struct dirent, d_name) == 19, "d_name's offset");
_Static_assert(sizeof(posix_spawn_file_actions_t) == 80, "posix_spawn_file_actions_t's size");
_Static_assert(sizeof(pthread_attr_t) == (RT_HOST_LAYOUT ? 64 : 56) && sizeof(pthread_t) == 8, "pthread_attr_t, pthread_t");
_Static_assert(sizeof(jmp_buf) == (RT_HOST_LAYOUT ? 312 : 200), "jmp_buf's size");
_Static_assert(sizeof(struct sigaction) == 152 && offsetof(struct sigaction, sa_flags) == 136
               && sizeof(((struct sigaction*)0)->sa_flags) == 4, "struct sigaction");
_Static_assert(sizeof(stack_t) == 24 && offsetof(stack_t, ss_flags) == 8 && offsetof(stack_t, ss_size) == 16, "stack_t");
_Static_assert(FFI_DEFAULT_ABI == (RT_HOST_LAYOUT ? 1 : 2) && sizeof(ffi_cif) <= 64 && FFI_OK == 0
               && sizeof(ffi_arg) == 8, "libffi's ABI number, an ffi_cif's size");
_Static_assert(RTLD_NOW == 2 && RTLD_GLOBAL == 0x100, "dlopen's flags"); //RTLD_DEFAULT is a null handle on glibc
#endif
//the kernel's and the C library's constants, one set for every architecture here (asm-generic's), which the runtime's IR
//writes as numbers: the file kinds and the errno values it tells apart, the fatal signals an OnCrash handler takes, the
//handlers' flags, SS_DISABLE, mmap's and madvise's, and sysconf's names
_Static_assert(S_IFMT == 0170000 && S_IFREG == 0100000 && S_IFDIR == 0040000 && EINVAL == 22, "the kernel's constants");
_Static_assert(ENOENT == 2 && EEXIST == 17 && EACCES == 13 && EPERM == 1 && ENOTDIR == 20 && EISDIR == 21
               && ENOTEMPTY == 39, "the errno values __olang_err tells apart");
_Static_assert(SIGILL == 4 && SIGABRT == 6 && SIGBUS == 7 && SIGFPE == 8 && SIGSEGV == 11, "the fatal signals");
_Static_assert(SA_ONSTACK == 0x08000000 && (unsigned)SA_RESETHAND == 0x80000000u && SA_NODEFER == 0x40000000
               && SA_SIGINFO == 4 && SS_DISABLE == 2, "the handlers' flags");
_Static_assert(PROT_NONE == 0 && (PROT_READ | PROT_WRITE) == 3 && (MAP_PRIVATE | MAP_ANONYMOUS) == 34 && MADV_DONTNEED == 4
               && SI_KERNEL == 0x80, "mmap's, madvise's and a fault's constants");
_Static_assert(_SC_PHYS_PAGES == 85 && _SC_PAGESIZE == 30 && _SC_THREAD_STACK_MIN == 75, "sysconf's names");
#if defined(__x86_64__) && defined(__linux__)
_Static_assert(offsetof(siginfo_t, si_code) == 8 && offsetof(ucontext_t, uc_mcontext.gregs) == 40
               && REG_RIP == 16, "where a fault's code and registers are"); //san.ll's handler reads them
#endif

//std, found as semantic.c finds it: OLANG_STD, else <compiler>/../std (B3)
static char* rtStdRoot(void) {
    char* env = getenv("OLANG_STD");
    if (env && *env) return env;
    static char buf[PATH_MAX];
    ssize_t n = readlink("/proc/self/exe", buf, sizeof(buf) - 16);
    if (n <= 0) return "std";
    buf[n] = '\0';
    char* slash = strrchr(buf, '/');
    if (slash) *slash = '\0';
    strcat(buf, "/../std");
    return buf;
}

//a runtime file's place, as a diagnostic names it
static char* rtPath(const char* file) {
    return StrFmt("%s/runtime/%s", rtStdRoot(), file);
}

//a stop at line `line` of a runtime file the compiler cannot read: a mistake in the repository, not in the program
static void rtMalformed(const char* file, int line, const char* why) {
    fprintf(stderr, "olang: %s:%d: %s\n", rtPath(file), line, why);
    ErrorBugFound();
}

//the row of rtFacts for architecture arch (TargetArch) - the first, x86_64's, for one it does not list
static int rtArchIndex(const char* arch) {
    for (int i = 0; i < (int)(sizeof(rtArchs) / sizeof(rtArchs[0])); i++) {
        if (!strcmp(rtArchs[i], arch)) return i;
    }
    return 0;
}

//whether a "; @if" condition names something a runtime file may ask about: the -s mode or an architecture
static bool rtKnownCond(const char* name, size_t len) {
    if (len == 3 && !strncmp(name, "san", 3)) return true;
    for (size_t i = 0; i < sizeof(rtArchs) / sizeof(rtArchs[0]); i++) {
        if (strlen(rtArchs[i]) == len && !strncmp(rtArchs[i], name, len)) return true;
    }
    return false;
}

//what a line of a runtime file is to rtFill: "; @if COND", "; @else", "; @end", or anything else - a comment that only
//begins as one would ("; @__olang_scope_close below ...") among them
enum rtDirective { RT_TEXT, RT_IF, RT_ELSE, RT_END };
static enum rtDirective rtDirectiveOf(const char* line) {
    if (strncmp(line, "; @", 3)) return RT_TEXT;
    const char* d = line + 3;
    size_t dl = strcspn(d, " \n");
    if (dl == 2 && !strncmp(d, "if", 2)) return RT_IF;
    if (dl == 4 && !strncmp(d, "else", 4)) return RT_ELSE;
    if (dl == 3 && !strncmp(d, "end", 3)) return RT_END;
    return RT_TEXT;
}

//runtime file `file`, filled in for a build for architecture arch, with the scope sanitizer or not: its "; @if"
//lines decided and dropped, and every @@NAME@@ replaced by the architecture's fact (the header of runtime.ll)
static char* rtFill(const char* file, const char* arch, bool san) {
    char* path = rtPath(file);
    FILE* f = fopen(path, "r");
    if (!f) ErrFatal(StrFromCStr(path), ERR_CANNOT_OPEN);
    char* text;
    size_t size;
    FILE* out = open_memstream(&text, &size);
    if (!out) ErrorBugFound();
    int row = rtArchIndex(arch);
    char* line = NULL;
    size_t cap = 0;
    ssize_t len;
    int lineNr = 0, ifLine = 0;
    bool inIf = false, inElse = false, keep = true;
    while ((len = getline(&line, &cap, f)) >= 0) {
        lineNr++;
        enum rtDirective d = rtDirectiveOf(line);
        if (d == RT_IF) {
            if (inIf) rtMalformed(file, lineNr, "\"; @if\" inside another");
            char* c = line + 6 + strspn(line + 6, " ");
            bool neg = *c == '!';
            if (neg) c++;
            size_t cl = strcspn(c, " \n");
            if (!rtKnownCond(c, cl)) rtMalformed(file, lineNr, "a condition that is neither \"san\" nor an architecture");
            bool holds = cl == 3 && !strncmp(c, "san", 3) ? san : strlen(arch) == cl && !strncmp(arch, c, cl);
            keep = holds != neg;
            inIf = true;
            inElse = false;
            ifLine = lineNr;
            continue;
        }
        if (d == RT_ELSE) {
            if (!inIf || inElse) rtMalformed(file, lineNr, "\"; @else\" with no \"; @if\" open");
            keep = !keep;
            inElse = true;
            continue;
        }
        if (d == RT_END) {
            if (!inIf) rtMalformed(file, lineNr, "\"; @end\" with no \"; @if\" open");
            inIf = false;
            keep = true;
            continue;
        }
        if (!keep) continue;
        //a comment is kept as it is written: it may name a placeholder without being one
        if (line[strspn(line, " ")] == ';') { fputs(line, out); continue; }
        for (char* p = line; *p; ) {
            char* at = strstr(p, "@@");
            if (!at) { fputs(p, out); break; }
            char* end = strstr(at + 2, "@@");
            if (!end) rtMalformed(file, lineNr, "an \"@@\" with no \"@@\" closing it");
            fwrite(p, 1, (size_t)(at - p), out);
            size_t nl = (size_t)(end - at - 2);
            bool found = false;
            for (size_t i = 0; i < sizeof(rtFacts) / sizeof(rtFacts[0]) && !found; i++) {
                if (strlen(rtFacts[i].name) == nl && !strncmp(rtFacts[i].name, at + 2, nl)) {
                    fprintf(out, "%lld", rtFacts[i].value[row]);
                    found = true;
                }
            }
            if (!found) rtMalformed(file, lineNr, "an @@NAME@@ the compiler knows no fact for");
            p = end + 2;
        }
    }
    if (inIf) rtMalformed(file, ifLine, "\"; @if\" with no \"; @end\"");
    free(line);
    fclose(f);
    fclose(out);
    return text;
}

//E11a: the runtime renders a float with the powers of ten the evaluator uses (util.c, FloatPow10), written out in
//runtime.ll as @__olang_pow10m - so they are held to the compiler's own table each time it reads the file, and the
//run time and the evaluator can never give two texts for one value
static void rtCheckPow10(const char* text) {
    const char* at = strstr(text, "\n@__olang_pow10m = ");
    const char* list = at ? strstr(at, "x i64] [") : NULL;
    if (!list) rtMalformed("runtime.ll", 0, "no @__olang_pow10m");
    list += 8;
    for (int i = 0; i < 1392; i++) {
        list = strstr(list, "i64 ");
        if (!list) rtMalformed("runtime.ll", 0, "@__olang_pow10m is short of FloatPow10's 1392 powers");
        if ((unsigned long long)strtoll(list + 4, NULL, 10) != FloatPow10[i])
            rtMalformed("runtime.ll", 0, "@__olang_pow10m differs from FloatPow10 (util.c)");
        list += 4;
    }
}

char* RuntimeText(const char* arch, bool scopeSan, bool dyncall) {
    static char* texts[2];
    static const char* forArch;
    static bool forSan;
    if (texts[0] && (strcmp(forArch, arch) || forSan != scopeSan)) {
        free(texts[0]);
        free(texts[1]);
        texts[0] = texts[1] = NULL;
    }
    forArch = arch;
    forSan = scopeSan;
    if (!texts[dyncall]) {
        if (dyncall) texts[1] = rtFill("dyncall.ll", arch, scopeSan);
        else {
            char* core = rtFill("runtime.ll", arch, scopeSan);
            rtCheckPow10(core);
            char* san = scopeSan ? rtFill("san.ll", arch, scopeSan) : NULL;
            texts[0] = san ? StrFmt("%s\n%s", core, san) : core;
            if (san) { free(core); free(san); }
        }
    }
    return texts[dyncall];
}

//the end of the type that starts at s - a bracketed or braced one whole, else one word - in a global's line
static const char* rtTypeEnd(const char* s) {
    if (*s != '[' && *s != '{' && *s != '<') return s + strcspn(s, " ,\n");
    int depth = 0;
    for (const char* p = s; *p; p++) {
        if (*p == '[' || *p == '{' || *p == '<') depth++;
        else if ((*p == ']' || *p == '}' || *p == '>') && --depth == 0) return p + 1;
    }
    return s + strlen(s);
}

//one line of filled-in runtime text as a module carries it: a type and a declaration as it is, a definition as the
//declaration of what it defines - a function's parameter names dropped, a global's initializer - and nothing else
static void rtDeclare(FILE* out, const char* line, size_t len) {
    if ((len > 8 && !strncmp(line, "declare ", 8)) || (line[0] == '%' && memmem(line, len, " = type ", 8))
            || (line[0] == '@' && memmem(line, len, " = external ", 12))) {
        fwrite(line, 1, len, out);
        fputc('\n', out);
        return;
    }
    //what the runtime keeps to itself is no module's to reach
    if (strstr(line, "define internal ") == line || strstr(line, "define private ") == line || strstr(line, " = internal ")
            || strstr(line, " = private ")) return;
    if (len > 7 && !strncmp(line, "define ", 7)) {
        const char* open = strchr(line, '(');
        if (!open) return;
        fprintf(out, "declare %.*s(", (int)(open - line - 7), line + 7);
        //each parameter's type, its name dropped - the parameters are split where no bracket or brace is open
        const char* p = open + 1;
        int depth = 0;
        const char* start = p;
        bool first = true;
        for (; *p; p++) {
            if (*p == '(' || *p == '[' || *p == '{' || *p == '<') depth++;
            else if ((*p == ']' || *p == '}' || *p == '>') ) depth--;
            else if (*p == ')' && depth > 0) depth--;
            if ((*p == ',' && depth == 0) || (*p == ')' && depth == 0)) {
                const char* a = start;
                while (*a == ' ') a++;
                const char* b = p;
                while (b > a && b[-1] == ' ') b--;
                const char* sp = b;
                while (sp > a && sp[-1] != ' ') sp--;
                if (sp > a && *sp == '%') { b = sp; while (b > a && b[-1] == ' ') b--; }
                if (b > a) fprintf(out, "%s%.*s", first ? "" : ", ", (int)(b - a), a);
                first = false;
                start = p + 1;
                if (*p == ')') break;
            }
        }
        //what follows the parameters, the brace that opens the body left out: the function's attributes
        const char* attrs = p + 1;
        const char* brace = strrchr(attrs, '{');
        size_t al = brace ? (size_t)(brace - attrs) : strlen(attrs);
        while (al > 0 && attrs[al - 1] == ' ') al--;
        fprintf(out, ")%.*s\n", (int)al, attrs);
        return;
    }
    if (line[0] == '@') {
        const char* eq = strstr(line, " = ");
        if (!eq) return;
        const char* r = eq + 3;
        fprintf(out, "%.*s = external ", (int)(eq - line), line);
        if (!strncmp(r, "thread_local(", 13)) {
            const char* close = strchr(r, ')');
            fprintf(out, "%.*s ", (int)(close + 1 - r), r);
            r = close + 2;
        }
        if (!strncmp(r, "unnamed_addr ", 13)) r += 13;
        const char* kind = r;
        r += strcspn(r, " ") + 1;
        fprintf(out, "%.*s%.*s\n", (int)(r - kind), kind, (int)(rtTypeEnd(r) - r), r);
    }
}

void emitRuntimeDecls(FILE* out, const char* arch, bool scopeSan, bool dyncall) {
    for (int part = 0; part <= (dyncall ? 1 : 0); part++) {
        char* text = RuntimeText(arch, scopeSan, part == 1);
        for (char* line = text; *line; ) {
            char* nl = strchr(line, '\n');
            size_t len = nl ? (size_t)(nl - line) : strlen(line);
            char* one = strndup(line, len); //rtDeclare reads one line, to its end
            if (!one) ErrorBugFound();
            rtDeclare(out, one, len);
            free(one);
            line += len + (nl ? 1 : 0);
        }
    }
    fputs("\n", out);
}
