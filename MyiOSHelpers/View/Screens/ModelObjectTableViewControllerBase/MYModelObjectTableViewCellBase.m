//
//  MYModelObjectTableViewCellBase.m
//  Pods
//
//  Created by Vincil Bishop on 4/5/14.
//
//

#import "MYModelObjectTableViewCellBase.h"
#import "MYModelObjectBase.h"

@implementation MYModelObjectTableViewCellBase

- (void) configureCellWithModelObject:(MYModelObjectBase*)modelObject
{
    self.modelObject = modelObject;
}

@end
