//
//  NSDate+MyAdditions.m
//  Pods
//
//  Created by Vincil Bishop on 4/12/14.
//
//

#import "NSDate+MyAdditions.h"

@implementation NSDate (MyAdditions)

- (NSString*) stringForDisplay
{
    return [NSDate stringForDisplayFromDate:self];
}

- (NSTimeInterval) UTCTimeIntervalSince1970 {
    
    NSDateComponents *comps = [[NSCalendar currentCalendar]
                               components:NSDayCalendarUnit | NSYearCalendarUnit | NSMonthCalendarUnit
                               fromDate:self];
    [comps setHour:0];
    [comps setMinute:0];
    [comps setSecond:[[NSTimeZone systemTimeZone] secondsFromGMT]];
    
    return [[[NSCalendar currentCalendar] dateFromComponents:comps] timeIntervalSince1970];
}

@end
