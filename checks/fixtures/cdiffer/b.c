/* checks scenario cdiffer: another struct cd_thing, of two fields */
struct cd_thing {
    long x;
    long y;
};

long cd_b(const struct cd_thing *t) { return t->x + t->y; }
