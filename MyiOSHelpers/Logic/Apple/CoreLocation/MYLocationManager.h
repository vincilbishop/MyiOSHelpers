//
//  MYLocationController.h
//  Pods
//
//  Created by Vincil Bishop on 1/8/14.
//
//

#import <Foundation/Foundation.h>
#import <CoreLocation/CoreLocation.h>
#import "MYiOSLogicBlocks.h"

#define kMYLocationManager_DidUpdateLocations_Notification @"kMYLocationManager_DidUpdateLocations_Notification "

#define kMYLocationManager_DidRangeBeaconsInRegion_Notification @"kMYLocationManager_DidRangeBeaconsInRegion_Notification"

//#define kMYLocationManager_LastLocation_Key @"kMYLocationManager_LastLocation_Key"

@interface MYLocationManager : NSObject<CLLocationManagerDelegate>

@property (nonatomic,strong) NSArray *locations;
@property (nonatomic,strong) NSDictionary *beacons;

@property (nonatomic,strong) CLLocation *mockLocation;
@property (nonatomic,strong) CLLocationManager *locationManager;


- (CLLocation*) lastLocation;

+ (MYLocationManager*) sharedManager;

- (void) getLocationAndStopWithCompletion:(MYCompletionBlock)completionBlock;

- (void) getBeaconsAndStopInRegion:(CLBeaconRegion*)region completion:(MYCompletionBlock)completionBlock;

@end
