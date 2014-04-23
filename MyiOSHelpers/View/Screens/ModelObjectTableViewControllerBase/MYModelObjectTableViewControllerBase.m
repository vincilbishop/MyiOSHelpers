//
//  MYModelObjectTableViewControllerBase.m
//  Pods
//
//  Created by Vincil Bishop on 4/5/14.
//
//

#import "MYModelObjectTableViewControllerBase.h"
#import "MYModelObjectBase.h"
#import "MYModelObjectTableViewCellBase.h"

@interface MYModelObjectTableViewControllerBase ()

@end

@implementation MYModelObjectTableViewControllerBase

- (NSArray*) modelObjects
{
    return [[self.modelClass parser] parseArray:self.objects];
}

- (UITableViewCell *) tableView:(UITableView *)tableView configureCell:(UITableViewCell*)cell withObject:(NSDictionary*)object
{
    //id<MYParseableModelObject> modelObject = [[self.modelClass parser] parseDictionary:object];
    
    return [self tableView:tableView configureCell:cell withModelObject:object];
}

- (UITableViewCell *) tableView:(UITableView *)tableView configureCell:(UITableViewCell*)cell withModelObject:(MYModelObjectBase*)object
{
    MYModelObjectTableViewCellBase *modelCell = (MYModelObjectTableViewCellBase*)cell;
    [modelCell configureCellWithModelObject:object];
    
    return modelCell;
}

- (void) reloadWithDictionaries:(NSArray*)objectDictionaries
{
    NSArray *strongObjects = [[self.modelClass parser] parseArray:objectDictionaries];
    [super reloadWithArray:strongObjects];
}

@end
