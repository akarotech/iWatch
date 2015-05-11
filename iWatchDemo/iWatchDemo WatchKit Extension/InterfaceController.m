//
//  InterfaceController.m
//  iWatchDemo WatchKit Extension
//
//  Created by Rakesh Kumar on 08/05/15.
//  Copyright (c) 2015 Connex Info. All rights reserved.
//

#import "InterfaceController.h"
#import "TableRowName.h"

@interface InterfaceController() {
    
}

@property (strong, nonatomic) NSMutableArray *arrNames;

@end


@implementation InterfaceController

- (void)awakeWithContext:(id)context {
    [super awakeWithContext:context];

    // Configure interface objects here.
}

- (void)willActivate {
    // This method is called when watch view controller is about to be visible to user
    [super willActivate];
    
    self.arrNames = [[NSMutableArray alloc] init];
    
    NSMutableDictionary *dictObjOne = [[NSMutableDictionary alloc] init];
    [dictObjOne setValue:@"Rakesh Kumar" forKey:@"name"];
    [dictObjOne setValue:@"PP1.jpg" forKey:@"image"];
    [self.arrNames addObject:dictObjOne];
    
    NSMutableDictionary *dictObjTwo = [[NSMutableDictionary alloc] init];
    [dictObjTwo setValue:@"Ajith Kumar" forKey:@"name"];
    [dictObjTwo setValue:@"PP2.jpg" forKey:@"image"];
    [self.arrNames addObject:dictObjTwo];
    
    
    NSMutableDictionary *dictObjThree = [[NSMutableDictionary alloc] init];
    [dictObjThree setValue:@"Vishal Pandit" forKey:@"name"];
    [dictObjThree setValue:@"profile.jpg" forKey:@"image"];
    [self.arrNames addObject:dictObjThree];
    
    
    NSMutableDictionary *dictObjFour = [[NSMutableDictionary alloc] init];
    [dictObjFour setValue:@"Vikas Rana" forKey:@"name"];
    [dictObjFour setValue:@"profile.jpg" forKey:@"image"];
    [self.arrNames addObject:dictObjFour];
    
    
    NSMutableDictionary *dictObjFive = [[NSMutableDictionary alloc] init];
    [dictObjFive setValue:@"Sujatha Kumari" forKey:@"name"];
    [dictObjFive setValue:@"profile.jpg" forKey:@"image"];
    [self.arrNames addObject:dictObjFive];
    
    
    [self.tblNames setNumberOfRows:[self.arrNames count] withRowType:@"nameCell"];
    
    for (int counter = 0; counter < [self.arrNames count]; counter++) {
        TableRowName *rowCell = (TableRowName *)[self.tblNames rowControllerAtIndex:counter];
        [rowCell.lblName setText:[[self.arrNames objectAtIndex:counter] valueForKey:@"name"]];
        [rowCell.imgProfile setImage:[UIImage imageNamed:[[self.arrNames objectAtIndex:counter] valueForKey:@"image"]]];
    }
}

- (void)didDeactivate {
    // This method is called when watch view controller is no longer visible
    [super didDeactivate];
    
}


- (void)table:(WKInterfaceTable *)table didSelectRowAtIndex:(NSInteger)rowIndex {
    //[self pushControllerWithName:@"DetailsInterfaceController" context:[self.arrNames objectAtIndex:rowIndex]];
    [self presentControllerWithName:@"DetailsInterfaceController" context:[self.arrNames objectAtIndex:rowIndex]];
}


@end



