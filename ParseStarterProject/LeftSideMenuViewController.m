//
//  LeftSideMenuViewController.m
//  ParseStarterProject
//
//  Created by Mohamed Alsadek on 11/29/15.
//
//

#import "LeftSideMenuViewController.h"
#import "SideMenuTableViewCell.h"
#import "MCLocalization.h"

@interface LeftSideMenuViewController () {
    NSArray *sideMenuItems ;
}

@end

@implementation LeftSideMenuViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    sideMenuItems = [[NSArray alloc] initWithObjects:@"events" , @"survey" , @"productCatalogue", @"dealers" , @"branches" , @"contactUs" , @"registerForProduct" , @"calculate", nil] ;
    
    _tableViewSideMenu.delegate = self ;
    _tableViewSideMenu.dataSource = self ;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return sideMenuItems.count;
}


 - (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
     SideMenuTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"SideMenuTableViewCell" forIndexPath:indexPath] ;
 // Configure the cell...
     cell.labelTitle.text = [MCLocalization stringForKey:[sideMenuItems objectAtIndex:indexPath.row]] ;
    
 return cell;
 }
 


/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
