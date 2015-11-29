//
//  LeftSideMenuViewController.h
//  ParseStarterProject
//
//  Created by Mohamed Alsadek on 11/29/15.
//
//

#import <UIKit/UIKit.h>
#import "ParentViewController.h"

@interface LeftSideMenuViewController : ParentViewController <UITableViewDataSource , UITableViewDelegate>

@property (weak, nonatomic) IBOutlet UITableView *tableViewSideMenu;

@end
