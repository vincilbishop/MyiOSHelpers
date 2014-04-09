//
//  DDLog+MyLumberjackAdditions.m
//  Pods
//
//  Created by Vincil Bishop on 4/9/14.
//
//

#import "DDLog+MyLumberjackAdditions.h"

@implementation DDLog (MyLumberjackAdditions)

+ (void)setupMyDefaultLogging
{
    // Configure File Logger
    DDFileLogger  *fileLogger = [[DDFileLogger alloc] init];
    [fileLogger setLogFormatter:[PrettyClassInformationLogFormatter new]];
    [fileLogger setMaximumFileSize:(1024 * 1024)];
    [fileLogger setRollingFrequency:(3600.0 * 24.0)];
    [[fileLogger logFileManager] setMaximumNumberOfLogFiles:7];
    
    // ============================================
    // Initialize CocoaLumberjack logging framework
    // ============================================
    // Configure CocoaLumberjack
    [DDLog addLogger:[DDASLLogger sharedInstance]];
    [DDLog addLogger:[DDTTYLogger sharedInstance]];
    [DDLog addLogger:fileLogger];
    
    // ============================================
    // Add custom formatter
    // ============================================
    //LogFormatter *formatter = [[LogFormatter alloc] init];
	[[DDTTYLogger sharedInstance] setLogFormatter:[PrettyClassInformationLogFormatter new]];
    
    /*
     // Enable Colors, seems like a pain in the arse: https://github.com/robbiehanson/XcodeColors
     [[DDTTYLogger sharedInstance] setColorsEnabled:YES];
     [[DDTTYLogger sharedInstance] setForegroundColor:[UIColor greenColor] backgroundColor:nil forFlag:LOG_FLAG_INFO];
     [[DDTTYLogger sharedInstance] setForegroundColor:[UIColor redColor] backgroundColor:nil forFlag:LOG_FLAG_ERROR];
     [[DDTTYLogger sharedInstance] setForegroundColor:[UIColor orangeColor] backgroundColor:nil forFlag:LOG_FLAG_WARN];
     [[DDTTYLogger sharedInstance] setForegroundColor:[UIColor whiteColor] backgroundColor:nil forFlag:LOG_FLAG_VERBOSE];
     
     // ============================================
     // Demo Logs
     // ============================================
     DDLogError(@"Error");
     DDLogWarn(@"Warn");
     DDLogInfo(@"Info");
     DDLogDebug(@"Debug");
     */
    
}


@end
