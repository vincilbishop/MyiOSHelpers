//
//  MYModelObjectTableViewControllerBase.h
//  Pods
//
//  Created by Vincil Bishop on 4/5/14.
//
//

#import "MYTableViewControllerBase.h"

@class MYModelObjectBase;
@protocol MYParseableModelObject;

@interface MYModelObjectTableViewControllerBase : MYTableViewControllerBase

@property (nonatomic) Class<MYParseableModelObject> modelClass;

- (NSArray*) modelObjects;

- (UITableViewCell *) tableView:(UITableView *)tableView configureCell:(UITableViewCell*)cell withModelObject:(MYModelObjectBase*)object;

@end
