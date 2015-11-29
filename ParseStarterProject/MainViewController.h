//
//  MainViewController.h
//  ParseStarterProject
//
//  Created by Mohamed Alsadek on 11/26/15.
//
//

#import <UIKit/UIKit.h>
#import "ParentViewController.h"

@interface MainViewController : ParentViewController <UICollectionViewDataSource , UICollectionViewDelegate>

@property (weak, nonatomic) IBOutlet UICollectionView *collectionViewEvents;


@end
