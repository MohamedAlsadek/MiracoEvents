//
//  EventsCollectionViewCell.m
//  ParseStarterProject
//
//  Created by Mohamed Alsadek on 11/29/15.
//
//

#import "EventsCollectionViewCell.h"
#import "MCLocalization.h"
#import <Parse/Parse.h>
#import "UIImageView+UIActivityIndicatorForSDWebImage.h"

@implementation EventsCollectionViewCell

-(void) initCellWithObject:(id) object {
    
    
    // Configure the cell
    if ([[MCLocalization sharedInstance].language isEqualToString:@"en"]) {
        self.labelEventTitle.text = [object valueForKey:@"Title"] ;
    }else {
        self.labelEventTitle.text = [object valueForKey:@"Title_Ar"] ;
    }
    PFFile *file = [object objectForKey:@"Image"];
    NSString *imageURL = file.url ;
    
    if (imageURL) {
        
        [self.imageViewEvent setImageWithURL:[NSURL URLWithString:imageURL] placeholderImage:[UIImage imageNamed:@""] usingActivityIndicatorStyle:UIActivityIndicatorViewStyleWhite] ;
    }
}

@end
