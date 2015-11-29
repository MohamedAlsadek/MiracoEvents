//
//  MainViewController.m
//  ParseStarterProject
//
//  Created by Mohamed Alsadek on 11/26/15.
//
//

#import "MainViewController.h"
#import "EventsCollectionViewCell.h"

@interface MainViewController () {
    NSArray *events ;
}

@end

@implementation MainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    _collectionViewEvents.delegate = self ;
    _collectionViewEvents.dataSource = self ;
    [self testParseIntegration] ;
}


-(void) testParseIntegration {
    //@"Area"
    [ParseConnectionManager getClassWithName:@"Events" andResultBlock:^(NSError *error, id objects) {
        if (!error) {
            // The find succeeded.
            events = objects ;
            NSLog(@"%@" , events) ;
            [_collectionViewEvents reloadData] ;
            
        } else {
            // Log details of the failure
            [Utilities displayErrorWithMessage:[MCLocalization stringForKey:@"connection_error"]] ; 
        }
    }] ;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark <UICollectionViewDataSource>

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
    return 1;
}


- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return events.count;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    EventsCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"EventsCollectionViewCell" forIndexPath:indexPath];
    
    // Configure the cell
    if ([[MCLocalization sharedInstance].language isEqualToString:@"en"]) {
        cell.labelEventTitle.text = [[events objectAtIndex:indexPath.row] valueForKey:@"Title"] ;
    }else {
        cell.labelEventTitle.text = [[events objectAtIndex:indexPath.row] valueForKey:@"Title_Ar"] ;
    }
    PFFile *file = [[events objectAtIndex:indexPath.row] objectForKey:@"Image"];
    NSString *imageURL = file.url ;
//    if (imageURL) {
//        
//        [self.imageViewMovie setImageWithURL:[NSURL URLWithString:imageURL] placeholderImage:[UIImage imageNamed:@""] usingActivityIndicatorStyle:UIActivityIndicatorViewStyleWhite] ;
//    }
    
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

//NSString *imageURL = program.mainImage ;
//if (imageURL) {
//    
//    [self.imageViewMovie setImageWithURL:[NSURL URLWithString:imageURL] placeholderImage:[UIImage imageNamed:@""] usingActivityIndicatorStyle:UIActivityIndicatorViewStyleWhite] ;
//}


@end
