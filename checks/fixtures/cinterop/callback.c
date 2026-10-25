void olang_reset(long i);
/* a C function that calls back into olang by the export fn's symbol */
void c_run(long i) { olang_reset(i); }
