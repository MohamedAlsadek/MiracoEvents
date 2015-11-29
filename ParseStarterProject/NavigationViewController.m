//
//  NavigationViewController.m
//  Yanbu
//
//  Created by Mohamed Alsadek on 12/11/14.
//  Copyright (c) 2014 Shady Abdou LinkDev. All rights reserved.
//

#import "NavigationViewController.h"

@interface NavigationViewController ()

@end

@implementation NavigationViewController

- (void)setHeaderColor {
    //2 change navigation bar background to transparent blue ..
    [self.navigationBar setBackgroundImage:[UIImage new] forBarMetrics:UIBarMetricsDefault];//1
    self.navigationBar.shadowImage = [UIImage new];//2
    self.navigationBar.translucent = YES; //3
    self.view.backgroundColor = [UIColor clearColor];
    self.navigationBar.backgroundColor = [UIColor colorWithRed:0 green:0 blue:0 alpha:0.6];
}

- (void)changeBackButtonColor {
    //3 change backbutton style
    self.navigationBar.tintColor = [UIColor whiteColor];
}

- (void)changeTitleColorAndFont {
    UIFont *font = nil ;
    font = [UIFont systemFontOfSize:18];
    self.navigationBar.titleTextAttributes = @{NSForegroundColorAttributeName: [UIColor whiteColor] , NSFontAttributeName : font};
}

- (void)viewDidLoad {
    
    [super viewDidLoad];
    
    [self preferredStatusBarStyle] ;
    
    [self setHeaderColor];
    
    [self changeBackButtonColor];
    
    [self changeTitleColorAndFont];
}

-(UIStatusBarStyle)preferredStatusBarStyle{
    return UIStatusBarStyleLightContent;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
@end
