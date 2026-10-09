/* k-nucleotide: counting every k-long run of a generated DNA sequence in a chained hash table - the same hash
   (FNV-1a), the same growth (doubling at three-quarters full) and the same bucket layout as olang's std/map, written
   as C would: one find-or-insert per run, slots from malloc, keys pointing into the sequence */
#include "common.h"

static long last = 42;
static double next_random(double max) {
    last = (last * 3877 + 29573) % 139968;
    return max * (double)last / 139968.0;
}

static char* sequence(long n) {
    static const char letters[] = "acgt";
    static const double odds[] = {0.3029549426680, 0.1979883004921, 0.1975473066391, 0.3015094502008};
    double cumulative[4], total = 0;
    for (int i = 0; i < 4; i++) { total += odds[i]; cumulative[i] = total; }
    char* s = malloc(n);
    for (long i = 0; i < n; i++) {
        double r = next_random(1.0);
        int k = 0;
        while (k < 3 && r >= cumulative[k]) k++;
        s[i] = letters[k];
    }
    return s;
}

typedef struct Slot { const char* key; long len; long value; struct Slot* next; } Slot;
typedef struct { Slot** buckets; long nbuckets; long count; } Table;

static uint64_t hash(const char* k, long len) {
    uint64_t h = 0xcbf29ce484222325ULL;
    for (long i = 0; i < len; i++) h = (h ^ (unsigned char)k[i]) * 0x100000001b3ULL;
    return h;
}

static void grow(Table* t) {
    long nb = t->nbuckets * 2;
    Slot** b = calloc(nb, sizeof(Slot*));
    for (long i = 0; i < t->nbuckets; i++) {
        Slot* s = t->buckets[i];
        while (s) {
            Slot* after = s->next;
            long j = hash(s->key, s->len) & (nb - 1);
            s->next = b[j];
            b[j] = s;
            s = after;
        }
    }
    free(t->buckets);
    t->buckets = b;
    t->nbuckets = nb;
}

static long* find_or_insert(Table* t, const char* key, long len) {
    long i = hash(key, len) & (t->nbuckets - 1);
    for (Slot* s = t->buckets[i]; s; s = s->next)
        if (s->len == len && memcmp(s->key, key, len) == 0) return &s->value;
    Slot* s = malloc(sizeof(Slot));
    s->key = key; s->len = len; s->value = 0; s->next = t->buckets[i];
    t->buckets[i] = s;
    t->count++;
    if (t->count * 4 > t->nbuckets * 3) grow(t);
    return &s->value;
}

static long lookup(const Table* t, const char* key, long len) {
    for (Slot* s = t->buckets[hash(key, len) & (t->nbuckets - 1)]; s; s = s->next)
        if (s->len == len && memcmp(s->key, key, len) == 0) return s->value;
    return 0;
}

static Table counts(const char* seq, long n, long k) {
    Table t = { calloc(8, sizeof(Slot*)), 8, 0 };
    for (long i = 0; i + k <= n; i++) (*find_or_insert(&t, seq + i, k))++;
    return t;
}

static void drop(Table* t) {
    for (long i = 0; i < t->nbuckets; i++) {
        Slot* s = t->buckets[i];
        while (s) { Slot* after = s->next; free(s); s = after; }
    }
    free(t->buckets);
}

int main(int argc, char** argv) {
    long n = arg_or(argc, argv, 1, 1000);
    char* seq = sequence(n);
    static const char letters[] = "acgt";
    Table t1 = counts(seq, n, 1);
    for (int a = 0; a < 4; a++) printf("%c %ld\n", letters[a], lookup(&t1, &letters[a], 1));
    drop(&t1);
    Table t2 = counts(seq, n, 2);
    for (int a = 0; a < 4; a++)
        for (int b = 0; b < 4; b++) {
            char key[2] = { letters[a], letters[b] };
            printf("%c%c %ld\n", letters[a], letters[b], lookup(&t2, key, 2));
        }
    drop(&t2);
    static const char* runs[] = { "ggt", "ggta", "ggtatt", "ggtattttaatt", "ggtattttaatttatagt" };
    for (int r = 0; r < 5; r++) {
        long len = strlen(runs[r]);
        Table t = counts(seq, n, len);
        printf("%ld\t%s\t(%ld distinct)\n", lookup(&t, runs[r], len), runs[r], t.count);
        drop(&t);
    }
    free(seq);
    return 0;
}
