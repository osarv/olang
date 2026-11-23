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
