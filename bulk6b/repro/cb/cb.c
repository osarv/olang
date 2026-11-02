void olang_grow(long n);
/* C calling back into olang through the export fn's symbol */
void c_poke(long n) { olang_grow(n); }
