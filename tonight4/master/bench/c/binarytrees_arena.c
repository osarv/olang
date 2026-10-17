/* binary-trees with a hand-written bump arena per tree, as the fastest C entries in the Benchmarks Game do with APR
   pools - a reference point for olang's scopes, which give this for free: the same output as binarytrees.c */
#include "common.h"

typedef struct Node { struct Node *left, *right; } Node;

typedef struct Chunk { struct Chunk* next; size_t used, cap; char data[]; } Chunk;
typedef struct { Chunk* head; Chunk* spare; } Arena;

static void* arena_alloc(Arena* a, size_t n) {
    if (!a->head || a->head->used + n > a->head->cap) {
        Chunk* c = a->spare;
        if (c) a->spare = c->next;
        else {
            size_t cap = 1 << 16;
            c = malloc(sizeof(Chunk) + cap);
            c->cap = cap;
        }
        c->used = 0;
        c->next = a->head;
        a->head = c;
    }
    void* p = a->head->data + a->head->used;
    a->head->used += n;
    return p;
}

/* everything allocated goes back on the spare list, ready for the next tree */
static void arena_clear(Arena* a) {
    while (a->head) { Chunk* c = a->head; a->head = c->next; c->next = a->spare; a->spare = c; }
}

static void arena_free(Arena* a) {
    arena_clear(a);
    while (a->spare) { Chunk* c = a->spare; a->spare = c->next; free(c); }
}

static Node* tree(Arena* a, long depth) {
    Node* n = arena_alloc(a, sizeof(Node));
    if (depth == 0) {
        n->left = n->right = NULL;
    } else {
        n->left = tree(a, depth - 1);
        n->right = tree(a, depth - 1);
    }
    return n;
}

static long check(const Node* n) {
    if (n->left == NULL) return 1;
    return 1 + check(n->left) + check(n->right);
}

int main(int argc, char** argv) {
    long n = arg_or(argc, argv, 1, 10);
    long min_depth = 4;
    long max_depth = n > min_depth + 2 ? n : min_depth + 2;
    Arena a = {0}, long_lived_arena = {0};
    printf("stretch tree of depth %ld\t check: %ld\n", max_depth + 1, check(tree(&a, max_depth + 1)));
    arena_clear(&a);
    Node* long_lived = tree(&long_lived_arena, max_depth);
    for (long d = min_depth; d <= max_depth; d += 2) {
        long iterations = 1L << (max_depth - d + min_depth);
        long sum = 0;
        for (long i = 0; i < iterations; i++) {
            sum += check(tree(&a, d));
            arena_clear(&a);
        }
        printf("%ld\t trees of depth %ld\t check: %ld\n", iterations, d, sum);
    }
    printf("long lived tree of depth %ld\t check: %ld\n", max_depth, check(long_lived));
    arena_free(&a);
    arena_free(&long_lived_arena);
    return 0;
}
