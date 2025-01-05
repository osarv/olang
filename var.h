#ifndef VAR_H
#define VAR_H

typedef struct varList* VarList;

struct var {
    char* name;
};

VarList VarListCreate();
void VarListAdd(VarList vl, struct var v);
bool VarListGet(VarList vl, char* name, struct var* v);

#endif //VAR_H
