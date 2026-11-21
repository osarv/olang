/* fasta: the ALU sequence repeated, and two sequences drawn from cumulative frequency tables with fasta's linear
   congruential generator, in lines of 60 - plain C through stdio's buffer, as the olang version writes through an
   io.Writer */
#include "common.h"

#define WIDTH 60

static const char alu[] =
    "GGCCGGGCGCGGTGGCTCACGCCTGTAATCCCAGCACTTTGGGAGGCCGAGGCGGGCGGATCACCTGAGGTCAGGAGTTCGAGACCAGCCTGGCCAACATGGTGAAACCCCGTCTCTACTAAAAATACAAAAATTAGCCGGGCGTGGTGGCGCGCGCCTGTAATCCCAGCTACTCGGGAGGCTGAGGCAGGAGAATCGCTTGAACCCGGGAGGCGGAGGTTGCAGTGAGCCGAGATCGCGCCACTGCACTCCAGCCTGGGCGACAGAGCGAGACTCCGTCTCAAAAA";

static long last = 42;
static double next_random(double max) {
    last = (last * 3877 + 29573) % 139968;
    return max * (double)last / 139968.0;
}

static void repeat(const char* header, const char* seq, long n) {
    puts(header);
    long len = strlen(seq), k = 0;
    char line[WIDTH + 1];
    for (long done = 0; done < n; done += WIDTH) {
        long m = n - done < WIDTH ? n - done : WIDTH;
        for (long i = 0; i < m; i++) {
            line[i] = seq[k];
            k = k + 1 == len ? 0 : k + 1;
        }
        line[m] = '\n';
        fwrite(line, 1, m + 1, stdout);
    }
}

static void random_seq(const char* header, const char* letters, const double* odds, long n) {
    puts(header);
    long count = strlen(letters), last_letter = count - 1;
    double cumulative[16], total = 0;
    for (long i = 0; i < count; i++) { total += odds[i]; cumulative[i] = total; }
    char line[WIDTH + 1];
    for (long done = 0; done < n; done += WIDTH) {
        long m = n - done < WIDTH ? n - done : WIDTH;
        for (long i = 0; i < m; i++) {
            double r = next_random(1.0);
            long k = 0;
            while (k < last_letter && r >= cumulative[k]) k++;
            line[i] = letters[k];
        }
        line[m] = '\n';
        fwrite(line, 1, m + 1, stdout);
    }
}

int main(int argc, char** argv) {
    long n = arg_or(argc, argv, 1, 1000);
    repeat(">ONE Homo sapiens alu", alu, 2 * n);
    static const double iub[] = {0.27, 0.12, 0.12, 0.27, 0.02, 0.02, 0.02, 0.02, 0.02, 0.02, 0.02, 0.02, 0.02, 0.02, 0.02};
    random_seq(">TWO IUB ambiguity codes", "acgtBDHKMNRSVWY", iub, 3 * n);
    static const double sapiens[] = {0.3029549426680, 0.1979883004921, 0.1975473066391, 0.3015094502008};
    random_seq(">THREE Homo sapiens frequency", "acgt", sapiens, 5 * n);
    return 0;
}
