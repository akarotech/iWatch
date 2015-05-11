//
//  TableRowName.h
//  iWatchDemo
//
//  Created by Rakesh Kumar on 08/05/15.
//  Copyright (c) 2015 Connex Info. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <WatchKit/WatchKit.h>

@interface TableRowName : NSObject {
    
}

///IBoutlets
@property (weak, nonatomic) IBOutlet WKInterfaceLabel *lblName;
@property (weak, nonatomic) IBOutlet WKInterfaceImage *imgProfile;
@property (weak, nonatomic) IBOutlet WKInterfaceLabel *lblDesignation;

@end
