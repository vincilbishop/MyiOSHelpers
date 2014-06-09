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

#define kMYLocationManager_DidUpdateLocations_Notification @"kMYLocationManager_DidUpdateLocations_Notification"

#define kMYLocationManager_DidRangeBeaconsInRegion_Notification @"kMYLocationManager_DidRangeBeaconsInRegion_Notification"

//#define kMYLocationManager_LastLocation_Key @"kMYLocationManager_LastLocation_Key"

@interface MYLocationManager : NSObject<CLLocationManagerDelegate>

@property (nonatomic,strong) NSArray *locations;
@property (nonatomic,strong) NSArray *beacons;

@property (nonatomic,strong) CLLocation *mockLocation;
@property (nonatomic,strong) CLLocationManager *locationManager;
@property (nonatomic,strong) NSTimer *locationTimer;
@property (nonatomic,strong) NSTimer *beaconTimer;

- (CLLocation*) lastLocation;

+ (MYLocationManager*) sharedManager;

- (void) startMonitoringLocationWithUpdateInterval:(NSTimeInterval)updateInterval;

- (void) getLocationAndStopWithCompletion:(MYCompletionBlock)completionBlock;
- (void) getLocationOnce:(BOOL)once withCompletion:(MYCompletionBlock)completionBlock;

- (void) startMonitoringBeaconsInRegion:(CLBeaconRegion*)region withUpdateInterval:(NSTimeInterval)updateInterval;

- (void) getBeaconsAndStopInRegion:(CLBeaconRegion*)region completion:(MYCompletionBlock)completionBlock;
- (void) getBeaconsInRegion:(CLBeaconRegion*)region once:(BOOL)once completion:(MYCompletionBlock)completionBlock;

@end
