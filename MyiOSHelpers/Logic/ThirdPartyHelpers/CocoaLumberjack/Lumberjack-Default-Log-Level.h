// Lumberjack-Default-Log-Level.h
#import "Lumberjack-Include.h"
#import "DDLog+MyLumberjackAdditions.h"

#pragma GCC diagnostic ignored "-Wunused-variable"

#if defined(DEBUG) || defined(LUMBERJACK_VERBOSE)
static int ddLogLevel = LOG_LEVEL_VERBOSE;
#else
static int ddLogLevel = LOG_LEVEL_OFF;
#endif