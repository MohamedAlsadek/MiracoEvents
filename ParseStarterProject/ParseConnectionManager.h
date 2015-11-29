//
//  ParseConnectionManager.h
//  ParseStarterProject
//
//  Created by Mohamed Alsadek on 11/29/15.
//
//

#import <Foundation/Foundation.h>
#import <Parse/Parse.h>


@interface ParseConnectionManager : NSObject

+ (void) getClassWithName:(NSString *)className andResultBlock:(void (^)(NSError *, id))resultBlock  ;


@end
