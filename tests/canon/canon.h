/* tests/canon.olang: structs with anonymous members (C11) - their members reached as the struct's own (X18) */
#include <stdint.h>

/* an anonymous union after two named members: its bytes C's, the members around it olang's */
struct cn_attr {
    uint32_t id;
    uint32_t padding;
    union {
        uint64_t flags;
        uint32_t debounce;
    };
    uint16_t after;
};

/* an anonymous struct, holding another, nested once: their members in place, at C's offsets */
struct cn_point {
    char tag;
    struct {
        char b;
        double c;
        struct {
            int d;
            int e;
        };
    };
    int last;
};

void cn_attr_set(struct cn_attr *a, uint64_t flags);
uint64_t cn_attr_flags(const struct cn_attr *a);
long cn_point_sum(const struct cn_point *p);
void cn_point_fill(struct cn_point *p);
int cn_sizes(void);

/* a named union, held as a struct's field: its members read and written by copy (X18a) */
union cn_num {
    int32_t i;
    float f;
    uint8_t b;
    _Bool on;
    double d;
};

struct cn_box {
    uint32_t tag;
    union cn_num n;
};

/* an anonymous union of two bytes after a word: its members in opaque words narrower than the union's start */
struct cn_small {
    uint32_t id;
    union {
        uint16_t s;
        int8_t c;
    };
    uint16_t after;
};

void cn_box_set(struct cn_box *b, double d);
double cn_box_d(const struct cn_box *b);
void cn_small_set(struct cn_small *s, int8_t c);
int cn_small_c(const struct cn_small *s);
unsigned cn_small_s(const struct cn_small *s);
uint32_t cn_attr_debounce(const struct cn_attr *a);
