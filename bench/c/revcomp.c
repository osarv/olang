/* reverse-complement: every sequence of a FASTA file reversed and complemented through a 256-entry table, written in
   lines of 60 under its header - plain C: the file read whole, each sequence gathered without its line ends, written
   through stdio's buffer */
#include "common.h"

#define WIDTH 60

static char complement[256];

static void reversed(const char* seq, long n) {
    char line[WIDTH + 1];
    for (long done = 0; done < n; done += WIDTH) {
        long m = n - done < WIDTH ? n - done : WIDTH;
        for (long i = 0; i < m; i++) line[i] = complement[(unsigned char)seq[n - 1 - done - i]];
        line[m] = '\n';
        fwrite(line, 1, m + 1, stdout);
    }
}

int main(int argc, char** argv) {
    if (argc < 2) { fputs("usage: revcomp FILE\n", stderr); return 2; }
    for (int i = 0; i < 256; i++) complement[i] = (char)i;
    const char* from = "ACBDGHKMNSRUTWVYacbdghkmnsrutwvy";
    const char* to = "TGVHCDMKNSYAAWBRTGVHCDMKNSYAAWBR";
    for (int i = 0; from[i]; i++) complement[(unsigned char)from[i]] = to[i];
    FILE* f = fopen(argv[1], "rb");
    if (!f) return 1;
    fseek(f, 0, SEEK_END);
    long size = ftell(f);
    fseek(f, 0, SEEK_SET);
    char* text = malloc(size + 1);
    if (fread(text, 1, size, f) != (size_t)size) return 1;
    fclose(f);
    char* seq = malloc(size + 1);
    long n = 0, at = 0;
    while (at < size) {
        char* nl = memchr(text + at, '\n', size - at);
        long end = nl ? nl - (text + at) : size - at;
        char* line = text + at;
        at += end + 1;
        if (end > 0 && line[0] == '>') {
            if (n > 0) reversed(seq, n);
            n = 0;
            fwrite(line, 1, end, stdout);
            putchar('\n');
            continue;
        }
        memcpy(seq + n, line, end);
        n += end;
    }
    if (n > 0) reversed(seq, n);
    free(seq);
    free(text);
    return 0;
}
