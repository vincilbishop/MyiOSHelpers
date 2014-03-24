//
//  MYPeripheralManager.h
//  Pods
//
//  Created by Vincil Bishop on 2/7/14.
//
//

#import <UIKit/UIKit.h>
#import <CoreBluetooth/CoreBluetooth.h>
#import <CoreLocation/CoreLocation.h>
#import "MYiOSLogicBlocks.h"

#define kMYPeripheralManager_DidUpdateState_Notification @"kMYPeripheralManager_DidUpdateState_Notification"

@interface MYPeripheralManager : NSObject<CBPeripheralManagerDelegate>

@property (nonatomic,strong) CBPeripheralManager *peripheralManager;

+ (MYPeripheralManager*) sharedManager;

- (void) startAdvertisingWithRegion:(CLBeaconRegion*)beaconRegion completion:(MYCompletionBlock)completionBlock;

@end
