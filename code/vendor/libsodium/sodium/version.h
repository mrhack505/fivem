
#ifndef sodium_version_H
#define sodium_version_H

#include "sodium/export.h"

#define SODIUM_VERSION_STRING "1.0.17"

#define SODIUM_LIBRARY_VERSION_MAJOR 10
#define SODIUM_LIBRARY_VERSION_MINOR 2

#ifdef __cplusplus
extern "C" {
#endif

SODIUM_EXPORT
const char *sodium_version_string(void);

SODIUM_EXPORT
int         sodium_library_version_major(void);

SODIUM_EXPORT
int         sodium_library_version_minor(void);

SODIUM_EXPORT
int         sodium_library_minimal(void);

#ifdef __cplusplus
}
#endif

#endif