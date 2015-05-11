//
//  DetailsInterfaceController.m
//  iWatchDemo
//
//  Created by Rakesh Kumar on 08/05/15.
//  Copyright (c) 2015 Connex Info. All rights reserved.
//

#import "DetailsInterfaceController.h"

@interface DetailsInterfaceController () {
    
}

@property (strong, nonatomic) NSDictionary *dictObj;

@end

@implementation DetailsInterfaceController

- (void)awakeWithContext:(id)context {
    [super awakeWithContext:context];
    // Configure interface objects here.
    self.dictObj = (NSDictionary *)context;
}



- (void)willActivate {
    // This method is called when watch view controller is about to be visible to user
    [super willActivate];
    
    [self.lblName setText:[self.dictObj valueForKey:@"name"]];
    [self.imgProfile setImage:[UIImage imageNamed:[self.dictObj valueForKey:@"image"]]];
}

- (void)didDeactivate {
    // This method is called when watch view controller is no longer visible
    [super didDeactivate];
}

@end



