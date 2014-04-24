//
//  MYModelObjectTableViewCellBase.h
//  Pods
//
//  Created by Vincil Bishop on 4/5/14.
//
//

#import <UIKit/UIKit.h>

@class MYModelObjectBase;

@interface MYModelObjectTableViewCellBase : UITableViewCell

@property (nonatomic,strong) MYModelObjectBase *modelObject;

- (void) configureWithModelObject:(MYModelObjectBase*)modelObject;

@end
