#ifndef ERROR_H
#define ERROR_H

#include "list.h"
#include "str.h"
#include "token.h"

struct error {
    struct str name;
    struct token tok;
    struct list words;
};

struct error* ErrorGetList(struct list* l, struct str name);

#endif //ERROR_H
