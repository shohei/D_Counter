//
//  AppDelegate.m
//  Counter
//
//  Created by shohei on 9/27/14.
//  Copyright (c) 2014 shohei. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()
@property (weak) IBOutlet NSWindow *window;
@end

@implementation AppDelegate


- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
    // Insert code here to initialize your application
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    [dateFormatter setDateFormat:@"yyyy/MM/dd HH:mm:ss"];
    fromFormatDate = [dateFormatter dateFromString:@"2014/12/1 00:00:00"];
    tm = [NSTimer
          scheduledTimerWithTimeInterval:1.0f
     target:self
     selector:@selector(updateTime:)
     userInfo:nil
     repeats:YES
     ];
    //[_dayTimer setIntValue:(int)5];
}

- (void)applicationWillTerminate:(NSNotification *)aNotification {
    // Insert code here to tear down your application
}

-(void)updateTime:(NSTimer*)timer{
    NSDate* now = [NSDate date];
    NSTimeInterval delta = [fromFormatDate timeIntervalSinceDate:now];
    NSInteger days = (int)(delta / (60 * 60 * 24));
    NSInteger hours = (int)(delta - days*(60 * 60 * 24))/(60*60);
    NSInteger min = (int)(delta-days*(60 * 60 * 24)-hours*(60*60))/60;
    NSInteger sec = (int)(delta-days*(60*60*24)-hours*(60*60)-min*60);
    //NSLog(@"%ld",(long)days);
    //NSLog(@"%ld",(long)hours);
    //NSLog(@"%ld",(long)min);
    //NSLog(@"%ld",(long)sec);
    [_dayTimer setIntValue:(int)days];
    [_hrTimer setIntValue:(int)hours];
    [_minTimer setIntValue:(int)min];
    [_secTimer setIntValue:(int)sec];
    
}


@end
