//
//  AppDelegate.h
//  Counter
//
//  Created by shohei on 9/27/14.
//  Copyright (c) 2014 shohei. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface AppDelegate : NSObject <NSApplicationDelegate>{
    NSTimer   *tm;
    NSDate *fromFormatDate;
}
@property (weak) IBOutlet NSTextField *dayTimer;
@property (weak) IBOutlet NSTextField *hrTimer;
@property (weak) IBOutlet NSTextField *minTimer;
@property (weak) IBOutlet NSTextField *secTimer;


@end

