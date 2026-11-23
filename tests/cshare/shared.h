/* tests/cshare.olang: a header two C files of the corpus both include - its types are one type to olang (X17) */
#ifndef CSHARE_SHARED_H
#define CSHARE_SHARED_H

typedef struct cs_point {
    int x;
    int y;
} cs_point;

/* defined in one.c only: opaque to every importer */
typedef struct cs_handle cs_handle;

cs_handle *cs_open(int value);
int cs_value(const cs_handle *h);

#endif
