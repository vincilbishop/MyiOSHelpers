// Lumberjack-Default-Log-Level.h
#import "Lumberjack-Include.h"
#import "DDLog+MyLumberjackAdditions.h"

#pragma GCC diagnostic ignored "-Wunused-variable"

#if defined(DEBUG) || defined(LUMBERJACK_VERBOSE)
static int ddLogLevel = LOG_LEVEL_VERBOSE;
#elif defined(LUMBERJACK_DEBUG)
static int ddLogLevel = LOG_LEVEL_DEBUG;
#elif defined(LUMBERJACK_INFO)
static int ddLogLevel = LOG_LEVEL_INFO;
#elif defined(LUMBERJACK_WARN)
static int ddLogLevel = LOG_LEVEL_WARN;
#elif defined(LUMBERJACK_ERROR)
static int ddLogLevel = LOG_LEVEL_ERROR;
#else
static int ddLogLevel = LOG_LEVEL_OFF;
#endif