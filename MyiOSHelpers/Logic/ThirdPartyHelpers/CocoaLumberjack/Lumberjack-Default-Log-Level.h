// Lumberjack-Default-Log-Level.h
#import "Lumberjack-Include.h"

#pragma GCC diagnostic ignored "-Wunused-variable"

#ifdef DEBUG
static int ddLogLevel = LOG_LEVEL_VERBOSE;
#else
static int ddLogLevel = LOG_LEVEL_OFF;
#endif