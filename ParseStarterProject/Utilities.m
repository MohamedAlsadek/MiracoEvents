//
//  Utilities.m
//  ParseStarterProject
//
//  Created by Mohamed Alsadek on 11/29/15.
//
//

#import "Utilities.h"
#import <UIKit/UIKit.h>
#import "MCLocalization.h"

@implementation Utilities

+(id) getControllerFromStoryboardWithId:(NSString *) controllerId{
    
    UIStoryboard *mainStoryboard ;
    
    if ([[MCLocalization sharedInstance].language isEqualToString:@"en"]) {
        mainStoryboard = [UIStoryboard storyboardWithName:@"Main" bundle: nil] ;
    }else {
        mainStoryboard = [UIStoryboard storyboardWithName:@"MainAR" bundle: nil] ;
    }
    
    id controller = [mainStoryboard instantiateViewControllerWithIdentifier:controllerId];

    return controller ;
}

+(void) displayErrorWithMessage:(NSString *) message {
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"" message:message delegate:nil cancelButtonTitle:[MCLocalization stringForKey:@"ok"] otherButtonTitles:nil, nil] ;
    
    [alert show] ;
}


@end
