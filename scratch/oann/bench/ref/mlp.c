// The reference for oann's MNIST benchmark: the same 784-128-10 perceptron trained the same way, in C over OpenBLAS.
// Same data path (bytes scaled by 1/255 as each batch is filled), same random numbers (xoshiro256** seeded by
// splitmix64, the initialization and the shuffle drawn exactly as std/rand and oann draw them), same starting values
// (PyTorch nn.Linear's), same softmax cross-entropy, same AdamW (decay 0.01 on the weights only) - so its losses track
// oann's to rounding, and the epoch time is the comparison. Arguments: epochs, seed, threads.
//   cc -O3 -march=x86-64 mlp.c -o mlp -lopenblas -lm
#include <cblas.h>
#include <math.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <time.h>

void openblas_set_num_threads(int);

// ---- std/rand ----
typedef struct { uint64_t s0, s1, s2, s3; } Rand;
static uint64_t mix64(uint64_t z) {
    z = (z ^ (z >> 30)) * 0xBF58476D1CE4E5B9ull;
    z = (z ^ (z >> 27)) * 0x94D049BB133111EBull;
    return z ^ (z >> 31);
}
static const uint64_t golden = 11400714819323198485ull;
static Rand rnew(uint64_t seed) {
    Rand r = {mix64(seed + golden), mix64(seed + 2 * golden), mix64(seed + 3 * golden), mix64(seed + 4 * golden)};
    return r;
}
static uint64_t rotl(uint64_t x, int k) { return (x << k) | (x >> (64 - k)); }
static uint64_t rnext(Rand *r) {
    uint64_t out = rotl(r->s1 * 5, 7) * 9, t = r->s1 << 17;
    r->s2 ^= r->s0; r->s3 ^= r->s1; r->s1 ^= r->s2; r->s0 ^= r->s3; r->s2 ^= t; r->s3 = rotl(r->s3, 45);
    return out;
}
static int64_t rbelow(Rand *r, int64_t n) {
    uint64_t m = (uint64_t)n, limit = (uint64_t)0 - ((uint64_t)0 - m) % m;
    for (;;) { uint64_t x = rnext(r); if (limit == 0 || x < limit) return (int64_t)(x % m); }
}
static double rfloat(Rand *r) { return (double)(rnext(r) >> 11) * (1.0 / 9007199254740992.0); }
static void shuffle(Rand *r, int64_t *a, int64_t n) {
    for (int64_t i = n - 1; i > 0; i--) { int64_t j = rbelow(r, i + 1), t = a[i]; a[i] = a[j]; a[j] = t; }
}
static void fillUniform(Rand *r, float *m, int64_t n, double lo, double hi) {
    for (int64_t i = 0; i < n; i++) m[i] = (float)(lo + (hi - lo) * rfloat(r));
}

// ---- data ----
static unsigned char *load(const char *path, long *n) {
    FILE *f = fopen(path, "rb");
    if (!f) { perror(path); exit(1); }
    fseek(f, 0, SEEK_END); *n = ftell(f); fseek(f, 0, SEEK_SET);
    unsigned char *b = malloc(*n);
    if (fread(b, 1, *n, f) != (size_t)*n) exit(1);
    fclose(f);
    return b;
}
static double now(void) { struct timespec t; clock_gettime(CLOCK_MONOTONIC, &t); return t.tv_sec + t.tv_nsec * 1e-9; }

enum { B = 128, IN = 784, HID = 128, OUT = 10 };
static float W1[HID * IN], B1[HID], W2[OUT * HID], B2[OUT];
static float DW1[HID * IN], DB1[HID], DW2[OUT * HID], DB2[OUT];
static float X[B * IN], H[B * HID], DH[B * HID], O[B * OUT], P[B * OUT];
static int Y[B];
static float M[HID * IN + HID + OUT * HID + OUT], V[HID * IN + HID + OUT * HID + OUT];

static void fill(const unsigned char *img, const unsigned char *lab, const int64_t *order, int64_t first, int n) {
    const float scale = (float)(1.0 / 255.0);
    for (int k = 0; k < n; k++) {
        int64_t i = order[first + k];
        for (int j = 0; j < IN; j++) X[k * IN + j] = (float)img[i * IN + j] * scale;
        Y[k] = lab[i];
    }
}

// forward through the loss; returns the mean loss over n rows, leaving P = softmax
static double forward(int n) {
    cblas_sgemm(CblasRowMajor, CblasNoTrans, CblasTrans, n, HID, IN, 1, X, IN, W1, IN, 0, H, HID);
    for (int r = 0; r < n; r++) for (int c = 0; c < HID; c++) { float v = H[r * HID + c] + B1[c]; H[r * HID + c] = v > 0 ? v : 0; }
    cblas_sgemm(CblasRowMajor, CblasNoTrans, CblasTrans, n, OUT, HID, 1, H, HID, W2, HID, 0, O, OUT);
    double total = 0;
    for (int r = 0; r < n; r++) {
        float *z = O + r * OUT, *p = P + r * OUT, top = z[0] + B2[0], s = 0;
        for (int c = 0; c < OUT; c++) { z[c] += B2[c]; if (z[c] > top) top = z[c]; }
        for (int c = 0; c < OUT; c++) { p[c] = expf(z[c] - top); s += p[c]; }
        for (int c = 0; c < OUT; c++) p[c] *= 1.0f / s;
        total += logf(s) + top - z[Y[r]];
    }
    return total / n;
}

static void backward(int n) {
    float k = 1.0f / n;
    for (int r = 0; r < n; r++) { for (int c = 0; c < OUT; c++) P[r * OUT + c] *= k; P[r * OUT + Y[r]] -= k; }
    cblas_sgemm(CblasRowMajor, CblasTrans, CblasNoTrans, OUT, HID, n, 1, P, OUT, H, HID, 0, DW2, HID);
    for (int c = 0; c < OUT; c++) { float s = 0; for (int r = 0; r < n; r++) s += P[r * OUT + c]; DB2[c] = s; }
    cblas_sgemm(CblasRowMajor, CblasNoTrans, CblasNoTrans, n, HID, OUT, 1, P, OUT, W2, HID, 0, DH, HID);
    for (int i = 0; i < n * HID; i++) if (!(H[i] > 0)) DH[i] = 0;
    cblas_sgemm(CblasRowMajor, CblasTrans, CblasNoTrans, HID, IN, n, 1, DH, HID, X, IN, 0, DW1, IN);
    for (int c = 0; c < HID; c++) { float s = 0; for (int r = 0; r < n; r++) s += DH[r * HID + c]; DB1[c] = s; }
}

static long steps;
static void adamw(float *p, const float *g, float *m, float *v, long n, int decay) {
    const double rate = 0.001, b1 = 0.9, b2 = 0.999, wd = 0.01;
    float fb1 = b1, fb2 = b2, c1 = 1 - b1, c2 = 1 - b2;
    double corr1 = 1 - pow(b1, steps), corr2 = 1 - pow(b2, steps);
    float step = rate / corr1, root = 1 / sqrt(corr2), eps = 1e-8, keep = decay ? 1 - rate * wd : 1;
    for (long i = 0; i < n; i++) {
        float mk = fb1 * m[i] + c1 * g[i], vk = fb2 * v[i] + c2 * g[i] * g[i];
        m[i] = mk; v[i] = vk;
        p[i] = keep * p[i] - step * mk / (sqrtf(vk) * root + eps);
    }
}

static void update(void) {
    steps++;
    long o = 0;
    adamw(W1, DW1, M + o, V + o, HID * IN, 1); o += HID * IN;
    adamw(B1, DB1, M + o, V + o, HID, 0); o += HID;
    adamw(W2, DW2, M + o, V + o, OUT * HID, 1); o += OUT * HID;
    adamw(B2, DB2, M + o, V + o, OUT, 0);
}

int main(int argc, char **argv) {
    int epochs = argc > 1 ? atoi(argv[1]) : 10;
    uint64_t seed = argc > 2 ? strtoull(argv[2], 0, 10) : 1;
    int threads = argc > 3 ? atoi(argv[3]) : 1;
    openblas_set_num_threads(threads);
    long n;
    unsigned char *trainImg = load("data/mnist/train-images-idx3-ubyte", &n) + 16;
    unsigned char *trainLab = load("data/mnist/train-labels-idx1-ubyte", &n) + 8;
    unsigned char *testImg = load("data/mnist/t10k-images-idx3-ubyte", &n) + 16;
    unsigned char *testLab = load("data/mnist/t10k-labels-idx1-ubyte", &n) + 8;
    const int64_t ntrain = 60000, ntest = 10000;
    Rand init = rnew(seed), shuf = rnew(seed);
    double b784 = 1 / sqrt(784.0), b128 = 1 / sqrt(128.0);
    fillUniform(&init, W1, HID * IN, -b784, b784);
    fillUniform(&init, B1, HID, -b784, b784);
    fillUniform(&init, W2, OUT * HID, -b128, b128);
    fillUniform(&init, B2, OUT, -b128, b128);
    int64_t *order = malloc(ntrain * sizeof *order), *testOrder = malloc(ntest * sizeof *testOrder);
    for (int64_t i = 0; i < ntrain; i++) order[i] = i;
    for (int64_t i = 0; i < ntest; i++) testOrder[i] = i;
    printf("784-128-10 in C over OpenBLAS, %d thread(s), batches of %d\n", threads, B);
    double totalTime = 0;
    for (int e = 1; e <= epochs; e++) {
        double t0 = now(), lossSum = 0;
        shuffle(&shuf, order, ntrain);
        for (int64_t first = 0; first < ntrain; first += B) {
            int k = ntrain - first < B ? (int)(ntrain - first) : B;
            fill(trainImg, trainLab, order, first, k);
            lossSum += forward(k) * k;
            backward(k);
            update();
        }
        double spent = now() - t0, testLoss = 0;
        totalTime += spent;
        long right = 0;
        for (int64_t first = 0; first < ntest; first += B) {
            int k = ntest - first < B ? (int)(ntest - first) : B;
            fill(testImg, testLab, testOrder, first, k);
            testLoss += forward(k) * k;
            for (int r = 0; r < k; r++) {
                int best = 0;
                for (int c = 1; c < OUT; c++) if (O[r * OUT + c] > O[r * OUT + best]) best = c;
                right += best == Y[r];
            }
        }
        printf("epoch %d: train loss %.4f, test loss %.4f, test accuracy %.2f%%, %.3f s\n", e, lossSum / ntrain,
               testLoss / ntest, 100.0 * right / ntest, spent);
    }
    printf("mean epoch %.3f s\n", totalTime / epochs);
    return 0;
}
