#ifndef RUNTIME_H
#define RUNTIME_H

#include <stdio.h>
#include <stdbool.h>

//the runtime's IR as read from std/runtime and filled in for a build for architecture arch (TargetArch, B12a), with the
//scope sanitizer or not (B2f): runtime.ll (and san.ll under -s), or with dyncall the dynamic call's part, dyncall.ll (S3)
//- what main.c compiles into the runtime's objects
char* RuntimeText(const char* arch, bool scopeSan, bool dyncall);
//the declarations a module's IR carries for everything the runtime defines or declares - its own part, and the dynamic
//call's too for a module declaring it - in place of the runtime itself
void emitRuntimeDecls(FILE* out, const char* arch, bool scopeSan, bool dyncall);

#endif //RUNTIME_H
