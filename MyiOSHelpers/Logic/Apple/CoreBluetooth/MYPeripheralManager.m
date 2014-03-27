//
//  MYPeripheralManager.m
//  Pods
//
//  Created by Vincil Bishop on 2/7/14.
//
//

#import "MYPeripheralManager.h"

@implementation MYPeripheralManager

static MYPeripheralManager *_sharedManager;

+ (MYPeripheralManager*) sharedManager
{
    if (!_sharedManager) {
        
        _sharedManager = [[MYPeripheralManager alloc] init];
    }
    
    return _sharedManager;
}

- (id) init
{
    self = [super init];
    
    if (self) {
        
        _peripheralManager = [[CBPeripheralManager alloc] initWithDelegate:self queue:dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT,0)];
    }
    
    return self;
}

#pragma mark - Convenience Methods -

- (void) startAdvertisingWithProximityUUID:(NSString*)proximityUUID
                                   majorID:(short)majorID
                                   minorID:(short)minorID
                                identifier:(NSString*)identifier
                                completion:(MYCompletionBlock)completionBlock
{
    CLBeaconRegion *beaconRegion = [[CLBeaconRegion alloc] initWithProximityUUID:proximityUUID major:majorID minor:minorID identifier:identifier];
    
    [self startAdvertisingWithRegion:beaconRegion completion:completionBlock];
}

- (void) startAdvertisingWithRegion:(CLBeaconRegion*)beaconRegion
                         completion:(MYCompletionBlock)completionBlock;
{
    NSDictionary *beaconPeripheralData = [beaconRegion peripheralDataWithMeasuredPower:nil];
    
    if (self.peripheralManager.state == CBPeripheralManagerStatePoweredOn) {
        
        [self.peripheralManager startAdvertising:beaconPeripheralData];
        
        if (completionBlock) {
            completionBlock(self,YES,nil,self);
        }
    } else {
        
        __block id observer = nil;
        observer = [[NSNotificationCenter defaultCenter] addObserverForName:kMYPeripheralManager_DidUpdateState_Notification object:observer queue:[[NSOperationQueue alloc] init] usingBlock:^(NSNotification *note) {
            
            if (self.peripheralManager.state == CBPeripheralManagerStatePoweredOn) {
                
                DDLogVerbose(@"Powered On");
                [self.peripheralManager startAdvertising:beaconPeripheralData];
                
                [[NSNotificationCenter defaultCenter] removeObserver:observer];
                
                if (completionBlock) {
                    completionBlock(self,YES,nil,self);
                }
            }
            else if (self.peripheralManager.state == CBPeripheralManagerStatePoweredOff)
            {
                [self.peripheralManager stopAdvertising];
                
                [[NSNotificationCenter defaultCenter] removeObserver:observer];
                
                if (completionBlock) {
                    completionBlock(self,NO,nil,self);
                }
            }
        }];
    }
}

#pragma mark - CBPeripheralManagerDelegate -

-(void)peripheralManagerDidUpdateState:(CBPeripheralManager *)peripheral {
    
    [[NSNotificationCenter defaultCenter] postNotificationName:kMYPeripheralManager_DidUpdateState_Notification object:peripheral];
}

@end
