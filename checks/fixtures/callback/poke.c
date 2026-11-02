/* C calling back into olang through an export fn's symbol (checks/cases/e31bexportback.olang, review 6b F1) */
void olang_grow(long n);
void c_poke(long n) { olang_grow(n); }
