/* checks scenario cdiffer: a struct cd_thing of one field */
struct cd_thing {
    int x;
};

int cd_a(const struct cd_thing *t) { return t->x; }
