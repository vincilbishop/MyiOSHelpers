//
//  CLLocation+MyAdditions.h
//  Pods
//
//  Created by Vincil Bishop on 3/26/14.
//
//

#import <CoreLocation/CoreLocation.h>

@interface CLLocation (MyAdditions)

- (NSDictionary*) coordinateDictionary;
- (NSString*) latitudeString;
- (NSString*) longitudeString;
- (NSNumber*) latitudeNumber;
- (NSNumber*) longitudeNumber;

@end
