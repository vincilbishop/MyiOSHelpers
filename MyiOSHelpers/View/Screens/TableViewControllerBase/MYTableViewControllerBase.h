//
//  MYTableViewControllerBase.h
//  Pods
//
//  Created by Vincil Bishop on 3/31/14.
//
//

#import <UIKit/UIKit.h>

@interface MYTableViewControllerBase : UITableViewController

@property (nonatomic,strong) NSArray *objects;
@property (nonatomic,strong) NSString *reuseIdentifier;

- (void) reloadWithArray:(NSArray*)objects;

- (UITableViewCell *) tableView:(UITableView *)tableView configureCellAtIndexPath:(NSIndexPath *)indexPath;

- (UITableViewCell *) tableView:(UITableView *)tableView configureCell:(UITableViewCell*)cell withObject:(id)object;

@end
