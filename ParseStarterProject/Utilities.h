//
//  Utilities.h
//  ParseStarterProject
//
//  Created by Mohamed Alsadek on 11/29/15.
//
//

#import <Foundation/Foundation.h>

@interface Utilities : NSObject

+(id) getControllerFromStoryboardWithId:(NSString *) controllerId  ;
+(void) displayErrorWithMessage:(NSString *) message ;

@end
