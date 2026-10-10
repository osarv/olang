#ifndef RUNTIME_H
#define RUNTIME_H

#include <stdio.h>
#include <stdbool.h>

//the runtime's IR (runtime.c) for a build for architecture arch (TargetArch, B12a): everything every object carries -
//with the scope sanitizer's quarantine in place of the chunk pool's immediate reuse under -s (B2f)
void emitRuntimeDecls(FILE* out, const char* arch, bool scopeSan);
//S3: the dynamic call over dlsym and libffi - only into the object of a module declaring it
void emitDyncallRuntime(FILE* out, const char* arch);
//E11a: a float's text and the powers of ten it needs - only into an object that renders a float
void emitFloatTextRuntime(FILE* out);

#endif //RUNTIME_H
