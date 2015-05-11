//
//  DetailsInterfaceController.h
//  iWatchDemo
//
//  Created by Rakesh Kumar on 08/05/15.
//  Copyright (c) 2015 Connex Info. All rights reserved.
//

#import <WatchKit/WatchKit.h>
#import <Foundation/Foundation.h>

@interface DetailsInterfaceController : WKInterfaceController {
    
}

///IBoutlets
@property (weak, nonatomic) IBOutlet WKInterfaceLabel *lblName;
@property (weak, nonatomic) IBOutlet WKInterfaceLabel *lblDesignation;
@property (weak, nonatomic) IBOutlet WKInterfaceImage *imgProfile;

@end
