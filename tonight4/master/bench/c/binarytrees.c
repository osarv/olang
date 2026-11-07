/* binary-trees: the Benchmarks Game's algorithm, as plain C - one malloc per node, one free per node */
#include "common.h"

typedef struct Node { struct Node *left, *right; } Node;

static Node* tree(long depth) {
    Node* n = malloc(sizeof(Node));
    if (depth == 0) {
        n->left = n->right = NULL;
    } else {
        n->left = tree(depth - 1);
        n->right = tree(depth - 1);
    }
    return n;
}

static long check(const Node* n) {
    if (n->left == NULL) return 1;
    return 1 + check(n->left) + check(n->right);
}

static void drop(Node* n) {
    if (n->left) { drop(n->left); drop(n->right); }
    free(n);
}

int main(int argc, char** argv) {
    long n = arg_or(argc, argv, 1, 10);
    long min_depth = 4;
    long max_depth = n > min_depth + 2 ? n : min_depth + 2;
    Node* stretch = tree(max_depth + 1);
    printf("stretch tree of depth %ld\t check: %ld\n", max_depth + 1, check(stretch));
    drop(stretch);
    Node* long_lived = tree(max_depth);
    for (long d = min_depth; d <= max_depth; d += 2) {
        long iterations = 1L << (max_depth - d + min_depth);
        long sum = 0;
        for (long i = 0; i < iterations; i++) {
            Node* t = tree(d);
            sum += check(t);
            drop(t);
        }
        printf("%ld\t trees of depth %ld\t check: %ld\n", iterations, d, sum);
    }
    printf("long lived tree of depth %ld\t check: %ld\n", max_depth, check(long_lived));
    drop(long_lived);
    return 0;
}
