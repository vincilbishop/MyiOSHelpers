//
//  CLLocation+MyAdditions.m
//  Pods
//
//  Created by Vincil Bishop on 3/26/14.
//
//

#import "CLLocation+MyAdditions.h"

@implementation CLLocation (MyAdditions)

- (NSDictionary*) coordinateDictionary
{
    return @{@"latitude":[self latitudeNumber],@"longitude":[self longitudeNumber]};
}

- (NSString*) latitudeString
{
    return [self.latitudeNumber stringValue];
    //return [NSString stringWithFormat:@"%d",self.coordinate.latitude];
}

- (NSString*) longitudeString
{
    return [self.longitudeNumber stringValue];
    //return [NSString stringWithFormat:@"%d",self.coordinate.longitude];
}

- (NSNumber*) latitudeNumber
{
    return [NSNumber numberWithDouble:self.coordinate.latitude];
    //return [NSString stringWithFormat:@"%d",self.coordinate.latitude];
}

- (NSNumber*) longitudeNumber
{
    return [NSNumber numberWithDouble:self.coordinate.longitude];
    //return [NSString stringWithFormat:@"%d",self.coordinate.longitude];
}


@end
