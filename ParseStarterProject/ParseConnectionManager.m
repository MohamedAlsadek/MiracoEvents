//
//  ParseConnectionManager.m
//  ParseStarterProject
//
//  Created by Mohamed Alsadek on 11/29/15.
//
//

#import "ParseConnectionManager.h"
#import "MCLocalization.h"

@implementation ParseConnectionManager

+ (void) getClassWithName:(NSString *)className andResultBlock:(void (^)(NSError *, id))resultBlock  {
    
    PFQuery *query = [PFQuery queryWithClassName:className];
    [query findObjectsInBackgroundWithBlock:^(NSArray *objects, NSError *error) {
        resultBlock(error , objects) ;
    }];
}

@end
